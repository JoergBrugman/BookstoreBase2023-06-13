enum 50149 "BSB Animal Type" implements "BSB Animal Interface"
{
    Caption = 'Animal Type';
    Extensible = true;
    // DefaultImplementation = "BSB Animal Interface" = "BSB Animal Nothing";
    value(0; Hund)
    {
        Implementation = "BSB Animal Interface" = "BSB Animal Hund";
    }
    value(1; Katze)
    {
        Implementation = "BSB Animal Interface" = "BSB Animal Katze";
    }
}