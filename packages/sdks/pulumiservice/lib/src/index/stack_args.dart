// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stack_args_doc}
/// The set of arguments for Stack.
/// {@endtemplate}
/// {@macro pulumi_index_stack_args_doc}
class StackArgs {
  /// Optional. Flag indicating whether to delete the stack even if it still contains resources.
  final pulumi.Input<bool>? forceDestroy;
  /// The name of the organization.
  final pulumi.Input<String> organizationName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the stack.
  final pulumi.Input<String> stackName;

  /// Creates a new [StackArgs].
  /// [forceDestroy] Optional. Flag indicating whether to delete the stack even if it still contains resources.
  /// [organizationName] The name of the organization.
  /// [projectName] The name of the project.
  /// [stackName] The name of the stack.
  StackArgs({
    this.forceDestroy,
    required this.organizationName,
    required this.projectName,
    required this.stackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDestroy': ?forceDestroy,
      'organizationName': organizationName,
      'projectName': projectName,
      'stackName': stackName,
    };
  }

  factory StackArgs.fromMap(Map<String, dynamic> map) {
    return StackArgs(
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      organizationName: (map['organizationName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      stackName: (map['stackName'] as String).input(),
    );
  }
}

