// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseInstanceLatestRecoveryTime.
class GetDatabaseInstanceLatestRecoveryTimeResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The name of the instance.
  final String? instance;
  /// Timestamp, identifies the latest recovery time of the source instance.
  final String? latestRecoveryTime;
  /// The ID of the project in which the resource belongs.
  final String? project;
  final String? sourceInstanceDeletionTime;

  /// Creates a new [GetDatabaseInstanceLatestRecoveryTimeResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] The name of the instance.
  /// [latestRecoveryTime] Timestamp, identifies the latest recovery time of the source instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceInstanceDeletionTime] Optional.
  const GetDatabaseInstanceLatestRecoveryTimeResult({
    this.id,
    this.instance,
    this.latestRecoveryTime,
    this.project,
    this.sourceInstanceDeletionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'instance': ?instance,
      'latestRecoveryTime': ?latestRecoveryTime,
      'project': ?project,
      'sourceInstanceDeletionTime': ?sourceInstanceDeletionTime,
    };
  }

  factory GetDatabaseInstanceLatestRecoveryTimeResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceLatestRecoveryTimeResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestRecoveryTime: (() { final guardedValue = map['latestRecoveryTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceInstanceDeletionTime: (() { final guardedValue = map['sourceInstanceDeletionTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
