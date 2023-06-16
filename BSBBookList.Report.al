report 50100 "BSB Book - List"
{
    Caption = 'Book - List';
    DefaultRenderingLayout = "BookList.Report.rdlc";
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(SingleRowData; Integer)
        {
            DataItemTableView = sorting(Number) where(Number = const(1));

            #region Columns
            column(COMPANYNAME; CompanyProperty.DisplayName()) { }
            #endregion Columns
        }
        dataitem("BSB Book"; "BSB Book")
        {
            DataItemTableView = order(ascending);
            RequestFilterFields = "No.";

            #region Columns
            column(No_BSBBook; "BSB Book"."No.") { IncludeCaption = true; }
            column(Description_BSBBook; "BSB Book".Description) { IncludeCaption = true; }
            column(Type_BSBBook; "BSB Book".Type) { IncludeCaption = true; }
            column(Author_BSBBook; "BSB Book".Author) { IncludeCaption = true; }
            column(NoofPages_BSBBook; "BSB Book"."No. of Pages") { IncludeCaption = true; }
            #endregion Columns
        }
    }

    rendering
    {
        layout("BookList.Report.rdlc")
        {
            Type = RDLC;
            LayoutFile = 'BSBBookList.Report.rdlc';
        }
        layout("BookList-Layout 2")
        {
            Type = RDLC;
            LayoutFile = 'BSBBookList2.Report.rdlc';
        }
    }
    labels
    {
        TitleCaption = 'Book - List';
        PageCaption = 'Page {0} of {1}';
    }

}
