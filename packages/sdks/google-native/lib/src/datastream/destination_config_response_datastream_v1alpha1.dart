// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcs_destination_config_response_datastream_v1alpha1.dart';

/// The configuration of the stream destination.
class DestinationConfigResponseDatastreamV1alpha1 {
  /// Destination connection profile identifier.
  final pulumi.Input<String> destinationConnectionProfileName;
  /// GCS destination configuration.
  final pulumi.Input<GcsDestinationConfigResponseDatastreamV1alpha1> gcsDestinationConfig;

  /// Creates a new [DestinationConfigResponseDatastreamV1alpha1].
  /// [destinationConnectionProfileName] Destination connection profile identifier.
  /// [gcsDestinationConfig] GCS destination configuration.
  DestinationConfigResponseDatastreamV1alpha1({
    required this.destinationConnectionProfileName,
    required this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationConnectionProfileName': destinationConnectionProfileName,
      'gcsDestinationConfig': pulumi.Input.mapInputValue<GcsDestinationConfigResponseDatastreamV1alpha1, Map<String, dynamic>>(gcsDestinationConfig, (value) => value.toMap()),
    };
  }

  factory DestinationConfigResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return DestinationConfigResponseDatastreamV1alpha1(
      destinationConnectionProfileName: (map['destinationConnectionProfileName'] as String).input(),
      gcsDestinationConfig: (GcsDestinationConfigResponseDatastreamV1alpha1.fromMap((map['gcsDestinationConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

