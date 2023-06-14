permissionset 50100 "BSB BOOKSTORE, EDIT"
{
    Caption = 'Ed it and Create Books etc.';
    // Assignable = true;
    Permissions =
        tabledata "BSB Book" = RIMD,
        table "BSB Book" = X;
}