// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_web_app_web_app_args_doc}
/// The set of arguments for WebApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_web_app_web_app_args_doc}
class WebAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the WebApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the WebApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String>? apiKeyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The user-assigned display name of the App.
  final pulumi.Input<String> displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [WebAppArgs].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the WebApp.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user-assigned display name of the App.
  /// [project] The ID of the project in which the resource belongs.
  const WebAppArgs({
    this.apiKeyId,
    this.deletionPolicy,
    required this.displayName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'project': ?project,
    };
  }

  factory WebAppArgs.fromMap(Map<String, dynamic> map) {
    return WebAppArgs(
      apiKeyId: (() { final guardedValue = map['apiKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
