// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_destination_config_bigquery_destination_config.dart';
import 'stream_destination_config_gcs_destination_config.dart';

class StreamDestinationConfig {
  /// A configuration for how data should be loaded to Google BigQuery.
  /// Structure is documented below.
  final pulumi.Input<StreamDestinationConfigBigqueryDestinationConfig>? bigqueryDestinationConfig;
  /// Destination connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}
  final pulumi.Input<String> destinationConnectionProfile;
  /// A configuration for how data should be loaded to Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<StreamDestinationConfigGcsDestinationConfig>? gcsDestinationConfig;

  /// Creates a new [StreamDestinationConfig].
  /// [bigqueryDestinationConfig] A configuration for how data should be loaded to Google BigQuery.
  /// [destinationConnectionProfile] Destination connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}
  /// [gcsDestinationConfig] A configuration for how data should be loaded to Cloud Storage.
  const StreamDestinationConfig({
    this.bigqueryDestinationConfig,
    required this.destinationConnectionProfile,
    this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestinationConfig': ?pulumi.Input.mapOptionalInputValue<StreamDestinationConfigBigqueryDestinationConfig, Map<String, dynamic>>(bigqueryDestinationConfig, (value) => value.toMap()),
      'destinationConnectionProfile': destinationConnectionProfile,
      'gcsDestinationConfig': ?pulumi.Input.mapOptionalInputValue<StreamDestinationConfigGcsDestinationConfig, Map<String, dynamic>>(gcsDestinationConfig, (value) => value.toMap()),
    };
  }

  factory StreamDestinationConfig.fromMap(Map<String, dynamic> map) {
    return StreamDestinationConfig(
      bigqueryDestinationConfig: (() { final guardedValue = map['bigqueryDestinationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamDestinationConfigBigqueryDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationConnectionProfile: pulumi.Input.fromValue(map['destinationConnectionProfile'] as String),
      gcsDestinationConfig: (() { final guardedValue = map['gcsDestinationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamDestinationConfigGcsDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
