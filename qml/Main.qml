/*
* Copyright (C) 2022  gokul
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; version 3.
*
* bolgatty is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.7
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import QtWebView 1.1


MainView {
	id: root
	objectName: 'mainView'
	applicationName: 'bolgatty.gokul'
	automaticOrientation: true

	width: units.gu(45)
	height: units.gu(75)

	Page {
		anchors.fill: parent

		header: PageHeader {
			id: header
            title: i18n.tr('Bolgatty Demo Application(QML)')
		}

        Rectangle {
            anchors.fill: parent;
            anchors.rightMargin: 15;
            anchors.topMargin: 15;
            anchors.bottomMargin: 15;
            anchors.leftMargin: 15;color: "black"
            Image{
               anchors.margins: 250
               anchors.top: parent.top
               anchors.horizontalCenter: parent.horizontalCenter
               source: "ubi.png"
               width: sourceSize.width*1.5
               height:  sourceSize.height*1.5
            }
            Image{
               id:bolgatty
               anchors.centerIn: parent
               source: "bolgatty.png"
               width: sourceSize.width*2
               height:  sourceSize.height*2
            }

            AnimatedImage {
                id:animation
                source: "ubuntu.gif"
                anchors.bottomMargin: 15;
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                width: sourceSize.width*2
                height:  sourceSize.height*2
            }
        }
	}	 
}
