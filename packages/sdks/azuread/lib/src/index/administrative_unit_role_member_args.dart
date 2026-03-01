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
  AdministrativeUnitRoleMemberArgs({
    required pulumi.Output<String> administrativeUnitObjectId,
    required pulumi.Output<String> memberObjectId,
    required pulumi.Output<String> roleObjectId,
  }) :
      administrativeUnitObjectId = pulumi.Input.asInput<String>(administrativeUnitObjectId),
      memberObjectId = pulumi.Input.asInput<String>(memberObjectId),
      roleObjectId = pulumi.Input.asInput<String>(roleObjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeUnitObjectId': administrativeUnitObjectId,
      'memberObjectId': memberObjectId,
      'roleObjectId': roleObjectId,
    };
  }

  factory AdministrativeUnitRoleMemberArgs.fromMap(Map<String, dynamic> map) {
    return AdministrativeUnitRoleMemberArgs(
      administrativeUnitObjectId: pulumi.Output.create<String>(map['administrativeUnitObjectId'] as String),
      memberObjectId: pulumi.Output.create<String>(map['memberObjectId'] as String),
      roleObjectId: pulumi.Output.create<String>(map['roleObjectId'] as String),
    );
  }
}

