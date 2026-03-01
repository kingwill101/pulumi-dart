// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailTemplate resources.
class EmailTemplateState {
  /// The name of the API Management Service in which the Email Template should exist. Changing this forces a new API Management Email Template to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The body of the Email. Its format has to be a well-formed HTML document.
  ///
  /// > **Note:** In `subject` and `body` predefined parameters can be used. The available parameters depend on the template. Schema to use a parameter: `$` followed by the `parameter.name` - `$<parameter.name>`. The available parameters can be seen in the Notification templates section of the API-Management Service instance within the Azure Portal.
  final pulumi.Input<String>? body;
  /// The description of the Email Template.
  final pulumi.Input<String>? description;
  /// The name of the Resource Group where the API Management Email Template should exist. Changing this forces a new API Management Email Template to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The subject of the Email.
  final pulumi.Input<String>? subject;
  /// The name of the Email Template. Possible values are `AccountClosedDeveloper`, `ApplicationApprovedNotificationMessage`, `ConfirmSignUpIdentityDefault`, `EmailChangeIdentityDefault`, `InviteUserNotificationMessage`, `NewCommentNotificationMessage`, `NewDeveloperNotificationMessage`, `NewIssueNotificationMessage`, `PasswordResetByAdminNotificationMessage`, `PasswordResetIdentityDefault`, `PurchaseDeveloperNotificationMessage`, `QuotaLimitApproachingDeveloperNotificationMessage`, `RejectDeveloperNotificationMessage`, `RequestDeveloperNotificationMessage`. Changing this forces a new API Management Email Template to be created.
  final pulumi.Input<String>? templateName;
  /// The title of the Email Template.
  final pulumi.Input<String>? title;

  /// Creates a new [EmailTemplateState].
  /// [apiManagementName] The name of the API Management Service in which the Email Template should exist. Changing this forces a new API Management Email Template to be created.
  /// [body] The body of the Email. Its format has to be a well-formed HTML document.
  /// [description] The description of the Email Template.
  /// [resourceGroupName] The name of the Resource Group where the API Management Email Template should exist. Changing this forces a new API Management Email Template to be created.
  /// [subject] The subject of the Email.
  /// [templateName] The name of the Email Template. Possible values are `AccountClosedDeveloper`, `ApplicationApprovedNotificationMessage`, `ConfirmSignUpIdentityDefault`, `EmailChangeIdentityDefault`, `InviteUserNotificationMessage`, `NewCommentNotificationMessage`, `NewDeveloperNotificationMessage`, `NewIssueNotificationMessage`, `PasswordResetByAdminNotificationMessage`, `PasswordResetIdentityDefault`, `PurchaseDeveloperNotificationMessage`, `QuotaLimitApproachingDeveloperNotificationMessage`, `RejectDeveloperNotificationMessage`, `RequestDeveloperNotificationMessage`. Changing this forces a new API Management Email Template to be created.
  /// [title] The title of the Email Template.
  EmailTemplateState({
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? body,
    pulumi.Output<String>? description,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? subject,
    pulumi.Output<String>? templateName,
    pulumi.Output<String>? title,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      body = pulumi.Input.asOptionalInput<String>(body),
      description = pulumi.Input.asOptionalInput<String>(description),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subject = pulumi.Input.asOptionalInput<String>(subject),
      templateName = pulumi.Input.asOptionalInput<String>(templateName),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'body': ?body,
      'description': ?description,
      'resourceGroupName': ?resourceGroupName,
      'subject': ?subject,
      'templateName': ?templateName,
      'title': ?title,
    };
  }

  factory EmailTemplateState.fromMap(Map<String, dynamic> map) {
    return EmailTemplateState(
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      body: map['body'] == null ? null : pulumi.Output.create<String>(map['body'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subject: map['subject'] == null ? null : pulumi.Output.create<String>(map['subject'] as String),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
    );
  }
}

