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
  final pulumi.Input<String>? deletionPolicy;
  /// The user-assigned display name of the App.
  final pulumi.Input<String> displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [WebAppArgs].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the WebApp.
  /// [deletionPolicy] Optional.
  /// [displayName] The user-assigned display name of the App.
  /// [project] The ID of the project in which the resource belongs.
  WebAppArgs({
    pulumi.Output<String>? apiKeyId,
    pulumi.Output<String>? deletionPolicy,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? project,
  }) :
      apiKeyId = pulumi.Input.asOptionalInput<String>(apiKeyId),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      displayName = pulumi.Input.asInput<String>(displayName),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      apiKeyId: map['apiKeyId'] == null ? null : pulumi.Output.create<String>(map['apiKeyId'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

