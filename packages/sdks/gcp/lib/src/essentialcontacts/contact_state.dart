// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Contact resources.
class ContactState {
  /// The email address to send notifications to. This does not need to be a Google account.
  final pulumi.Input<String>? email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  final pulumi.Input<String>? languageTag;

  /// The identifier for the contact. Format: {resourceType}/{resource_id}/contacts/{contact_id}
  final pulumi.Input<String>? name;

  /// The categories of notifications that the contact will receive communications for.
  final pulumi.Input<List<String>>? notificationCategorySubscriptions;

  /// The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  final pulumi.Input<String>? parent;

  /// Creates a new [ContactState].
  /// [email] The email address to send notifications to. This does not need to be a Google account.
  /// [languageTag] The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  /// [name] The identifier for the contact. Format: {resourceType}/{resource_id}/contacts/{contact_id}
  /// [notificationCategorySubscriptions] The categories of notifications that the contact will receive communications for.
  /// [parent] The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  ContactState({
    this.email,
    this.languageTag,
    this.name,
    this.notificationCategorySubscriptions,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'languageTag': ?languageTag,
      'name': ?name,
      'notificationCategorySubscriptions': ?notificationCategorySubscriptions,
      'parent': ?parent,
    };
  }

  factory ContactState.fromMap(Map<String, dynamic> map) {
    return ContactState(
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      languageTag: (() {
        final guardedValue = map['languageTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationCategorySubscriptions: (() {
        final guardedValue = map['notificationCategorySubscriptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
