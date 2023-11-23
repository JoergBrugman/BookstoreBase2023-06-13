page 50141 "BSB Test Interface Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            field(AnimalType; AnimalType)
            {
                Caption = 'Tiertyp auswählen';
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(TestInterface)
            {

                Caption = 'TestInterface';
                Image = ExportMessage;
                ToolTip = 'Executes the TestInterface action.';

                trigger OnAction()
                begin
                    // if AnimalType = AnimalType::Hund then
                    //     BSBAnimalInterface := BSBAnimalHund
                    // else
                    //     BSBAnimalInterface := BSBAnimalKatze;
                    BSBAnimalInterface := BSBAnimalTypeMgmt.GetHandler(AnimalType);
                    BSBAnimalInterface.GibtLaut();
                    if BSBAnimalInterface.Streichelbar() then
                        BSBAnimalInterface.Heranrufen();

                end;

            }
        }
    }
    var
        BSBAnimalInterface: Interface "BSB Animal Interface";
        // BSBAnimalHund: Codeunit "BSB Animal Hund";
        // BSBAnimalKatze: Codeunit "BSB Animal Katze";
        AnimalType: Enum "BSB Animal Type";
        BSBAnimalTypeMgmt: Codeunit "BSB Animal Type Mgmt.";
}