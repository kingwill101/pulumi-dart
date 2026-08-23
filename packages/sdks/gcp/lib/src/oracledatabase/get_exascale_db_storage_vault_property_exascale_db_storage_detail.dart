// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail {
  /// The available storage capacity for the ExascaleDbStorageVault, in gigabytes
  /// (GB).
  final pulumi.Input<int> availableSizeGbs;
  /// The total storage allocation for the ExascaleDbStorageVault, in gigabytes
  /// (GB).
  final pulumi.Input<int> totalSizeGbs;

  /// Creates a new [GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail].
  /// [availableSizeGbs] The available storage capacity for the ExascaleDbStorageVault, in gigabytes
  /// [totalSizeGbs] The total storage allocation for the ExascaleDbStorageVault, in gigabytes
  const GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail({
    required this.availableSizeGbs,
    required this.totalSizeGbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSizeGbs': availableSizeGbs,
      'totalSizeGbs': totalSizeGbs,
    };
  }

  factory GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultPropertyExascaleDbStorageDetail(
      availableSizeGbs: pulumi.Input.fromValue(map['availableSizeGbs'] as int),
      totalSizeGbs: pulumi.Input.fromValue(map['totalSizeGbs'] as int),
    );
  }
}
