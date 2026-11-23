// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_agent_pool_args_doc}
/// The set of arguments for AgentPool.
/// {@endtemplate}
/// {@macro pulumi_index_agent_pool_args_doc}
class AgentPoolArgs {
  /// Description of the agent pool.
  final pulumi.Input<String?>? description;
  /// Optional. Flag indicating whether to delete the agent pool even if stacks are configured to use it.
  final pulumi.Input<bool?>? forceDestroy;
  /// Name of the agent pool, up to 100 characters. Only letters, digits, hyphens, underscores, spaces and periods are allowed. If omitted, Pulumi generates a name from the resource's logical name plus a random suffix, or follows the stack's [autonaming configuration](https://www.pulumi.com/docs/iac/concepts/resources/names/#autonaming). Characters that aren't allowed in the logical name are replaced with hyphens.
  final pulumi.Input<String?>? name;
  /// The organization's name.
  final pulumi.Input<String> organizationName;

  /// Creates a new [AgentPoolArgs].
  /// [description] Description of the agent pool.
  /// [forceDestroy] Optional. Flag indicating whether to delete the agent pool even if stacks are configured to use it.
  /// [name] Name of the agent pool, up to 100 characters. Only letters, digits, hyphens, underscores, spaces and periods are allowed. If omitted, Pulumi generates a name from the resource's logical name plus a random suffix, or follows the stack's [autonaming configuration](https://www.pulumi.com/docs/iac/concepts/resources/names/#autonaming). Characters that aren't allowed in the logical name are replaced with hyphens.
  /// [organizationName] The organization's name.
  const AgentPoolArgs({
    this.description,
    this.forceDestroy,
    this.name,
    required this.organizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
      'organizationName': organizationName,
    };
  }

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
    );
  }
}
