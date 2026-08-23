// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_agents_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_api_agents_pool_args_doc}
class PoolArgs {
  /// The description
  final pulumi.Input<String> description;
  /// The name
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The agent pool identifier
  final pulumi.Input<String>? poolId;

  /// Creates a new [PoolArgs].
  /// [description] The description
  /// [name] The name
  /// [orgName] The organization name
  /// [poolId] The agent pool identifier
  const PoolArgs({
    required this.description,
    required this.name,
    required this.orgName,
    this.poolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'orgName': orgName,
      'poolId': ?poolId,
    };
  }

  factory PoolArgs.fromMap(Map<String, dynamic> map) {
    return PoolArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
