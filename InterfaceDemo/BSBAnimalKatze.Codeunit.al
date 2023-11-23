codeunit 50142 "BSB Animal Katze" implements "BSB Animal Interface"
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
        Message('Der Katze kommt...');
    end;

    var
        LautTxt: Label 'Miau';
}