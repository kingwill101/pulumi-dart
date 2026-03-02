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
  ContactArgs({
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
      'notificationCategorySubscriptions': pulumi.Input.mapInputValue<List<ContactNotificationCategorySubscriptionsItem>, List<String>>(notificationCategorySubscriptions, (value) => pulumi.Input.encodeList<ContactNotificationCategorySubscriptionsItem, String>(value, (value) => value.value)),
      'project': ?project,
      'validateTime': ?validateTime,
      'validationState': ?pulumi.Input.mapOptionalInputValue<ContactValidationState, String>(validationState, (value) => value.value),
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      email: (map['email'] as String).input(),
      languageTag: (map['languageTag'] as String).input(),
      notificationCategorySubscriptions: (pulumi.Input.decodeList<ContactNotificationCategorySubscriptionsItem>(map['notificationCategorySubscriptions'], (value) => ContactNotificationCategorySubscriptionsItem.fromValue(value as String))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      validateTime: map['validateTime'] == null ? null : (map['validateTime'] as String).input(),
      validationState: map['validationState'] == null ? null : (ContactValidationState.fromValue(map['validationState'] as String)).input(),
    );
  }
}

