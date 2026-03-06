// ignore_for_file: unused_element, unnecessary_cast

import 'output_config_response.dart';

/// Result data returned by getTraceSink.
class GetTraceSinkResult {
  /// The canonical sink resource name, unique within the project. Must be of the form: projects/[PROJECT_NUMBER]/traceSinks/[SINK_ID]. E.g.: `"projects/12345/traceSinks/my-project-trace-sink"`. Sink identifiers are limited to 256 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods.
  final String name;
  /// The export destination.
  final OutputConfigResponse outputConfig;
  /// A service account name for exporting the data. This field is set by sinks.create and sinks.update. The service account will need to be granted write access to the destination specified in the output configuration, see [Granting access for a resource](/iam/docs/granting-roles-to-service-accounts#granting_access_to_a_service_account_for_a_resource). To create tables and to write data, this account needs the `dataEditor` role. Read more about roles in the [BigQuery documentation](https://cloud.google.com/bigquery/docs/access-control). E.g.: "service-00000001@00000002.iam.gserviceaccount.com"
  final String writerIdentity;

  /// Creates a new [GetTraceSinkResult].
  /// [name] The canonical sink resource name, unique within the project. Must be of the form: projects/[PROJECT_NUMBER]/traceSinks/[SINK_ID]. E.g.: `"projects/12345/traceSinks/my-project-trace-sink"`. Sink identifiers are limited to 256 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods.
  /// [outputConfig] The export destination.
  /// [writerIdentity] A service account name for exporting the data. This field is set by sinks.create and sinks.update. The service account will need to be granted write access to the destination specified in the output configuration, see [Granting access for a resource](/iam/docs/granting-roles-to-service-accounts#granting_access_to_a_service_account_for_a_resource). To create tables and to write data, this account needs the `dataEditor` role. Read more about roles in the [BigQuery documentation](https://cloud.google.com/bigquery/docs/access-control). E.g.: "service-00000001@00000002.iam.gserviceaccount.com"
  const GetTraceSinkResult({
    required this.name,
    required this.outputConfig,
    required this.writerIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'outputConfig': outputConfig.toMap(),
      'writerIdentity': writerIdentity,
    };
  }

  factory GetTraceSinkResult.fromMap(Map<String, dynamic> map) {
    return GetTraceSinkResult(
      name: map['name'] as String,
      outputConfig: OutputConfigResponse.fromMap((map['outputConfig']! as Map).cast<String, dynamic>()),
      writerIdentity: map['writerIdentity'] as String,
    );
  }
}

