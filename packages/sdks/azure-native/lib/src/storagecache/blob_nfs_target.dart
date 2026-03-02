// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties pertaining to the BlobNfsTarget.
class BlobNfsTarget {
  /// Resource ID of the storage container.
  final pulumi.Input<String>? target;
  /// Identifies the StorageCache usage model to be used for this storage target.
  final pulumi.Input<String>? usageModel;
  /// Amount of time (in seconds) the cache waits before it checks the back-end storage for file updates.
  final pulumi.Input<int>? verificationTimer;
  /// Amount of time (in seconds) the cache waits after the last file change before it copies the changed file to back-end storage.
  final pulumi.Input<int>? writeBackTimer;

  /// Creates a new [BlobNfsTarget].
  /// [target] Resource ID of the storage container.
  /// [usageModel] Identifies the StorageCache usage model to be used for this storage target.
  /// [verificationTimer] Amount of time (in seconds) the cache waits before it checks the back-end storage for file updates.
  /// [writeBackTimer] Amount of time (in seconds) the cache waits after the last file change before it copies the changed file to back-end storage.
  BlobNfsTarget({
    this.target,
    this.usageModel,
    this.verificationTimer,
    this.writeBackTimer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'usageModel': ?usageModel,
      'verificationTimer': ?verificationTimer,
      'writeBackTimer': ?writeBackTimer,
    };
  }

  factory BlobNfsTarget.fromMap(Map<String, dynamic> map) {
    return BlobNfsTarget(
      target: map['target'] == null ? null : (map['target']! as String).input(),
      usageModel: map['usageModel'] == null ? null : (map['usageModel']! as String).input(),
      verificationTimer: map['verificationTimer'] == null ? null : (map['verificationTimer']! as int).input(),
      writeBackTimer: map['writeBackTimer'] == null ? null : (map['writeBackTimer']! as int).input(),
    );
  }
}

