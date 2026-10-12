// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExascaleDbStorageVaultsExascaleDbStorageVaultPropertyExascaleDbStorageDetail {
  /// The available storage capacity for the ExascaleDbStorageVault, in gigabytes
  /// (GB).
  final pulumi.Input<int> availableSizeGbs;
  /// The total storage allocation for the ExascaleDbStorageVault, in gigabytes
  /// (GB).
  final pulumi.Input<int> totalSizeGbs;

  /// Creates a new [GetExascaleDbStorageVaultsExascaleDbStorageVaultPropertyExascaleDbStorageDetail].
  /// [availableSizeGbs] The available storage capacity for the ExascaleDbStorageVault, in gigabytes
  /// [totalSizeGbs] The total storage allocation for the ExascaleDbStorageVault, in gigabytes
  const GetExascaleDbStorageVaultsExascaleDbStorageVaultPropertyExascaleDbStorageDetail({
    required this.availableSizeGbs,
    required this.totalSizeGbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSizeGbs': availableSizeGbs,
      'totalSizeGbs': totalSizeGbs,
    };
  }

  factory GetExascaleDbStorageVaultsExascaleDbStorageVaultPropertyExascaleDbStorageDetail.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultsExascaleDbStorageVaultPropertyExascaleDbStorageDetail(
      availableSizeGbs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['availableSizeGbs'])),
      totalSizeGbs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalSizeGbs'])),
    );
  }
}
