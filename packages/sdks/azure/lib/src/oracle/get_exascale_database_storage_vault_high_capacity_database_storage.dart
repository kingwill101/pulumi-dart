// ignore_for_file: unused_element, unnecessary_cast


class GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage {
  /// Available capacity in gigabytes.
  final int availableSizeInGb;
  /// Total capacity in gigabytes.
  final int totalSizeInGb;

  /// Creates a new [GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage].
  /// [availableSizeInGb] Available capacity in gigabytes.
  /// [totalSizeInGb] Total capacity in gigabytes.
  GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage({
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
      availableSizeInGb: map['availableSizeInGb'] as int,
      totalSizeInGb: map['totalSizeInGb'] as int,
    );
  }
}

