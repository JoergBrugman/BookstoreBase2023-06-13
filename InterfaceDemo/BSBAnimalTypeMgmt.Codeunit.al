codeunit 50144 "BSB Animal Type Mgmt."
{
    procedure GetHandler(BSBAnimalType: Enum "BSB Animal Type") AnimalInterface: Interface "BSB Animal Interface"
    begin
        AnimalInterface := BSBAnimalType;
    end;
}