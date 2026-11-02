// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage {
  /// Available capacity in gigabytes.
  final pulumi.Input<int> availableSizeInGb;
  /// Total capacity in gigabytes.
  final pulumi.Input<int> totalSizeInGb;

  /// Creates a new [GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage].
  /// [availableSizeInGb] Available capacity in gigabytes.
  /// [totalSizeInGb] Total capacity in gigabytes.
  const GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage({
    required this.availableSizeInGb,
    required this.totalSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSizeInGb': availableSizeInGb,
      'totalSizeInGb': totalSizeInGb,
    };
  }

  factory GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage.fromMap(Map<String, dynamic> map) {
    return GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage(
      availableSizeInGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['availableSizeInGb'])),
      totalSizeInGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalSizeInGb'])),
    );
  }
}
