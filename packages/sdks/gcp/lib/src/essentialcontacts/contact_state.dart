// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Contact resources.
class ContactState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The email address to send notifications to. This does not need to be a Google account.
  final pulumi.Input<String?>? email;
  /// The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  final pulumi.Input<String?>? languageTag;
  /// The identifier for the contact. Format: {resourceType}/{resource_id}/contacts/{contact_id}
  final pulumi.Input<String?>? name;
  /// The categories of notifications that the contact will receive communications for.
  final pulumi.Input<List<String>?>? notificationCategorySubscriptions;
  /// The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  final pulumi.Input<String?>? parent;

  /// Creates a new [ContactState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [email] The email address to send notifications to. This does not need to be a Google account.
  /// [languageTag] The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  /// [name] The identifier for the contact. Format: {resourceType}/{resource_id}/contacts/{contact_id}
  /// [notificationCategorySubscriptions] The categories of notifications that the contact will receive communications for.
  /// [parent] The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  const ContactState({
    this.deletionPolicy,
    this.email,
    this.languageTag,
    this.name,
    this.notificationCategorySubscriptions,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'email': ?email,
      'languageTag': ?languageTag,
      'name': ?name,
      'notificationCategorySubscriptions': ?notificationCategorySubscriptions,
      'parent': ?parent,
    };
  }

  factory ContactState.fromMap(Map<String, dynamic> map) {
    return ContactState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageTag: (() { final guardedValue = map['languageTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationCategorySubscriptions: (() { final guardedValue = map['notificationCategorySubscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
