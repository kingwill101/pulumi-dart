// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a set of Cloud SQL instances. Each one will be available under /cloudsql/[instance]. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
class GoogleCloudRunV2CloudSqlInstanceResponse {
  /// The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  final pulumi.Input<List<String>> instances;

  /// Creates a new [GoogleCloudRunV2CloudSqlInstanceResponse].
  /// [instances] The Cloud SQL instance connection names, as can be found in https://console.cloud.google.com/sql/instances. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run. Format: {project}:{location}:{instance}
  GoogleCloudRunV2CloudSqlInstanceResponse({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': instances,
    };
  }

  factory GoogleCloudRunV2CloudSqlInstanceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2CloudSqlInstanceResponse(
      instances: ((map['instances'] as List).cast<String>()).input(),
    );
  }
}

