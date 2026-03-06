// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_administrative_unit_role_member_administrative_unit_role_member_args_doc}
/// The set of arguments for AdministrativeUnitRoleMember.
/// {@endtemplate}
/// {@macro pulumi_index_administrative_unit_role_member_administrative_unit_role_member_args_doc}
class AdministrativeUnitRoleMemberArgs {
  /// The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  final pulumi.Input<String> administrativeUnitObjectId;
  /// The object ID of the user, group or service principal you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  final pulumi.Input<String> memberObjectId;
  /// The object ID of the directory role you want to assign. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleObjectId;

  /// Creates a new [AdministrativeUnitRoleMemberArgs].
  /// [administrativeUnitObjectId] The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  /// [memberObjectId] The object ID of the user, group or service principal you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  /// [roleObjectId] The object ID of the directory role you want to assign. Changing this forces a new resource to be created.
  const AdministrativeUnitRoleMemberArgs({
    required this.administrativeUnitObjectId,
    required this.memberObjectId,
    required this.roleObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeUnitObjectId': administrativeUnitObjectId,
      'memberObjectId': memberObjectId,
      'roleObjectId': roleObjectId,
    };
  }

  factory AdministrativeUnitRoleMemberArgs.fromMap(Map<String, dynamic> map) {
    return AdministrativeUnitRoleMemberArgs(
      administrativeUnitObjectId: pulumi.Input.fromValue(map['administrativeUnitObjectId'] as String),
      memberObjectId: pulumi.Input.fromValue(map['memberObjectId'] as String),
      roleObjectId: pulumi.Input.fromValue(map['roleObjectId'] as String),
    );
  }
}

