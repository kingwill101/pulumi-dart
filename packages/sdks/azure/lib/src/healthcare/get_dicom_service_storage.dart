// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDicomServiceStorage {
  /// The filesystem name of connected storage account.
  final pulumi.Input<String> fileSystemName;
  /// The resource ID of connected storage account.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [GetDicomServiceStorage].
  /// [fileSystemName] The filesystem name of connected storage account.
  /// [storageAccountId] The resource ID of connected storage account.
  GetDicomServiceStorage({
    required this.fileSystemName,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemName': fileSystemName,
      'storageAccountId': storageAccountId,
    };
  }

  factory GetDicomServiceStorage.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceStorage(
      fileSystemName: (map['fileSystemName'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
    );
  }
}

