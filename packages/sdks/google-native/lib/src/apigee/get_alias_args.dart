// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_alias_args_doc}
/// Arguments for getAlias.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_alias_args_doc}
class GetAliasArgs {
  final pulumi.Input<String> aliasId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keystoreId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetAliasArgs].
  /// [aliasId] Required.
  /// [environmentId] Required.
  /// [keystoreId] Required.
  /// [organizationId] Required.
  GetAliasArgs({
    required this.aliasId,
    required this.environmentId,
    required this.keystoreId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasId': aliasId,
      'environmentId': environmentId,
      'keystoreId': keystoreId,
      'organizationId': organizationId,
    };
  }

  factory GetAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetAliasArgs(
      aliasId: pulumi.Input.fromValue(map['aliasId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      keystoreId: pulumi.Input.fromValue(map['keystoreId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

