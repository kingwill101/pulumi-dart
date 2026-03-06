// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_big_query_connection_spec_response.dart';

/// Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type. Only one of internal specs can be set at the time, and cannot be changed later.
class GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse {
  /// Fields specific to BigQuery connections.
  final pulumi.Input<GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse> bigqueryConnectionSpec;

  /// Creates a new [GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse].
  /// [bigqueryConnectionSpec] Fields specific to BigQuery connections.
  const GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse({
    required this.bigqueryConnectionSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryConnectionSpec': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse, Map<String, dynamic>>(bigqueryConnectionSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse(
      bigqueryConnectionSpec: pulumi.Input.fromValue(GoogleCloudDatacatalogV1BigQueryConnectionSpecResponse.fromMap((map['bigqueryConnectionSpec']! as Map).cast<String, dynamic>())),
    );
  }
}

