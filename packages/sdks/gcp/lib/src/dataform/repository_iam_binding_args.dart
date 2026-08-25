// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_binding_condition.dart';

/// {@template pulumi_dataform_repository_iam_binding_repository_iam_binding_args_doc}
/// The set of arguments for RepositoryIamBinding.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_iam_binding_repository_iam_binding_args_doc}
class RepositoryIamBindingArgs {
  final pulumi.Input<RepositoryIamBindingCondition?>? condition;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String?>? project;
  final pulumi.Input<String?>? region;
  final pulumi.Input<String> repository;
  final pulumi.Input<String> role;

  /// Creates a new [RepositoryIamBindingArgs].
  /// [condition] Optional.
  /// [members] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [repository] Required.
  /// [role] Required.
  const RepositoryIamBindingArgs({
    this.condition,
    required this.members,
    this.project,
    this.region,
    required this.repository,
    required this.role,
  });

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
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: pulumi.Input.fromValue(map['repository'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
