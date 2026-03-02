// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountStorage {
  /// The ID of the storage account to be associated with the Video Indexer Account. Changing this forces a new Video Indexer Account to be created.
  final pulumi.Input<String> storageAccountId;
  /// The reference to the user assigned identity to use to access the Storage Account.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [AccountStorage].
  /// [storageAccountId] The ID of the storage account to be associated with the Video Indexer Account. Changing this forces a new Video Indexer Account to be created.
  /// [userAssignedIdentityId] The reference to the user assigned identity to use to access the Storage Account.
  AccountStorage({
    required this.storageAccountId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountId': storageAccountId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory AccountStorage.fromMap(Map<String, dynamic> map) {
    return AccountStorage(
      storageAccountId: (map['storageAccountId'] as String).input(),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : (map['userAssignedIdentityId']! as String).input(),
    );
  }
}

