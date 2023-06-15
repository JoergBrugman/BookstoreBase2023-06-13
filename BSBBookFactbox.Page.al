page 50102 "BSB Book Factbox"
{
    Caption = 'Book Details';
    PageType = CardPart;
    SourceTable = "BSB Book";
    Editable = false;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            field("No."; Rec."No.")
            {
                Caption = 'Book No.';
                ToolTip = 'Specifies the number of the book. The field is NOT filled automatically!';
                trigger OnDrillDown()
                begin
                    ShowDetail();
                end;
            }
            field(Description; Rec.Description)
            {
                Caption = 'Book Description';
                ToolTip = 'Specifies the value of the Description field.';
            }
            field("Date of Publishing"; Rec."Date of Publishing")
            {
                ToolTip = 'Specifies the value of the Date of Publishing field.';
            }
            field("No. of Pages"; Rec."No. of Pages")
            {
                ToolTip = 'Specifies the value of the No. of Pages field.';
            }
            field(Author; Rec.Author)
            {
                ToolTip = 'Specifies the value of the Author field.';
            }
        }
    }

    local procedure ShowDetail()
    begin
        Rec.ShowCard();
    end;
}