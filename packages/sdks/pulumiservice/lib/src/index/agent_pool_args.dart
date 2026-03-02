// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_agent_pool_args_doc}
/// The set of arguments for AgentPool.
/// {@endtemplate}
/// {@macro pulumi_index_agent_pool_args_doc}
class AgentPoolArgs {
  /// Description of the agent pool.
  final pulumi.Input<String>? description;
  /// Optional. Flag indicating whether to delete the agent pool even if stacks are configured to use it.
  final pulumi.Input<bool>? forceDestroy;
  /// Name of the agent pool.
  final pulumi.Input<String> name;
  /// The organization's name.
  final pulumi.Input<String> organizationName;

  /// Creates a new [AgentPoolArgs].
  /// [description] Description of the agent pool.
  /// [forceDestroy] Optional. Flag indicating whether to delete the agent pool even if stacks are configured to use it.
  /// [name] Name of the agent pool.
  /// [organizationName] The organization's name.
  AgentPoolArgs({
    this.description,
    this.forceDestroy,
    required this.name,
    required this.organizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'forceDestroy': ?forceDestroy,
      'name': name,
      'organizationName': organizationName,
    };
  }

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      name: (map['name'] as String).input(),
      organizationName: (map['organizationName'] as String).input(),
    );
  }
}

