// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_notification_category_subscriptions_item.dart';
import 'contact_validation_state.dart';

/// {@template pulumi_essentialcontacts_v1_contact_args_doc}
/// The set of arguments for Contact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_v1_contact_args_doc}
class ContactArgs {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final pulumi.Input<String> email;
  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final pulumi.Input<String> languageTag;
  /// The categories of notifications that the contact will receive communications for.
  final pulumi.Input<List<ContactNotificationCategorySubscriptionsItem>> notificationCategorySubscriptions;
  final pulumi.Input<String>? project;
  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final pulumi.Input<String>? validateTime;
  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final pulumi.Input<ContactValidationState>? validationState;

  /// Creates a new [ContactArgs].
  /// [email] The email address to send notifications to. The email address does not need to be a Google Account.
  /// [languageTag] The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  /// [notificationCategorySubscriptions] The categories of notifications that the contact will receive communications for.
  /// [project] Optional.
  /// [validateTime] The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  /// [validationState] The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  const ContactArgs({
    required this.email,
    required this.languageTag,
    required this.notificationCategorySubscriptions,
    this.project,
    this.validateTime,
    this.validationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'languageTag': languageTag,
      'notificationCategorySubscriptions': pulumi.Input.mapInputValue<List<ContactNotificationCategorySubscriptionsItem>, List<String>>(notificationCategorySubscriptions, (value) => pulumi.Input.encodeList<ContactNotificationCategorySubscriptionsItem, String>(value, (value) => value.wireValue)),
      'project': ?project,
      'validateTime': ?validateTime,
      'validationState': ?pulumi.Input.mapOptionalInputValue<ContactValidationState, String>(validationState, (value) => value.wireValue),
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      email: pulumi.Input.fromValue(map['email'] as String),
      languageTag: pulumi.Input.fromValue(map['languageTag'] as String),
      notificationCategorySubscriptions: pulumi.Input.fromValue(pulumi.Input.decodeList<ContactNotificationCategorySubscriptionsItem>(map['notificationCategorySubscriptions']!, (value) => ContactNotificationCategorySubscriptionsItem.fromValue(value as String))),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validateTime: (() { final guardedValue = map['validateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationState: (() { final guardedValue = map['validationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContactValidationState.fromValue(guardedValue as String)); })(),
    );
  }
}

