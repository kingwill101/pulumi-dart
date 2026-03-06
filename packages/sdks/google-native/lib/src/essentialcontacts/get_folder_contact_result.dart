// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFolderContact.
class GetFolderContactResult {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final String email;
  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final String languageTag;
  /// The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}
  final String name;
  /// The categories of notifications that the contact will receive communications for.
  final List<String> notificationCategorySubscriptions;
  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final String validateTime;
  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final String validationState;

  /// Creates a new [GetFolderContactResult].
  /// [email] The email address to send notifications to. The email address does not need to be a Google Account.
  /// [languageTag] The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  /// [name] The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}
  /// [notificationCategorySubscriptions] The categories of notifications that the contact will receive communications for.
  /// [validateTime] The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  /// [validationState] The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  const GetFolderContactResult({
    required this.email,
    required this.languageTag,
    required this.name,
    required this.notificationCategorySubscriptions,
    required this.validateTime,
    required this.validationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'languageTag': languageTag,
      'name': name,
      'notificationCategorySubscriptions': notificationCategorySubscriptions,
      'validateTime': validateTime,
      'validationState': validationState,
    };
  }

  factory GetFolderContactResult.fromMap(Map<String, dynamic> map) {
    return GetFolderContactResult(
      email: map['email'] as String,
      languageTag: map['languageTag'] as String,
      name: map['name'] as String,
      notificationCategorySubscriptions: (map['notificationCategorySubscriptions'] as List).cast<String>(),
      validateTime: map['validateTime'] as String,
      validationState: map['validationState'] as String,
    );
  }
}

