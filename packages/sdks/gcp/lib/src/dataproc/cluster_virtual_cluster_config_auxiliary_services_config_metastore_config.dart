// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig {
  /// Resource name of an existing Dataproc Metastore service.
  final pulumi.Input<String>? dataprocMetastoreService;

  /// Creates a new [ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig].
  /// [dataprocMetastoreService] Resource name of an existing Dataproc Metastore service.
  ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig({
    this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocMetastoreService': ?dataprocMetastoreService,
    };
  }

  factory ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig(
      dataprocMetastoreService: (() {
        final guardedValue = map['dataprocMetastoreService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
