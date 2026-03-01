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
    pulumi.Output<String>? description,
    pulumi.Output<bool>? forceDestroy,
    required pulumi.Output<String> name,
    required pulumi.Output<String> organizationName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      name = pulumi.Input.asInput<String>(name),
      organizationName = pulumi.Input.asInput<String>(organizationName);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      name: pulumi.Output.create<String>(map['name'] as String),
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
    );
  }
}

