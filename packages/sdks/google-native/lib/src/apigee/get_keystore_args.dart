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
  GetKeystoreArgs({
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> keystoreId,
    required pulumi.Output<String> organizationId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      keystoreId = pulumi.Input.asInput<String>(keystoreId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'keystoreId': keystoreId,
      'organizationId': organizationId,
    };
  }

  factory GetKeystoreArgs.fromMap(Map<String, dynamic> map) {
    return GetKeystoreArgs(
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      keystoreId: pulumi.Output.create<String>(map['keystoreId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

