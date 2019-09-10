/*
Copyright (C) 2012 Klarälvdalens Datakonsult AB, a KDAB Group company, info@kdab.com
*/

#ifndef QHELPVIEWER_H
#define QHELPVIEWER_H
#include <QDialog>
#include <QUrl>

#include "libneurosuite_export.h"
class QWebEngineView;

class NEUROSUITE_EXPORT QHelpViewer : public QDialog
{
    Q_OBJECT
public:
    explicit QHelpViewer(QWidget *parent);
    ~QHelpViewer();
    void setHtml(const QString& filename, const QString &anchor = QString());
private Q_SLOTS:
    void slotLinkCLicked(const QUrl &url);
private:
    QWebEngineView *mView;
};

#endif // QHELPVIEWER_H
