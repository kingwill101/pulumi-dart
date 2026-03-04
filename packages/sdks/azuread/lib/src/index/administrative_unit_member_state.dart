// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AdministrativeUnitMember resources.
class AdministrativeUnitMemberState {
  /// The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administrativeUnitObjectId;

  /// The object ID of the user or group you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  ///
  /// &gt; **Caution** When using the azuread.AdministrativeUnitMember resource to manage Administrative Unit membership for a group, you will need to use an `ignore_changes = [administrative_unit_ids]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  final pulumi.Input<String>? memberObjectId;

  /// Creates a new [AdministrativeUnitMemberState].
  /// [administrativeUnitObjectId] The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  /// [memberObjectId] The object ID of the user or group you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  AdministrativeUnitMemberState({
    this.administrativeUnitObjectId,
    this.memberObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeUnitObjectId': ?administrativeUnitObjectId,
      'memberObjectId': ?memberObjectId,
    };
  }

  factory AdministrativeUnitMemberState.fromMap(Map<String, dynamic> map) {
    return AdministrativeUnitMemberState(
      administrativeUnitObjectId: (() {
        final guardedValue = map['administrativeUnitObjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memberObjectId: (() {
        final guardedValue = map['memberObjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
