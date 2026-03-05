// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatedVMUnmanagedDisk {
  /// Id of disk that should be replicated. Changing this forces a new resource to be created.
  final pulumi.Input<String> diskUri;
  /// Storage account that should be used for caching. Changing this forces a new resource to be created.
  final pulumi.Input<String> stagingStorageAccountId;
  /// Storage account disk should belong to when a failover is done. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetStorageAccountId;

  /// Creates a new [ReplicatedVMUnmanagedDisk].
  /// [diskUri] Id of disk that should be replicated. Changing this forces a new resource to be created.
  /// [stagingStorageAccountId] Storage account that should be used for caching. Changing this forces a new resource to be created.
  /// [targetStorageAccountId] Storage account disk should belong to when a failover is done. Changing this forces a new resource to be created.
  ReplicatedVMUnmanagedDisk({
    required this.diskUri,
    required this.stagingStorageAccountId,
    required this.targetStorageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskUri': diskUri,
      'stagingStorageAccountId': stagingStorageAccountId,
      'targetStorageAccountId': targetStorageAccountId,
    };
  }

  factory ReplicatedVMUnmanagedDisk.fromMap(Map<String, dynamic> map) {
    return ReplicatedVMUnmanagedDisk(
      diskUri: pulumi.Input.fromValue(map['diskUri'] as String),
      stagingStorageAccountId: pulumi.Input.fromValue(map['stagingStorageAccountId'] as String),
      targetStorageAccountId: pulumi.Input.fromValue(map['targetStorageAccountId'] as String),
    );
  }
}

