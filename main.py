from PySide2.QtWidgets import QApplication
from PySide2.QtQuick import QQuickView
from PySide2.QtCore import QUrl
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine

app = QGuiApplication([])
 
engine = QQmlApplicationEngine()
engine.addImportPath("./Fluent.qml/Modules")
engine.load(QUrl("app/view.qml"))
app.exec_()
