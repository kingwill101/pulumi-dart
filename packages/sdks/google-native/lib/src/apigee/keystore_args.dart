// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_keystore_args_doc}
/// The set of arguments for Keystore.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_keystore_args_doc}
class KeystoreArgs {
  final pulumi.Input<String> environmentId;
  /// Resource ID for this keystore. Values must match the regular expression `[\w[:space:].-]{1,255}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [KeystoreArgs].
  /// [environmentId] Required.
  /// [name] Resource ID for this keystore. Values must match the regular expression `[\w[:space:].-]{1,255}`.
  /// [organizationId] Required.
  const KeystoreArgs({
    required this.environmentId,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory KeystoreArgs.fromMap(Map<String, dynamic> map) {
    return KeystoreArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

