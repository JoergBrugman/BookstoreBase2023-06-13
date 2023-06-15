page 50149 "BSB Create/Delete Books"
{
    Caption = 'Create/Delete Books';
    PageType = Card;
    UsageCategory = Tasks;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            field(InfoText; InfoText)
            {
                Caption = 'Info:';
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the value of the Info: field.';
            }
        }
    }
    actions
    {
        area(Promoted)
        {
            actionref(CreateBooks_Promoted; CreateBooks) { }
            actionref(DeleteBooks_Promoted; DeleteBooks) { }
        }
        area(Processing)
        {
            action(CreateBooks)
            {
                Caption = 'Create Books';
                ApplicationArea = All;
                Image = CreateDocuments;
                ToolTip = 'Executes the Create Books action.';
                trigger OnAction()
                begin
                    Codeunit.Run(Codeunit::"BSB Create Books");
                    InfoText := 'Books created';
                end;
            }
            action(DeleteBooks)
            {
                Caption = 'Delete Books';
                ApplicationArea = All;
                Image = Delete;
                ToolTip = 'Executes the Delete Books action.';
                trigger OnAction()
                var
                    BSBBook: Record "BSB Book";
                begin
                    BSBBook.DeleteAll();
                    InfoText := 'Books deleted';
                end;
            }
        }
    }
    var
        InfoText: Text[50];
}