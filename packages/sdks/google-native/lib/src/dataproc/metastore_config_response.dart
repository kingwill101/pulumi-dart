// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a Metastore configuration.
class MetastoreConfigResponse {
  /// Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  final pulumi.Input<String> dataprocMetastoreService;

  /// Creates a new [MetastoreConfigResponse].
  /// [dataprocMetastoreService] Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[dataproc_region]/services/[service-name]
  const MetastoreConfigResponse({
    required this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocMetastoreService': dataprocMetastoreService,
    };
  }

  factory MetastoreConfigResponse.fromMap(Map<String, dynamic> map) {
    return MetastoreConfigResponse(
      dataprocMetastoreService: pulumi.Input.fromValue(map['dataprocMetastoreService'] as String),
    );
  }
}

