// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AdministrativeUnitRoleMember resources.
class AdministrativeUnitRoleMemberState {
  /// The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administrativeUnitObjectId;
  /// The object ID of the user, group or service principal you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  final pulumi.Input<String>? memberObjectId;
  /// The object ID of the directory role you want to assign. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleObjectId;

  /// Creates a new [AdministrativeUnitRoleMemberState].
  /// [administrativeUnitObjectId] The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  /// [memberObjectId] The object ID of the user, group or service principal you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  /// [roleObjectId] The object ID of the directory role you want to assign. Changing this forces a new resource to be created.
  const AdministrativeUnitRoleMemberState({
    this.administrativeUnitObjectId,
    this.memberObjectId,
    this.roleObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeUnitObjectId': ?administrativeUnitObjectId,
      'memberObjectId': ?memberObjectId,
      'roleObjectId': ?roleObjectId,
    };
  }

  factory AdministrativeUnitRoleMemberState.fromMap(Map<String, dynamic> map) {
    return AdministrativeUnitRoleMemberState(
      administrativeUnitObjectId: (() { final guardedValue = map['administrativeUnitObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberObjectId: (() { final guardedValue = map['memberObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleObjectId: (() { final guardedValue = map['roleObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
