// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration {
  /// The total number of disks required for the concerned volume. Possible values are at least `1`. Changing this forces a new resource to be created.
  final pulumi.Input<int> numberOfDisks;

  /// The size of the Disk in GB. Changing this forces a new resource to be created.
  final pulumi.Input<int> sizeInGb;

  /// The name of the Disk SKU. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`. Changing this forces a new resource to be created.
  final pulumi.Input<String> skuName;

  /// Specifies the volumn name of the database disk. Possible values are `backup`, `hana/data`, `hana/log`, `hana/shared`, `os` and `usr/sap`. Changing this forces a new resource to be created.
  final pulumi.Input<String> volumeName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration].
  /// [numberOfDisks] The total number of disks required for the concerned volume. Possible values are at least `1`. Changing this forces a new resource to be created.
  /// [sizeInGb] The size of the Disk in GB. Changing this forces a new resource to be created.
  /// [skuName] The name of the Disk SKU. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`. Changing this forces a new resource to be created.
  /// [volumeName] Specifies the volumn name of the database disk. Possible values are `backup`, `hana/data`, `hana/log`, `hana/shared`, `os` and `usr/sap`. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration({
    required this.numberOfDisks,
    required this.sizeInGb,
    required this.skuName,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numberOfDisks': numberOfDisks,
      'sizeInGb': sizeInGb,
      'skuName': skuName,
      'volumeName': volumeName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationDiskVolumeConfiguration(
      numberOfDisks: pulumi.Input.fromValue(map['numberOfDisks'] as int),
      sizeInGb: pulumi.Input.fromValue(map['sizeInGb'] as int),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
