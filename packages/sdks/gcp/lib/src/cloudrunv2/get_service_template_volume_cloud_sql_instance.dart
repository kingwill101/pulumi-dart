// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTemplateVolumeCloudSqlInstance {
  /// The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  final List<String> instances;

  /// Creates a new [GetServiceTemplateVolumeCloudSqlInstance].
  /// [instances] The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  GetServiceTemplateVolumeCloudSqlInstance({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': instances,
    };
  }

  factory GetServiceTemplateVolumeCloudSqlInstance.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolumeCloudSqlInstance(
      instances: (map['instances'] as List).cast<String>(),
    );
  }
}

