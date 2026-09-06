// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties pertaining to the BlobNfsTarget.
class BlobNfsTargetResponse {
  /// Resource ID of the storage container.
  final pulumi.Input<String?>? target;
  /// Identifies the StorageCache usage model to be used for this storage target.
  final pulumi.Input<String?>? usageModel;
  /// Amount of time (in seconds) the cache waits before it checks the back-end storage for file updates.
  final pulumi.Input<int?>? verificationTimer;
  /// Amount of time (in seconds) the cache waits after the last file change before it copies the changed file to back-end storage.
  final pulumi.Input<int?>? writeBackTimer;

  /// Creates a new [BlobNfsTargetResponse].
  /// [target] Resource ID of the storage container.
  /// [usageModel] Identifies the StorageCache usage model to be used for this storage target.
  /// [verificationTimer] Amount of time (in seconds) the cache waits before it checks the back-end storage for file updates.
  /// [writeBackTimer] Amount of time (in seconds) the cache waits after the last file change before it copies the changed file to back-end storage.
  const BlobNfsTargetResponse({
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

  factory BlobNfsTargetResponse.fromMap(Map<String, dynamic> map) {
    return BlobNfsTargetResponse(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageModel: (() { final guardedValue = map['usageModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verificationTimer: (() { final guardedValue = map['verificationTimer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      writeBackTimer: (() { final guardedValue = map['writeBackTimer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
