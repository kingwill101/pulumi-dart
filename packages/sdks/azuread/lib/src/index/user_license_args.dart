// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_license_user_license_args_doc}
/// The set of arguments for UserLicense.
/// {@endtemplate}
/// {@macro pulumi_index_user_license_user_license_args_doc}
class UserLicenseArgs {
  /// A set of unique identifiers (GUIDs) for the service plans to disable for this license. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>?>? disabledPlans;
  /// The unique identifier (GUID) for the SKU (license) to assign to the user. Changing this forces a new resource to be created.
  final pulumi.Input<String> skuId;
  /// The object ID of the user to which the license should be assigned. Changing this forces a new resource to be created.
  ///
  /// &gt; **Group-based licensing** This resource only manages licenses assigned directly to a user. Licenses inherited via group-based licensing are ignored and are not managed by this resource.
  final pulumi.Input<String> userObjectId;

  /// Creates a new [UserLicenseArgs].
  /// [disabledPlans] A set of unique identifiers (GUIDs) for the service plans to disable for this license. Changing this forces a new resource to be created.
  /// [skuId] The unique identifier (GUID) for the SKU (license) to assign to the user. Changing this forces a new resource to be created.
  /// [userObjectId] The object ID of the user to which the license should be assigned. Changing this forces a new resource to be created.
  const UserLicenseArgs({
    this.disabledPlans,
    required this.skuId,
    required this.userObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledPlans': ?disabledPlans,
      'skuId': skuId,
      'userObjectId': userObjectId,
    };
  }

  factory UserLicenseArgs.fromMap(Map<String, dynamic> map) {
    return UserLicenseArgs(
      disabledPlans: (() { final guardedValue = map['disabledPlans']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      skuId: pulumi.Input.fromValue(map['skuId'] as String),
      userObjectId: pulumi.Input.fromValue(map['userObjectId'] as String),
    );
  }
}
