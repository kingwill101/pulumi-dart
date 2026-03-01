// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_iam_binding_condition.dart';

/// {@template pulumi_securitycenter_source_iam_binding_source_iam_binding_args_doc}
/// The set of arguments for SourceIamBinding.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_source_iam_binding_source_iam_binding_args_doc}
class SourceIamBindingArgs {
  final pulumi.Input<SourceIamBindingCondition>? condition;
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
  SourceIamBindingArgs({
    pulumi.Output<SourceIamBindingCondition>? condition,
    required pulumi.Output<List<String>> members,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> role,
    required pulumi.Output<String> source,
  }) :
      condition = pulumi.Input.asOptionalInput<SourceIamBindingCondition>(condition),
      members = pulumi.Input.asInput<List<String>>(members),
      organization = pulumi.Input.asInput<String>(organization),
      role = pulumi.Input.asInput<String>(role),
      source = pulumi.Input.asInput<String>(source);

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
      condition: map['condition'] == null ? null : pulumi.Output.create<SourceIamBindingCondition>(SourceIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      members: pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
      source: pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

