// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupLicense resources.
class GroupLicenseState {
  /// A set of unique identifiers (GUIDs) for the service plans to disable for this license. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>?>? disabledPlans;
  /// The object ID of the group to which the license should be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? groupObjectId;
  /// The unique identifier (GUID) for the SKU (license) to assign to the group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? skuId;

  /// Creates a new [GroupLicenseState].
  /// [disabledPlans] A set of unique identifiers (GUIDs) for the service plans to disable for this license. Changing this forces a new resource to be created.
  /// [groupObjectId] The object ID of the group to which the license should be assigned. Changing this forces a new resource to be created.
  /// [skuId] The unique identifier (GUID) for the SKU (license) to assign to the group. Changing this forces a new resource to be created.
  const GroupLicenseState({
    this.disabledPlans,
    this.groupObjectId,
    this.skuId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledPlans': ?disabledPlans,
      'groupObjectId': ?groupObjectId,
      'skuId': ?skuId,
    };
  }

  factory GroupLicenseState.fromMap(Map<String, dynamic> map) {
    return GroupLicenseState(
      disabledPlans: (() { final guardedValue = map['disabledPlans']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupObjectId: (() { final guardedValue = map['groupObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuId: (() { final guardedValue = map['skuId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
