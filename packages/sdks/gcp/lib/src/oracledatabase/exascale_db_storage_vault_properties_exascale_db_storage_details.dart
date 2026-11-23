// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails {
  /// (Output)
  /// The available storage capacity for the ExascaleDbStorageVault, in gigabytes
  /// (GB).
  final pulumi.Input<int?>? availableSizeGbs;
  /// The total storage allocation for the ExascaleDbStorageVault, in gigabytes
  /// (GB).
  final pulumi.Input<int> totalSizeGbs;

  /// Creates a new [ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails].
  /// [availableSizeGbs] (Output)
  /// [totalSizeGbs] The total storage allocation for the ExascaleDbStorageVault, in gigabytes
  const ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails({
    this.availableSizeGbs,
    required this.totalSizeGbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSizeGbs': ?availableSizeGbs,
      'totalSizeGbs': totalSizeGbs,
    };
  }

  factory ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails.fromMap(Map<String, dynamic> map) {
    return ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails(
      availableSizeGbs: (() { final guardedValue = map['availableSizeGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      totalSizeGbs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalSizeGbs'])),
    );
  }
}
