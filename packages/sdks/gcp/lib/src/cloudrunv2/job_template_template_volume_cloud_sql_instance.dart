// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateTemplateVolumeCloudSqlInstance {
  /// The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  final pulumi.Input<List<String>>? instances;

  /// Creates a new [JobTemplateTemplateVolumeCloudSqlInstance].
  /// [instances] The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  JobTemplateTemplateVolumeCloudSqlInstance({
    this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': ?instances,
    };
  }

  factory JobTemplateTemplateVolumeCloudSqlInstance.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateVolumeCloudSqlInstance(
      instances: map['instances'] == null ? null : ((map['instances'] as List).cast<String>()).input(),
    );
  }
}

