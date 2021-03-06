/*
 *  This file is part of the KDE Libraries
 *  Copyright (C) 1999-2001 Mirko Boehm (mirko@kde.org) and
 *                          Espen Sand (espen@kde.org)
 *                          Holger Freyther <freyther@kde.org>
 *                2005-2006 Olivier Goffart <ogoffart at kde.org>
 *                     2006 Tobias Koenig <tokoe@kde.org>
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Library General Public
 *  License as published by the Free Software Foundation; either
 *  version 2 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Library General Public License for more details.
 *
 *  You should have received a copy of the GNU Library General Public License
 *  along with this library; see the file COPYING.LIB.  If not, write to
 *  the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 *  Boston, MA 02110-1301, USA.
 *
 */

/*
Copyright (C) 2012 Klarälvdalens Datakonsult AB, a KDAB Group company, info@kdab.com
Port to Qt4
*/

#ifndef QPAGEDIALOG_H
#define QPAGEDIALOG_H

#include "qextenddialog.h"
#include "qpagewidget.h"

class QPageDialogPrivate;

/**
 * @short A dialog base class which can handle multiple pages.
 *
 * This class provides a dialog base class which handles multiple
 * pages and allows the user to switch between these pages in
 * different ways.
 *
 * Currently, @p Auto, @p Plain, @p List, @p Tree and @p Tabbed face
 * types are available (@see QPageView).
 *
 * <b>Example:</b>\n
 *
 * \code
 * UrlDialog::UrlDialog( QWidget *parent )
 *   : QPageDialog( parent )
 * {
 *   setFaceType( List );
 *
 *   QLabel *label = new QLabel( "Test Page" );
 *   addPage( label, i18n( "My Test Page" ) );
 *
 *   label = new QLabel( "Second Test Page" );
 *   QPageWidgetItem *page = new QPageWidgetItem( label, i18n( "My Second Test Page" ) );
 *   page->setHeader( i18n( "My header string" ) );
 *   page->setIcon( KIcon( "file" ) );
 *
 *   addPage( page );
 * }
 * \endcode
 *
 * @author Tobias Koenig (tokoe@kde.org)
 */
class NEUROSUITE_EXPORT QPageDialog : public QExtendDialog
{
  Q_OBJECT
    Q_DECLARE_PRIVATE(QPageDialog)

  public:

    /**
     *  @li @p Auto   - A dialog with a face based on the structure of the
     *                  available pages.
     *                  If only a single page is added, the dialog behaves like
     *                  in @p Plain mode, with multiple pages without sub pages
     *                  it behaves like in @p List mode and like in @p Tree mode
     *                  otherwise.
     *  @li @p Plain  - A normal dialog.
     *  @li @p List   - A dialog with an icon list on the left side and a
     *                  representation of the contents on the right side.
     *  @li @p Tree   - A dialog with a tree on the left side and a
     *                  representation of the contents on the right side.
     *  @li @p Tabbed - A dialog with a tab bar above the representation
     *                  of the contents.
     */
    enum FaceType
    {
      Auto   = QPageView::Auto,
      Plain  = QPageView::Plain,
      List   = QPageView::List,
      Tree   = QPageView::Tree,
      Tabbed = QPageView::Tabbed
    };

  public:
    /**
     * Creates a new page dialog.
     */
    explicit QPageDialog( QWidget *parent = 0, Qt::WindowFlags flags = 0 );

    /**
     * Destroys the page dialog.
     */
    ~QPageDialog();

    /**
     * Sets the face type of the dialog.
     */
    void setFaceType( FaceType faceType );

    /**
     * Adds a new top level page to the dialog.
     *
     * @param widget The widget of the page.
     * @param name The name which is displayed in the navigation view.
     *
     * @returns The associated @see QPageWidgetItem.
     */
    QPageWidgetItem* addPage( QWidget *widget, const QString &name );

    /**
     * Adds a new top level page to the dialog.
     *
     * @param item The @see QPageWidgetItem which describes the page.
     */
    void addPage( QPageWidgetItem *item );

    /**
     * Inserts a new page in the dialog.
     *
     * @param before The new page will be insert before this @see QPageWidgetItem
     *               on the same level in hierarchy.
     * @param widget The widget of the page.
     * @param name The name which is displayed in the navigation view.
     *
     * @returns The associated @see QPageWidgetItem.
     */
    QPageWidgetItem* insertPage( QPageWidgetItem *before, QWidget *widget, const QString &name );

    /**
     * Inserts a new page in the dialog.
     *
     * @param before The new page will be insert before this @see QPageWidgetItem
     *               on the same level in hierarchy.
     *
     * @param item The @see QPageWidgetItem which describes the page.
     */
    void insertPage( QPageWidgetItem *before, QPageWidgetItem *item );

    /**
     * Inserts a new sub page in the dialog.
     *
     * @param parent The new page will be insert as child of this @see QPageWidgetItem.
     * @param widget The widget of the page.
     * @param name The name which is displayed in the navigation view.
     *
     * @returns The associated @see QPageWidgetItem.
     */
    QPageWidgetItem* addSubPage( QPageWidgetItem *parent, QWidget *widget, const QString &name );

    /**
     * Inserts a new sub page in the dialog.
     *
     * @param parent The new page will be insert as child of this @see QPageWidgetItem.
     *
     * @param item The @see QPageWidgetItem which describes the page.
     */
    void addSubPage( QPageWidgetItem *parent, QPageWidgetItem *item );

    /**
     * Removes the page associated with the given @see QPageWidgetItem.
     */
    void removePage( QPageWidgetItem *item );

    /**
     * Sets the page which is associated with the given @see QPageWidgetItem to
     * be the current page and emits the currentPageChanged() signal.
     */
    void setCurrentPage( QPageWidgetItem *item );

    /**
     * Returns the @see QPageWidgetItem for the current page or 0 if there is no
     * current page.
     */
    QPageWidgetItem* currentPage() const;

  Q_SIGNALS:
    /**
     * This signal is emitted whenever the current page has changed.
     *
     * @param item The new current page or 0 if no current page is available.
     */
    void currentPageChanged( QPageWidgetItem *current, QPageWidgetItem *before );

    /**
     * This signal is emitted whenever a page has been removed.
     *
     * @param page The page which has been removed
     **/
    void pageRemoved( QPageWidgetItem *page );

  protected:
    /**
     * This constructor can be used by subclasses to provide a custom page widget.
     *
     * \param widget The QPageWidget object will be reparented to this object, so you can create
     * it without parent and you are not allowed to delete it.
     */
    QPageDialog(QPageWidget *widget, QWidget *parent, Qt::WindowFlags flags = 0);
    QPageDialog(QPageDialogPrivate &dd, QPageWidget *widget, QWidget *parent, Qt::WindowFlags flags = 0);

    /**
     * Returns the page widget of the dialog or 0 if no page widget is set.
     */
    QPageWidget *pageWidget();

    /**
     * Returns the page widget of the dialog or 0 if no page widget is set.
     */
    const QPageWidget *pageWidget() const;

    /**
     * Set the page widget of the dialog.
     * 
     * @note the previous pageWidget will be deleted.
     *
     * @param widget The QPageWidget object will be reparented to this object, so you can create
     * it without parent and you are not allowed to delete it.
     */
    void setPageWidget(QPageWidget *widget);

};

#endif
