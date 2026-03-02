// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';

/// {@template pulumi_containeranalysis_v1alpha1_note_iam_member_containeranalysis_v1alpha1_args_doc}
/// The set of arguments for NoteIamMember.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1alpha1_note_iam_member_containeranalysis_v1alpha1_args_doc}
class NoteIamMemberContaineranalysisV1alpha1Args {
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

  /// Creates a new [NoteIamMemberContaineranalysisV1alpha1Args].
  /// [condition] An IAM Condition for a given binding.
  /// [member] Identity that will be granted the privilege in role. The entry can have one of the following values:
  /// [name] The name of the resource to manage IAM policies for.
  /// [role] The role that should be applied.
  NoteIamMemberContaineranalysisV1alpha1Args({
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

  factory NoteIamMemberContaineranalysisV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return NoteIamMemberContaineranalysisV1alpha1Args(
      condition: map['condition'] == null ? null : (Condition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      member: (map['member'] as String).input(),
      name: (map['name'] as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

