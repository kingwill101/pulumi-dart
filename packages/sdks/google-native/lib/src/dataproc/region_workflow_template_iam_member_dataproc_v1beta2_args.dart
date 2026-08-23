// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';

/// {@template pulumi_dataproc_v1beta2_region_workflow_template_iam_member_dataproc_v1beta2_args_doc}
/// The set of arguments for RegionWorkflowTemplateIamMember.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_region_workflow_template_iam_member_dataproc_v1beta2_args_doc}
class RegionWorkflowTemplateIamMemberDataprocV1beta2Args {
  /// An IAM Condition for a given binding.
  final pulumi.Input<Condition>? condition;
  /// Identity that will be granted the privilege in role. The entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;
  /// The name of the resource to manage IAM policies for.
  final pulumi.Input<String> name;
  /// The role that should be applied.
  final pulumi.Input<String> role;

  /// Creates a new [RegionWorkflowTemplateIamMemberDataprocV1beta2Args].
  /// [condition] An IAM Condition for a given binding.
  /// [member] Identity that will be granted the privilege in role. The entry can have one of the following values:
  /// [name] The name of the resource to manage IAM policies for.
  /// [role] The role that should be applied.
  const RegionWorkflowTemplateIamMemberDataprocV1beta2Args({
    this.condition,
    required this.member,
    required this.name,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'member': member,
      'name': name,
      'role': role,
    };
  }

  factory RegionWorkflowTemplateIamMemberDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return RegionWorkflowTemplateIamMemberDataprocV1beta2Args(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Condition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      member: pulumi.Input.fromValue(map['member'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
