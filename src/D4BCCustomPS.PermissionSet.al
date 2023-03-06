permissionset 50000 "D4BC Custom PS"
{
    Assignable = true;
    Caption = 'Custom PermissionSet', MaxLength = 30;
    Permissions =
        table "D4BC Custom Setup" = X,
        tabledata "D4BC Custom Setup" = RMID,
        codeunit "D4BC Custom Event Subscriber" = X,
        codeunit "D4BC Custom Management" = X,
        page "D4BC Custom Setup" = X;
}
