// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSparkMetastoreServiceConfig {
  /// Resource name of an existing Dataproc Metastore service in the form of projects/[projectId]/locations/[region]/services/[serviceId].
  final pulumi.Input<String>? metastoreService;

  /// Creates a new [ConnectionSparkMetastoreServiceConfig].
  /// [metastoreService] Resource name of an existing Dataproc Metastore service in the form of projects/[projectId]/locations/[region]/services/[serviceId].
  ConnectionSparkMetastoreServiceConfig({
    this.metastoreService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreService': ?metastoreService,
    };
  }

  factory ConnectionSparkMetastoreServiceConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionSparkMetastoreServiceConfig(
      metastoreService: (() { final guardedValue = map['metastoreService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

