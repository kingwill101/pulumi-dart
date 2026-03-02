// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'end_point.dart';

/// Contact Profile Link Channel.
class ContactProfileLinkChannel {
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
  final pulumi.Input<EndPoint> endPoint;
  /// Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
  final pulumi.Input<String>? modulationConfiguration;
  /// Channel name.
  final pulumi.Input<String> name;

  /// Creates a new [ContactProfileLinkChannel].
  /// [bandwidthMHz] Bandwidth in MHz.
  /// [centerFrequencyMHz] Center Frequency in MHz.
  /// [decodingConfiguration] Currently unused.
  /// [demodulationConfiguration] Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream.
  /// [encodingConfiguration] Currently unused.
  /// [endPoint] Customer end point to store and retrieve data during a contact with the spacecraft.
  /// [modulationConfiguration] Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
  /// [name] Channel name.
  ContactProfileLinkChannel({
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
      'endPoint': pulumi.Input.mapInputValue<EndPoint, Map<String, dynamic>>(endPoint, (value) => value.toMap()),
      'modulationConfiguration': ?modulationConfiguration,
      'name': name,
    };
  }

  factory ContactProfileLinkChannel.fromMap(Map<String, dynamic> map) {
    return ContactProfileLinkChannel(
      bandwidthMHz: (map['bandwidthMHz'] as double).input(),
      centerFrequencyMHz: (map['centerFrequencyMHz'] as double).input(),
      decodingConfiguration: map['decodingConfiguration'] == null ? null : (map['decodingConfiguration'] as String).input(),
      demodulationConfiguration: map['demodulationConfiguration'] == null ? null : (map['demodulationConfiguration'] as String).input(),
      encodingConfiguration: map['encodingConfiguration'] == null ? null : (map['encodingConfiguration'] as String).input(),
      endPoint: (EndPoint.fromMap((map['endPoint'] as Map).cast<String, dynamic>())).input(),
      modulationConfiguration: map['modulationConfiguration'] == null ? null : (map['modulationConfiguration'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

