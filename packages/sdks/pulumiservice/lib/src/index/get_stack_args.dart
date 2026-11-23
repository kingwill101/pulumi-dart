// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_stack_args_doc}
/// Arguments for getStack.
/// {@endtemplate}
/// {@macro pulumi_index_get_stack_args_doc}
class GetStackArgs {
  /// The Pulumi Cloud organization name.
  final pulumi.Input<String> organizationName;
  /// The project name.
  final pulumi.Input<String> projectName;
  /// The stack name.
  final pulumi.Input<String> stackName;

  /// Creates a new [GetStackArgs].
  /// [organizationName] The Pulumi Cloud organization name.
  /// [projectName] The project name.
  /// [stackName] The stack name.
  const GetStackArgs({
    required this.organizationName,
    required this.projectName,
    required this.stackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'projectName': projectName,
      'stackName': stackName,
    };
  }

  factory GetStackArgs.fromMap(Map<String, dynamic> map) {
    return GetStackArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      stackName: pulumi.Input.fromValue(map['stackName'] as String),
    );
  }
}
