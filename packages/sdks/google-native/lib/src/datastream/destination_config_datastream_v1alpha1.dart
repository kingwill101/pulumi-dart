// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcs_destination_config_datastream_v1alpha1.dart';

/// The configuration of the stream destination.
class DestinationConfigDatastreamV1alpha1 {
  /// Destination connection profile identifier.
  final pulumi.Input<String> destinationConnectionProfileName;
  /// GCS destination configuration.
  final pulumi.Input<GcsDestinationConfigDatastreamV1alpha1>? gcsDestinationConfig;

  /// Creates a new [DestinationConfigDatastreamV1alpha1].
  /// [destinationConnectionProfileName] Destination connection profile identifier.
  /// [gcsDestinationConfig] GCS destination configuration.
  const DestinationConfigDatastreamV1alpha1({
    required this.destinationConnectionProfileName,
    this.gcsDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationConnectionProfileName': destinationConnectionProfileName,
      'gcsDestinationConfig': ?pulumi.Input.mapOptionalInputValue<GcsDestinationConfigDatastreamV1alpha1, Map<String, dynamic>>(gcsDestinationConfig, (value) => value.toMap()),
    };
  }

  factory DestinationConfigDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return DestinationConfigDatastreamV1alpha1(
      destinationConnectionProfileName: pulumi.Input.fromValue(map['destinationConnectionProfileName'] as String),
      gcsDestinationConfig: (() { final guardedValue = map['gcsDestinationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcsDestinationConfigDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

