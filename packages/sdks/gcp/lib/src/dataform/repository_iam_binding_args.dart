// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_binding_condition.dart';

/// {@template pulumi_dataform_repository_iam_binding_repository_iam_binding_args_doc}
/// The set of arguments for RepositoryIamBinding.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_iam_binding_repository_iam_binding_args_doc}
class RepositoryIamBindingArgs {
  final pulumi.Input<RepositoryIamBindingCondition>? condition;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String> repository;
  final pulumi.Input<String> role;

  /// Creates a new [RepositoryIamBindingArgs].
  /// [condition] Optional.
  /// [members] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [repository] Required.
  /// [role] Required.
  RepositoryIamBindingArgs({
    pulumi.Output<RepositoryIamBindingCondition>? condition,
    required pulumi.Output<List<String>> members,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> repository,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<RepositoryIamBindingCondition>(condition),
      members = pulumi.Input.asInput<List<String>>(members),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asInput<String>(repository),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<RepositoryIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'project': ?project,
      'region': ?region,
      'repository': repository,
      'role': role,
    };
  }

  factory RepositoryIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryIamBindingArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<RepositoryIamBindingCondition>(RepositoryIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      members: pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repository: pulumi.Output.create<String>(map['repository'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

