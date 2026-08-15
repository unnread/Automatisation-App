#include <QApplication>
#include <QWidget>
#include <QLabel>
#include <QPushButton>
#include <QProcess>
#include <QIcon>
#include <Qt>

int main(int argc, char* argv[])
{
    QApplication a(argc, argv);

    QApplication::setWindowIcon(QIcon("icon.png"));

    QWidget window;

    window.resize(300, 600);
    window.setWindowTitle("Assistant Linux");


    // Thème Summer
    window.setStyleSheet(
        "QWidget {"
        "background: qradialgradient("
        "cx: 0.5, cy: 0.2, radius: 1,"
        "stop: 0 #332b01,"
        "stop: 0.35 #3b2d0b,"
        "stop: 0.7 #744402,"
        "stop: 1 #411308"
        ");"
        "}"
    );


    // Titre
    QLabel label("Welcome", &window);

    label.setGeometry(0, 30, 300, 60);
    label.setAlignment(Qt::AlignCenter);

    label.setStyleSheet(
        "color: white;"
        "font-size: 28px;"
        "font-weight: bold;"
        "border-radius: 16px;"
        "border: 2px solid #46140a;"
    );


    QString buttonStyle =
        "QPushButton {"
        "background: white;"
        "color: #3a140b;"
        "border-radius: 15px;"
        "font-size: 16px;"
        "font-weight: bold;"
        "border: 2px solid #420b00;"
        "}";


    // Calculatrice
    QPushButton calculator("Calculatrice", &window);

    calculator.setGeometry(50,150,200,50);
    calculator.setStyleSheet(buttonStyle);

    QObject::connect(&calculator, &QPushButton::clicked, []()
    {
        QProcess::startDetached("gnome-calculator");
    });



    // Visual Studio Code
    QPushButton vscode("Visual Studio Code", &window);

    vscode.setGeometry(50,250,200,50);
    vscode.setStyleSheet(buttonStyle);

    QObject::connect(&vscode, &QPushButton::clicked, []()
    {
        QProcess::startDetached("code");
    });



    // Firefox
    QPushButton firefox("Firefox", &window);

    firefox.setGeometry(50,350,200,50);
    firefox.setStyleSheet(buttonStyle);

    QObject::connect(&firefox, &QPushButton::clicked, []()
    {
        QProcess::startDetached("firefox");
    });



    // Footer
    QLabel footer("Autumn Version", &window);

    footer.setGeometry(0,550,300,40);

    footer.setAlignment(Qt::AlignCenter);

    footer.setStyleSheet(
        "color: rgba(255,255,255,180);"
        "font-size: 12px;"
        "font-weight: bold;"
        "letter-spacing: 1px;"
    );


    window.show();

    return a.exec();
}