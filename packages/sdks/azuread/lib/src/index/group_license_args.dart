// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_group_license_group_license_args_doc}
/// The set of arguments for GroupLicense.
/// {@endtemplate}
/// {@macro pulumi_index_group_license_group_license_args_doc}
class GroupLicenseArgs {
  /// A set of unique identifiers (GUIDs) for the service plans to disable for this license. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>?>? disabledPlans;
  /// The object ID of the group to which the license should be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String> groupObjectId;
  /// The unique identifier (GUID) for the SKU (license) to assign to the group. Changing this forces a new resource to be created.
  final pulumi.Input<String> skuId;

  /// Creates a new [GroupLicenseArgs].
  /// [disabledPlans] A set of unique identifiers (GUIDs) for the service plans to disable for this license. Changing this forces a new resource to be created.
  /// [groupObjectId] The object ID of the group to which the license should be assigned. Changing this forces a new resource to be created.
  /// [skuId] The unique identifier (GUID) for the SKU (license) to assign to the group. Changing this forces a new resource to be created.
  const GroupLicenseArgs({
    this.disabledPlans,
    required this.groupObjectId,
    required this.skuId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledPlans': ?disabledPlans,
      'groupObjectId': groupObjectId,
      'skuId': skuId,
    };
  }

  factory GroupLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GroupLicenseArgs(
      disabledPlans: (() { final guardedValue = map['disabledPlans']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupObjectId: pulumi.Input.fromValue(map['groupObjectId'] as String),
      skuId: pulumi.Input.fromValue(map['skuId'] as String),
    );
  }
}
