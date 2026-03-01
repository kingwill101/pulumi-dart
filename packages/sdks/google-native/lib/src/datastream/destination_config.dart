// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_destination_config.dart';
import 'gcs_destination_config.dart';

/// The configuration of the stream destination.
class DestinationConfig {
  /// BigQuery destination configuration.
  final BigQueryDestinationConfig? bigqueryDestinationConfig;
  /// Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final String destinationConnectionProfile;
  /// A configuration for how data should be loaded to Cloud Storage.
  final GcsDestinationConfig? gcsDestinationConfig;

  /// Creates a new [DestinationConfig].
  /// [bigqueryDestinationConfig] BigQuery destination configuration.
  /// [destinationConnectionProfile] Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  /// [gcsDestinationConfig] A configuration for how data should be loaded to Cloud Storage.
  DestinationConfig({
    this.bigqueryDestinationConfig,
    required this.destinationConnectionProfile,
    this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestinationConfig': ?bigqueryDestinationConfig == null ? null : bigqueryDestinationConfig!.toMap(),
      'destinationConnectionProfile': destinationConnectionProfile,
      'gcsDestinationConfig': ?gcsDestinationConfig == null ? null : gcsDestinationConfig!.toMap(),
    };
  }

  factory DestinationConfig.fromMap(Map<String, dynamic> map) {
    return DestinationConfig(
      bigqueryDestinationConfig: map['bigqueryDestinationConfig'] == null ? null : BigQueryDestinationConfig.fromMap((map['bigqueryDestinationConfig'] as Map).cast<String, dynamic>()),
      destinationConnectionProfile: map['destinationConnectionProfile'] as String,
      gcsDestinationConfig: map['gcsDestinationConfig'] == null ? null : GcsDestinationConfig.fromMap((map['gcsDestinationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

