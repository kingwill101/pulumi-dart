// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig {
  /// Required. Resource name of an existing Dataproc Metastore service. Example: * `projects/`
  final pulumi.Input<String> dataprocMetastoreService;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig].
  /// [dataprocMetastoreService] Required. Resource name of an existing Dataproc Metastore service. Example: * `projects/`
  const WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig({
    required this.dataprocMetastoreService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataprocMetastoreService': dataprocMetastoreService,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig(
      dataprocMetastoreService: pulumi.Input.fromValue(map['dataprocMetastoreService'] as String),
    );
  }
}
