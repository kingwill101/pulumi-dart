// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationContact.
class GetOrganizationContactResult {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final String? email;
  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final String? languageTag;
  /// The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}
  final String? name;
  /// The categories of notifications that the contact will receive communications for.
  final List<String>? notificationCategorySubscriptions;
  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final String? validateTime;
  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final String? validationState;

  /// Creates a new [GetOrganizationContactResult].
  /// [email] The email address to send notifications to. The email address does not need to be a Google Account.
  /// [languageTag] The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  /// [name] The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}
  /// [notificationCategorySubscriptions] The categories of notifications that the contact will receive communications for.
  /// [validateTime] The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  /// [validationState] The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  const GetOrganizationContactResult({
    this.email,
    this.languageTag,
    this.name,
    this.notificationCategorySubscriptions,
    this.validateTime,
    this.validationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'languageTag': ?languageTag,
      'name': ?name,
      'notificationCategorySubscriptions': ?notificationCategorySubscriptions,
      'validateTime': ?validateTime,
      'validationState': ?validationState,
    };
  }

  factory GetOrganizationContactResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationContactResult(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      languageTag: (() { final guardedValue = map['languageTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationCategorySubscriptions: (() { final guardedValue = map['notificationCategorySubscriptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      validateTime: (() { final guardedValue = map['validateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationState: (() { final guardedValue = map['validationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
