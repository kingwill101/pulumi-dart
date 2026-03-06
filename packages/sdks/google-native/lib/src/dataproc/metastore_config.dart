// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a Metastore configuration.
class MetastoreConfig {
  /// Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  final pulumi.Input<String> dataprocMetastoreService;

  /// Creates a new [MetastoreConfig].
  /// [dataprocMetastoreService] Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  const MetastoreConfig({
    required this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocMetastoreService': dataprocMetastoreService,
    };
  }

  factory MetastoreConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreConfig(
      dataprocMetastoreService: pulumi.Input.fromValue(map['dataprocMetastoreService'] as String),
    );
  }
}

