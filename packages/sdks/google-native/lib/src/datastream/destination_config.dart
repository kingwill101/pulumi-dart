// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_destination_config.dart';
import 'gcs_destination_config.dart';

/// The configuration of the stream destination.
class DestinationConfig {
  /// BigQuery destination configuration.
  final pulumi.Input<BigQueryDestinationConfig>? bigqueryDestinationConfig;

  /// Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final pulumi.Input<String> destinationConnectionProfile;

  /// A configuration for how data should be loaded to Cloud Storage.
  final pulumi.Input<GcsDestinationConfig>? gcsDestinationConfig;

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
      'bigqueryDestinationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BigQueryDestinationConfig,
            Map<String, dynamic>
          >(bigqueryDestinationConfig, (value) => value.toMap()),
      'destinationConnectionProfile': destinationConnectionProfile,
      'gcsDestinationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GcsDestinationConfig,
            Map<String, dynamic>
          >(gcsDestinationConfig, (value) => value.toMap()),
    };
  }

  factory DestinationConfig.fromMap(Map<String, dynamic> map) {
    return DestinationConfig(
      bigqueryDestinationConfig: (() {
        final guardedValue = map['bigqueryDestinationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BigQueryDestinationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      destinationConnectionProfile: pulumi.Input.fromValue(
        map['destinationConnectionProfile'] as String,
      ),
      gcsDestinationConfig: (() {
        final guardedValue = map['gcsDestinationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GcsDestinationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
