// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties pertaining to the Nfs3Target
class Nfs3TargetResponse {
  /// IP address or host name of an NFSv3 host (e.g., 10.0.44.44).
  final pulumi.Input<String>? target;
  /// Identifies the StorageCache usage model to be used for this storage target.
  final pulumi.Input<String>? usageModel;
  /// Amount of time (in seconds) the cache waits before it checks the back-end storage for file updates.
  final pulumi.Input<int>? verificationTimer;
  /// Amount of time (in seconds) the cache waits after the last file change before it copies the changed file to back-end storage.
  final pulumi.Input<int>? writeBackTimer;

  /// Creates a new [Nfs3TargetResponse].
  /// [target] IP address or host name of an NFSv3 host (e.g., 10.0.44.44).
  /// [usageModel] Identifies the StorageCache usage model to be used for this storage target.
  /// [verificationTimer] Amount of time (in seconds) the cache waits before it checks the back-end storage for file updates.
  /// [writeBackTimer] Amount of time (in seconds) the cache waits after the last file change before it copies the changed file to back-end storage.
  const Nfs3TargetResponse({
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

  factory Nfs3TargetResponse.fromMap(Map<String, dynamic> map) {
    return Nfs3TargetResponse(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageModel: (() { final guardedValue = map['usageModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verificationTimer: (() { final guardedValue = map['verificationTimer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      writeBackTimer: (() { final guardedValue = map['writeBackTimer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

