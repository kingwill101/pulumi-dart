// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_destination_config_response.dart';
import 'gcs_destination_config_response.dart';

/// The configuration of the stream destination.
class DestinationConfigResponse {
  /// BigQuery destination configuration.
  final pulumi.Input<BigQueryDestinationConfigResponse> bigqueryDestinationConfig;
  /// Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final pulumi.Input<String> destinationConnectionProfile;
  /// A configuration for how data should be loaded to Cloud Storage.
  final pulumi.Input<GcsDestinationConfigResponse> gcsDestinationConfig;

  /// Creates a new [DestinationConfigResponse].
  /// [bigqueryDestinationConfig] BigQuery destination configuration.
  /// [destinationConnectionProfile] Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  /// [gcsDestinationConfig] A configuration for how data should be loaded to Cloud Storage.
  const DestinationConfigResponse({
    required this.bigqueryDestinationConfig,
    required this.destinationConnectionProfile,
    required this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestinationConfig': pulumi.Input.mapInputValue<BigQueryDestinationConfigResponse, Map<String, dynamic>>(bigqueryDestinationConfig, (value) => value.toMap()),
      'destinationConnectionProfile': destinationConnectionProfile,
      'gcsDestinationConfig': pulumi.Input.mapInputValue<GcsDestinationConfigResponse, Map<String, dynamic>>(gcsDestinationConfig, (value) => value.toMap()),
    };
  }

  factory DestinationConfigResponse.fromMap(Map<String, dynamic> map) {
    return DestinationConfigResponse(
      bigqueryDestinationConfig: pulumi.Input.fromValue(BigQueryDestinationConfigResponse.fromMap((map['bigqueryDestinationConfig']! as Map).cast<String, dynamic>())),
      destinationConnectionProfile: pulumi.Input.fromValue(map['destinationConnectionProfile'] as String),
      gcsDestinationConfig: pulumi.Input.fromValue(GcsDestinationConfigResponse.fromMap((map['gcsDestinationConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
