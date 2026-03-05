// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'end_point_response.dart';

/// Contact Profile Link Channel.
class ContactProfileLinkChannelResponse {
  /// Bandwidth in MHz.
  final pulumi.Input<double> bandwidthMHz;
  /// Center Frequency in MHz.
  final pulumi.Input<double> centerFrequencyMHz;
  /// Currently unused.
  final pulumi.Input<String>? decodingConfiguration;
  /// Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream.
  final pulumi.Input<String>? demodulationConfiguration;
  /// Currently unused.
  final pulumi.Input<String>? encodingConfiguration;
  /// Customer end point to store and retrieve data during a contact with the spacecraft.
  final pulumi.Input<EndPointResponse> endPoint;
  /// Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
  final pulumi.Input<String>? modulationConfiguration;
  /// Channel name.
  final pulumi.Input<String> name;

  /// Creates a new [ContactProfileLinkChannelResponse].
  /// [bandwidthMHz] Bandwidth in MHz.
  /// [centerFrequencyMHz] Center Frequency in MHz.
  /// [decodingConfiguration] Currently unused.
  /// [demodulationConfiguration] Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream.
  /// [encodingConfiguration] Currently unused.
  /// [endPoint] Customer end point to store and retrieve data during a contact with the spacecraft.
  /// [modulationConfiguration] Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
  /// [name] Channel name.
  ContactProfileLinkChannelResponse({
    required this.bandwidthMHz,
    required this.centerFrequencyMHz,
    this.decodingConfiguration,
    this.demodulationConfiguration,
    this.encodingConfiguration,
    required this.endPoint,
    this.modulationConfiguration,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthMHz': bandwidthMHz,
      'centerFrequencyMHz': centerFrequencyMHz,
      'decodingConfiguration': ?decodingConfiguration,
      'demodulationConfiguration': ?demodulationConfiguration,
      'encodingConfiguration': ?encodingConfiguration,
      'endPoint': pulumi.Input.mapInputValue<EndPointResponse, Map<String, dynamic>>(endPoint, (value) => value.toMap()),
      'modulationConfiguration': ?modulationConfiguration,
      'name': name,
    };
  }

  factory ContactProfileLinkChannelResponse.fromMap(Map<String, dynamic> map) {
    return ContactProfileLinkChannelResponse(
      bandwidthMHz: pulumi.Input.fromValue(map['bandwidthMHz'] as double),
      centerFrequencyMHz: pulumi.Input.fromValue(map['centerFrequencyMHz'] as double),
      decodingConfiguration: (() { final guardedValue = map['decodingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      demodulationConfiguration: (() { final guardedValue = map['demodulationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodingConfiguration: (() { final guardedValue = map['encodingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endPoint: pulumi.Input.fromValue(EndPointResponse.fromMap((map['endPoint']! as Map).cast<String, dynamic>())),
      modulationConfiguration: (() { final guardedValue = map['modulationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

