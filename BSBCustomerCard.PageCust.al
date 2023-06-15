pagecustomization "BSB Customer Card" customizes "Customer Card"
{
    layout
    {
        modify("Location Code") { Visible = false; }
    }

    actions
    {
        movebefore(Contact_Promoted; Email_Promoted)
    }
}