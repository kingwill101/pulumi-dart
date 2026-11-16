// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudExadataInfrastructurePropertiesExascaleConfig {
  /// Available storage size for Exascale in GBs.
  final pulumi.Input<int?>? availableStorageSizeGb;
  /// Available storage size for VM storage on Exascale in GBs.
  final pulumi.Input<int?>? availableVmStorageSizeGb;
  /// Total storage size needed for Exascale in GBs.
  final pulumi.Input<int?>? totalStorageSizeGb;
  /// Storage size needed for VM storage on Exascale in GBs.
  final pulumi.Input<int?>? totalVmStorageSizeGb;

  /// Creates a new [CloudExadataInfrastructurePropertiesExascaleConfig].
  /// [availableStorageSizeGb] Available storage size for Exascale in GBs.
  /// [availableVmStorageSizeGb] Available storage size for VM storage on Exascale in GBs.
  /// [totalStorageSizeGb] Total storage size needed for Exascale in GBs.
  /// [totalVmStorageSizeGb] Storage size needed for VM storage on Exascale in GBs.
  const CloudExadataInfrastructurePropertiesExascaleConfig({
    this.availableStorageSizeGb,
    this.availableVmStorageSizeGb,
    this.totalStorageSizeGb,
    this.totalVmStorageSizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableStorageSizeGb': ?availableStorageSizeGb,
      'availableVmStorageSizeGb': ?availableVmStorageSizeGb,
      'totalStorageSizeGb': ?totalStorageSizeGb,
      'totalVmStorageSizeGb': ?totalVmStorageSizeGb,
    };
  }

  factory CloudExadataInfrastructurePropertiesExascaleConfig.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructurePropertiesExascaleConfig(
      availableStorageSizeGb: (() { final guardedValue = map['availableStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      availableVmStorageSizeGb: (() { final guardedValue = map['availableVmStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      totalStorageSizeGb: (() { final guardedValue = map['totalStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      totalVmStorageSizeGb: (() { final guardedValue = map['totalVmStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
