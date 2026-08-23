// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_organization_member_args_doc}
/// The set of arguments for OrganizationMember.
/// {@endtemplate}
/// {@macro pulumi_api_organization_member_args_doc}
class OrganizationMemberArgs {
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The built-in role assigned to the new member. Must be `member`, `admin`, or `billingManager`.
  final pulumi.Input<String> role;
  /// The user login name
  final pulumi.Input<String> userLogin;

  /// Creates a new [OrganizationMemberArgs].
  /// [orgName] The organization name
  /// [role] The built-in role assigned to the new member. Must be `member`, `admin`, or `billingManager`.
  /// [userLogin] The user login name
  const OrganizationMemberArgs({
    required this.orgName,
    required this.role,
    required this.userLogin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orgName': orgName,
      'role': role,
      'userLogin': userLogin,
    };
  }

  factory OrganizationMemberArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationMemberArgs(
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      userLogin: pulumi.Input.fromValue(map['userLogin'] as String),
    );
  }
}
