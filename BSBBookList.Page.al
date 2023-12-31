page 50101 "BSB Book List"
{
    Caption = 'Books';
    PageType = List;
    SourceTable = "BSB Book";
    Editable = false;
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "BSB Book Card";

    layout
    {
        area(Content)
        {
            repeater(Books)
            {

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the book. The field is NOT filled automatically!';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(ISBN; Rec.ISBN)
                {
                    ToolTip = 'Specifies the value of the ISBN field.';
                }
                field(Author; Rec.Author)
                {
                    ToolTip = 'Specifies the value of the Author field.';
                }
                field("No. of Pages"; Rec."No. of Pages")
                {
                    ToolTip = 'Specifies the value of the No. of Pages field.';
                    Visible = false;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(BookSale)
            {
                Caption = 'Starts Sales Process';
                Image = Process;
                ToolTip = 'Executes the Start Sales Process action.';

                trigger OnAction()
                var
                    BSBBookTypeProcessMgmt: Codeunit "BSB Book Type Process Mgmt.";
                    BSBBookTypeProcess: Interface "BSB Book Type Process";
                begin
                    BSBBookTypeProcess := BSBBookTypeProcessMgmt.GetHandler(Rec);
                    BSBBookTypeProcess.StartDeployBook();
                    BSBBookTypeProcess.StartDeliverBook();
                end;
            }
        }
    }
}