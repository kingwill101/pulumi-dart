// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_volume_get_volume_args_doc}
/// Arguments for getVolume.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_volume_get_volume_args_doc}
class GetVolumeArgs {
  /// The name of the NetApp account where the NetApp pool exists.
  final pulumi.Input<String> accountName;
  /// The name of the NetApp Volume.
  final pulumi.Input<String> name;
  /// The name of the NetApp pool where the NetApp volume exists.
  final pulumi.Input<String> poolName;
  /// The Name of the Resource Group where the NetApp Volume exists.
  final pulumi.Input<String> resourceGroupName;
  /// Volume security style
  final pulumi.Input<String>? securityStyle;

  /// Creates a new [GetVolumeArgs].
  /// [accountName] The name of the NetApp account where the NetApp pool exists.
  /// [name] The name of the NetApp Volume.
  /// [poolName] The name of the NetApp pool where the NetApp volume exists.
  /// [resourceGroupName] The Name of the Resource Group where the NetApp Volume exists.
  /// [securityStyle] Volume security style
  GetVolumeArgs({
    required this.accountName,
    required this.name,
    required this.poolName,
    required this.resourceGroupName,
    this.securityStyle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'securityStyle': ?securityStyle,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      accountName: (map['accountName'] as String).input(),
      name: (map['name'] as String).input(),
      poolName: (map['poolName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityStyle: map['securityStyle'] == null ? null : (map['securityStyle'] as String).input(),
    );
  }
}

