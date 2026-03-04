// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaseappcheck_v1beta_debug_token_firebaseappcheck_v1beta_args_doc}
/// The set of arguments for DebugToken.
/// {@endtemplate}
/// {@macro pulumi_firebaseappcheck_v1beta_debug_token_firebaseappcheck_v1beta_args_doc}
class DebugTokenFirebaseappcheckV1betaArgs {
  final pulumi.Input<String> appId;

  /// A human readable display name used to identify this debug token.
  final pulumi.Input<String> displayName;

  /// The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  final pulumi.Input<String> token;

  /// Creates a new [DebugTokenFirebaseappcheckV1betaArgs].
  /// [appId] Required.
  /// [displayName] A human readable display name used to identify this debug token.
  /// [name] The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  /// [project] Optional.
  /// [token] Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  DebugTokenFirebaseappcheckV1betaArgs({
    required this.appId,
    required this.displayName,
    this.name,
    this.project,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'displayName': displayName,
      'name': ?name,
      'project': ?project,
      'token': token,
    };
  }

  factory DebugTokenFirebaseappcheckV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return DebugTokenFirebaseappcheckV1betaArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
