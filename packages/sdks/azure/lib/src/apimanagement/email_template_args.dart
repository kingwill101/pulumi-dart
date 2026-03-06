// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_email_template_email_template_args_doc}
/// The set of arguments for EmailTemplate.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_email_template_email_template_args_doc}
class EmailTemplateArgs {
  /// The name of the API Management Service in which the Email Template should exist. Changing this forces a new API Management Email Template to be created.
  final pulumi.Input<String> apiManagementName;
  /// The body of the Email. Its format has to be a well-formed HTML document.
  ///
  /// &gt; **Note:** In `subject` and `body` predefined parameters can be used. The available parameters depend on the template. Schema to use a parameter: `$` followed by the `parameter.name` - `$&lt;parameter.name&gt;`. The available parameters can be seen in the Notification templates section of the API-Management Service instance within the Azure Portal.
  final pulumi.Input<String> body;
  /// The name of the Resource Group where the API Management Email Template should exist. Changing this forces a new API Management Email Template to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The subject of the Email.
  final pulumi.Input<String> subject;
  /// The name of the Email Template. Possible values are `AccountClosedDeveloper`, `ApplicationApprovedNotificationMessage`, `ConfirmSignUpIdentityDefault`, `EmailChangeIdentityDefault`, `InviteUserNotificationMessage`, `NewCommentNotificationMessage`, `NewDeveloperNotificationMessage`, `NewIssueNotificationMessage`, `PasswordResetByAdminNotificationMessage`, `PasswordResetIdentityDefault`, `PurchaseDeveloperNotificationMessage`, `QuotaLimitApproachingDeveloperNotificationMessage`, `RejectDeveloperNotificationMessage`, `RequestDeveloperNotificationMessage`. Changing this forces a new API Management Email Template to be created.
  final pulumi.Input<String> templateName;

  /// Creates a new [EmailTemplateArgs].
  /// [apiManagementName] The name of the API Management Service in which the Email Template should exist. Changing this forces a new API Management Email Template to be created.
  /// [body] The body of the Email. Its format has to be a well-formed HTML document.
  /// [resourceGroupName] The name of the Resource Group where the API Management Email Template should exist. Changing this forces a new API Management Email Template to be created.
  /// [subject] The subject of the Email.
  /// [templateName] The name of the Email Template. Possible values are `AccountClosedDeveloper`, `ApplicationApprovedNotificationMessage`, `ConfirmSignUpIdentityDefault`, `EmailChangeIdentityDefault`, `InviteUserNotificationMessage`, `NewCommentNotificationMessage`, `NewDeveloperNotificationMessage`, `NewIssueNotificationMessage`, `PasswordResetByAdminNotificationMessage`, `PasswordResetIdentityDefault`, `PurchaseDeveloperNotificationMessage`, `QuotaLimitApproachingDeveloperNotificationMessage`, `RejectDeveloperNotificationMessage`, `RequestDeveloperNotificationMessage`. Changing this forces a new API Management Email Template to be created.
  const EmailTemplateArgs({
    required this.apiManagementName,
    required this.body,
    required this.resourceGroupName,
    required this.subject,
    required this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'body': body,
      'resourceGroupName': resourceGroupName,
      'subject': subject,
      'templateName': templateName,
    };
  }

  factory EmailTemplateArgs.fromMap(Map<String, dynamic> map) {
    return EmailTemplateArgs(
      apiManagementName: pulumi.Input.fromValue(map['apiManagementName'] as String),
      body: pulumi.Input.fromValue(map['body'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
    );
  }
}

