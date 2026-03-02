// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_volume_group_oracle_get_volume_group_oracle_args_doc}
/// Arguments for getVolumeGroupOracle.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_volume_group_oracle_get_volume_group_oracle_args_doc}
class GetVolumeGroupOracleArgs {
  /// Name of the account where the application volume group belong to.
  final pulumi.Input<String> accountName;
  /// The name of this Application Volume Group for Oracle application.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Application Volume Group exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVolumeGroupOracleArgs].
  /// [accountName] Name of the account where the application volume group belong to.
  /// [name] The name of this Application Volume Group for Oracle application.
  /// [resourceGroupName] The name of the Resource Group where the Application Volume Group exists.
  GetVolumeGroupOracleArgs({
    required this.accountName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVolumeGroupOracleArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupOracleArgs(
      accountName: (map['accountName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

