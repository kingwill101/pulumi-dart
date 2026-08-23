// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceFeatureStore {
  /// The version of Spark runtime.
  final pulumi.Input<String>? computerSparkRuntimeVersion;
  /// The name of offline store connection.
  final pulumi.Input<String>? offlineConnectionName;
  /// The name of online store connection.
  ///
  /// &gt; **Note:** `featureStore` must be set when`kind` is `FeatureStore`
  final pulumi.Input<String>? onlineConnectionName;

  /// Creates a new [WorkspaceFeatureStore].
  /// [computerSparkRuntimeVersion] The version of Spark runtime.
  /// [offlineConnectionName] The name of offline store connection.
  /// [onlineConnectionName] The name of online store connection.
  const WorkspaceFeatureStore({
    this.computerSparkRuntimeVersion,
    this.offlineConnectionName,
    this.onlineConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerSparkRuntimeVersion': ?computerSparkRuntimeVersion,
      'offlineConnectionName': ?offlineConnectionName,
      'onlineConnectionName': ?onlineConnectionName,
    };
  }

  factory WorkspaceFeatureStore.fromMap(Map<String, dynamic> map) {
    return WorkspaceFeatureStore(
      computerSparkRuntimeVersion: (() { final guardedValue = map['computerSparkRuntimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offlineConnectionName: (() { final guardedValue = map['offlineConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlineConnectionName: (() { final guardedValue = map['onlineConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
