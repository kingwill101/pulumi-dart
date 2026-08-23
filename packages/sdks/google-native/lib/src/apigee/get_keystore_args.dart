// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_keystore_args_doc}
/// Arguments for getKeystore.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_keystore_args_doc}
class GetKeystoreArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keystoreId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetKeystoreArgs].
  /// [environmentId] Required.
  /// [keystoreId] Required.
  /// [organizationId] Required.
  const GetKeystoreArgs({
    required this.environmentId,
    required this.keystoreId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'keystoreId': keystoreId,
      'organizationId': organizationId,
    };
  }

  factory GetKeystoreArgs.fromMap(Map<String, dynamic> map) {
    return GetKeystoreArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      keystoreId: pulumi.Input.fromValue(map['keystoreId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
