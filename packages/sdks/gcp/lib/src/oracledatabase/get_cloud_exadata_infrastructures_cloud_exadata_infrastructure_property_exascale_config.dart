// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyExascaleConfig {
  /// Available storage size for Exascale in GBs.
  final pulumi.Input<int> availableStorageSizeGb;
  /// Available storage size for VM storage on Exascale in GBs.
  final pulumi.Input<int> availableVmStorageSizeGb;
  /// Total storage size needed for Exascale in GBs.
  final pulumi.Input<int> totalStorageSizeGb;
  /// Storage size needed for VM storage on Exascale in GBs.
  final pulumi.Input<int> totalVmStorageSizeGb;

  /// Creates a new [GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyExascaleConfig].
  /// [availableStorageSizeGb] Available storage size for Exascale in GBs.
  /// [availableVmStorageSizeGb] Available storage size for VM storage on Exascale in GBs.
  /// [totalStorageSizeGb] Total storage size needed for Exascale in GBs.
  /// [totalVmStorageSizeGb] Storage size needed for VM storage on Exascale in GBs.
  const GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyExascaleConfig({
    required this.availableStorageSizeGb,
    required this.availableVmStorageSizeGb,
    required this.totalStorageSizeGb,
    required this.totalVmStorageSizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableStorageSizeGb': availableStorageSizeGb,
      'availableVmStorageSizeGb': availableVmStorageSizeGb,
      'totalStorageSizeGb': totalStorageSizeGb,
      'totalVmStorageSizeGb': totalVmStorageSizeGb,
    };
  }

  factory GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyExascaleConfig.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyExascaleConfig(
      availableStorageSizeGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['availableStorageSizeGb'])),
      availableVmStorageSizeGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['availableVmStorageSizeGb'])),
      totalStorageSizeGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalStorageSizeGb'])),
      totalVmStorageSizeGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalVmStorageSizeGb'])),
    );
  }
}
