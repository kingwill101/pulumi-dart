// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_spark_metastore_service_config.dart';
import 'connection_spark_spark_history_server_config.dart';

class ConnectionSpark {
  /// Dataproc Metastore Service configuration for the connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionSparkMetastoreServiceConfig>? metastoreServiceConfig;
  /// (Output)
  /// The account ID of the service created for the purpose of this connection.
  final pulumi.Input<String>? serviceAccountId;
  /// Spark History Server configuration for the connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionSparkSparkHistoryServerConfig>? sparkHistoryServerConfig;

  /// Creates a new [ConnectionSpark].
  /// [metastoreServiceConfig] Dataproc Metastore Service configuration for the connection.
  /// [serviceAccountId] (Output)
  /// [sparkHistoryServerConfig] Spark History Server configuration for the connection.
  ConnectionSpark({
    this.metastoreServiceConfig,
    this.serviceAccountId,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreServiceConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionSparkMetastoreServiceConfig, Map<String, dynamic>>(metastoreServiceConfig, (value) => value.toMap()),
      'serviceAccountId': ?serviceAccountId,
      'sparkHistoryServerConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionSparkSparkHistoryServerConfig, Map<String, dynamic>>(sparkHistoryServerConfig, (value) => value.toMap()),
    };
  }

  factory ConnectionSpark.fromMap(Map<String, dynamic> map) {
    return ConnectionSpark(
      metastoreServiceConfig: (() { final guardedValue = map['metastoreServiceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionSparkMetastoreServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkHistoryServerConfig: (() { final guardedValue = map['sparkHistoryServerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionSparkSparkHistoryServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

