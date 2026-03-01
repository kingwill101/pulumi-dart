// ignore_for_file: unused_element, unnecessary_cast


/// Properties pertaining to the Nfs3Target
class Nfs3TargetResponse {
  /// IP address or host name of an NFSv3 host (e.g., 10.0.44.44).
  final String? target;
  /// Identifies the StorageCache usage model to be used for this storage target.
  final String? usageModel;
  /// Amount of time (in seconds) the cache waits before it checks the back-end storage for file updates.
  final int? verificationTimer;
  /// Amount of time (in seconds) the cache waits after the last file change before it copies the changed file to back-end storage.
  final int? writeBackTimer;

  /// Creates a new [Nfs3TargetResponse].
  /// [target] IP address or host name of an NFSv3 host (e.g., 10.0.44.44).
  /// [usageModel] Identifies the StorageCache usage model to be used for this storage target.
  /// [verificationTimer] Amount of time (in seconds) the cache waits before it checks the back-end storage for file updates.
  /// [writeBackTimer] Amount of time (in seconds) the cache waits after the last file change before it copies the changed file to back-end storage.
  Nfs3TargetResponse({
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
      target: map['target'] == null ? null : map['target'] as String,
      usageModel: map['usageModel'] == null ? null : map['usageModel'] as String,
      verificationTimer: map['verificationTimer'] == null ? null : map['verificationTimer'] as int,
      writeBackTimer: map['writeBackTimer'] == null ? null : map['writeBackTimer'] as int,
    );
  }
}

