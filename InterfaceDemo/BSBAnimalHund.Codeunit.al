codeunit 50140 "BSB Animal Hund" implements "BSB Animal Interface"
{
    procedure GibtLaut()
    begin
        message(LautTxt);
    end;

    procedure Streichelbar(): Boolean
    begin
        Message('Steichelbar');
        exit(true);
    end;

    procedure Heranrufen()
    begin
        Message('Der Hund kommt...');
    end;

    var
        LautTxt: Label 'WauWau';
}