#ifndef MAINWINDOW_HPP
#define MAINWINDOW_HPP

#include <QMainWindow>
#include <QTcpServer>
#include <QTcpSocket>
#include "qface.hpp"
#include <QSqlTableModel>
#include <QSqlRecord>
#include "logger.hpp"

QT_BEGIN_NAMESPACE
namespace Ui
{
    class MainWindow;
}
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

public slots:
    void appendLogToUI(const QString &msg, Logger::LogLevel level);

private slots:
    void acceptClient();
    void readData();
    void recvFaceID(int64_t faceID);

signals:
    void query(cv::Mat &image);

private:
    Ui::MainWindow *ui;
    QTcpServer m_server;
    QTcpSocket *m_socket;
    quint64 m_byteSize;
    QFace m_faceObj;
    QSqlTableModel m_model;

    Logger *m_logger;
};
#endif // MAINWINDOW_HPP
