// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_stacks_stack_args_doc}
/// The set of arguments for Stack.
/// {@endtemplate}
/// {@macro pulumi_api_stacks_stack_args_doc}
class StackArgs {
  /// The configuration for the new stack.
  final pulumi.Input<dynamic>? config;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;
  /// The name of the stack being created.
  final pulumi.Input<String> stackName;
  /// An optional state to initialize the stack with.
  final pulumi.Input<dynamic>? state;
  /// An optional set of tags to apply to the stack.
  final pulumi.Input<Map<String, dynamic>>? tags;
  /// An optional set of teams to assign to the stack.
  final pulumi.Input<List<String>>? teams;

  /// Creates a new [StackArgs].
  /// [config] The configuration for the new stack.
  /// [orgName] The organization name
  /// [projectName] The project name
  /// [stackName] The name of the stack being created.
  /// [state] An optional state to initialize the stack with.
  /// [tags] An optional set of tags to apply to the stack.
  /// [teams] An optional set of teams to assign to the stack.
  const StackArgs({
    this.config,
    required this.orgName,
    required this.projectName,
    required this.stackName,
    this.state,
    this.tags,
    this.teams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'orgName': orgName,
      'projectName': projectName,
      'stackName': stackName,
      'state': ?state,
      'tags': ?tags,
      'teams': ?teams,
    };
  }

  factory StackArgs.fromMap(Map<String, dynamic> map) {
    return StackArgs(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      stackName: pulumi.Input.fromValue(map['stackName'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      teams: (() { final guardedValue = map['teams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
