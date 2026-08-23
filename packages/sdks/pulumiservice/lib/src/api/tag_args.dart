// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_stacks_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_api_stacks_tag_args_doc}
class TagArgs {
  /// The tag key, which must conform to the stack tag naming rules.
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;
  /// The stack name
  final pulumi.Input<String> stackName;
  /// The tag value associated with this key.
  final pulumi.Input<String> value;

  /// Creates a new [TagArgs].
  /// [name] The tag key, which must conform to the stack tag naming rules.
  /// [orgName] The organization name
  /// [projectName] The project name
  /// [stackName] The stack name
  /// [value] The tag value associated with this key.
  const TagArgs({
    required this.name,
    required this.orgName,
    required this.projectName,
    required this.stackName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'orgName': orgName,
      'projectName': projectName,
      'stackName': stackName,
      'value': value,
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      stackName: pulumi.Input.fromValue(map['stackName'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
