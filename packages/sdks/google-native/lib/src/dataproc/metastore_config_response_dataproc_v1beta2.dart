// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a Metastore configuration.
class MetastoreConfigResponseDataprocV1beta2 {
  /// Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  final pulumi.Input<String> dataprocMetastoreService;

  /// Creates a new [MetastoreConfigResponseDataprocV1beta2].
  /// [dataprocMetastoreService] Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  MetastoreConfigResponseDataprocV1beta2({
    required this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocMetastoreService': dataprocMetastoreService,
    };
  }

  factory MetastoreConfigResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return MetastoreConfigResponseDataprocV1beta2(
      dataprocMetastoreService: pulumi.Input.fromValue(map['dataprocMetastoreService'] as String),
    );
  }
}

