// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailTemplate resources.
class EmailTemplateState {
  /// The name of the API Management Service in which the Email Template should exist. Changing this forces a new API Management Email Template to be created.
  final pulumi.Input<String>? apiManagementName;

  /// The body of the Email. Its format has to be a well-formed HTML document.
  ///
  /// &gt; **Note:** In `subject` and `body` predefined parameters can be used. The available parameters depend on the template. Schema to use a parameter: `$` followed by the `parameter.name` - `$&lt;parameter.name&gt;`. The available parameters can be seen in the Notification templates section of the API-Management Service instance within the Azure Portal.
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
    this.apiManagementName,
    this.body,
    this.description,
    this.resourceGroupName,
    this.subject,
    this.templateName,
    this.title,
  });

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
      apiManagementName: (() {
        final guardedValue = map['apiManagementName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      body: (() {
        final guardedValue = map['body'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subject: (() {
        final guardedValue = map['subject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateName: (() {
        final guardedValue = map['templateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
