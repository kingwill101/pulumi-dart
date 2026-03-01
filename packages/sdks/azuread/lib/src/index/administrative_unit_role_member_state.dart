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
  AdministrativeUnitRoleMemberState({
    pulumi.Output<String>? administrativeUnitObjectId,
    pulumi.Output<String>? memberObjectId,
    pulumi.Output<String>? roleObjectId,
  }) :
      administrativeUnitObjectId = pulumi.Input.asOptionalInput<String>(administrativeUnitObjectId),
      memberObjectId = pulumi.Input.asOptionalInput<String>(memberObjectId),
      roleObjectId = pulumi.Input.asOptionalInput<String>(roleObjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeUnitObjectId': ?administrativeUnitObjectId,
      'memberObjectId': ?memberObjectId,
      'roleObjectId': ?roleObjectId,
    };
  }

  factory AdministrativeUnitRoleMemberState.fromMap(Map<String, dynamic> map) {
    return AdministrativeUnitRoleMemberState(
      administrativeUnitObjectId: map['administrativeUnitObjectId'] == null ? null : pulumi.Output.create<String>(map['administrativeUnitObjectId'] as String),
      memberObjectId: map['memberObjectId'] == null ? null : pulumi.Output.create<String>(map['memberObjectId'] as String),
      roleObjectId: map['roleObjectId'] == null ? null : pulumi.Output.create<String>(map['roleObjectId'] as String),
    );
  }
}

