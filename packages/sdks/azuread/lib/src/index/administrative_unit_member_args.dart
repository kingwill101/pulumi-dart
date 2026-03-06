// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_administrative_unit_member_administrative_unit_member_args_doc}
/// The set of arguments for AdministrativeUnitMember.
/// {@endtemplate}
/// {@macro pulumi_index_administrative_unit_member_administrative_unit_member_args_doc}
class AdministrativeUnitMemberArgs {
  /// The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? administrativeUnitObjectId;
  /// The object ID of the user or group you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  ///
  /// &gt; **Caution** When using the azuread.AdministrativeUnitMember resource to manage Administrative Unit membership for a group, you will need to use an `ignore_changes = [administrative_unit_ids]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  final pulumi.Input<String>? memberObjectId;

  /// Creates a new [AdministrativeUnitMemberArgs].
  /// [administrativeUnitObjectId] The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  /// [memberObjectId] The object ID of the user or group you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  const AdministrativeUnitMemberArgs({
    this.administrativeUnitObjectId,
    this.memberObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeUnitObjectId': ?administrativeUnitObjectId,
      'memberObjectId': ?memberObjectId,
    };
  }

  factory AdministrativeUnitMemberArgs.fromMap(Map<String, dynamic> map) {
    return AdministrativeUnitMemberArgs(
      administrativeUnitObjectId: (() { final guardedValue = map['administrativeUnitObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberObjectId: (() { final guardedValue = map['memberObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

