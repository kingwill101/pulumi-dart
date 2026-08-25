// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_iam_binding_condition.dart';

/// {@template pulumi_securitycenter_source_iam_binding_source_iam_binding_args_doc}
/// The set of arguments for SourceIamBinding.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_source_iam_binding_source_iam_binding_args_doc}
class SourceIamBindingArgs {
  final pulumi.Input<SourceIamBindingCondition?>? condition;
  final pulumi.Input<List<String>> members;
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String> organization;
  final pulumi.Input<String> role;
  final pulumi.Input<String> source;

  /// Creates a new [SourceIamBindingArgs].
  /// [condition] Optional.
  /// [members] Required.
  /// [organization] The organization whose Cloud Security Command Center the Source
  /// [role] Required.
  /// [source] Required.
  const SourceIamBindingArgs({
    this.condition,
    required this.members,
    required this.organization,
    required this.role,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<SourceIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'organization': organization,
      'role': role,
      'source': source,
    };
  }

  factory SourceIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return SourceIamBindingArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
