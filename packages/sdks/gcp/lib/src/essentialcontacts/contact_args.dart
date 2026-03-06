// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_contact_contact_args_doc}
/// The set of arguments for Contact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_contact_contact_args_doc}
class ContactArgs {
  /// The email address to send notifications to. This does not need to be a Google account.
  final pulumi.Input<String> email;
  /// The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  final pulumi.Input<String> languageTag;
  /// The categories of notifications that the contact will receive communications for.
  final pulumi.Input<List<String>> notificationCategorySubscriptions;
  /// The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  final pulumi.Input<String> parent;

  /// Creates a new [ContactArgs].
  /// [email] The email address to send notifications to. This does not need to be a Google account.
  /// [languageTag] The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  /// [notificationCategorySubscriptions] The categories of notifications that the contact will receive communications for.
  /// [parent] The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  const ContactArgs({
    required this.email,
    required this.languageTag,
    required this.notificationCategorySubscriptions,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'languageTag': languageTag,
      'notificationCategorySubscriptions': notificationCategorySubscriptions,
      'parent': parent,
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      email: pulumi.Input.fromValue(map['email'] as String),
      languageTag: pulumi.Input.fromValue(map['languageTag'] as String),
      notificationCategorySubscriptions: pulumi.Input.fromValue((map['notificationCategorySubscriptions'] as List).cast<String>()),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}

