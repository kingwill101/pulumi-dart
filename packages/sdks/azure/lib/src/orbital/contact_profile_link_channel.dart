// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_profile_link_channel_end_point.dart';

class ContactProfileLinkChannel {
  /// Bandwidth in MHz.
  final pulumi.Input<double> bandwidthMhz;
  /// Center frequency in MHz.
  final pulumi.Input<double> centerFrequencyMhz;
  /// Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream.
  final pulumi.Input<String>? demodulationConfiguration;
  /// Customer End point to store/retrieve data during a contact. An `end_point` block as defined below.
  final pulumi.Input<List<ContactProfileLinkChannelEndPoint>> endPoints;
  /// Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
  final pulumi.Input<String>? modulationConfiguration;
  /// Name of the channel.
  final pulumi.Input<String> name;

  /// Creates a new [ContactProfileLinkChannel].
  /// [bandwidthMhz] Bandwidth in MHz.
  /// [centerFrequencyMhz] Center frequency in MHz.
  /// [demodulationConfiguration] Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream.
  /// [endPoints] Customer End point to store/retrieve data during a contact. An `end_point` block as defined below.
  /// [modulationConfiguration] Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
  /// [name] Name of the channel.
  ContactProfileLinkChannel({
    required this.bandwidthMhz,
    required this.centerFrequencyMhz,
    this.demodulationConfiguration,
    required this.endPoints,
    this.modulationConfiguration,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthMhz': bandwidthMhz,
      'centerFrequencyMhz': centerFrequencyMhz,
      'demodulationConfiguration': ?demodulationConfiguration,
      'endPoints': pulumi.Input.mapInputValue<List<ContactProfileLinkChannelEndPoint>, List<Map<String, dynamic>>>(endPoints, (value) => pulumi.Input.encodeList<ContactProfileLinkChannelEndPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modulationConfiguration': ?modulationConfiguration,
      'name': name,
    };
  }

  factory ContactProfileLinkChannel.fromMap(Map<String, dynamic> map) {
    return ContactProfileLinkChannel(
      bandwidthMhz: (map['bandwidthMhz'] as double).input(),
      centerFrequencyMhz: (map['centerFrequencyMhz'] as double).input(),
      demodulationConfiguration: map['demodulationConfiguration'] == null ? null : (map['demodulationConfiguration'] as String).input(),
      endPoints: (pulumi.Input.decodeList<ContactProfileLinkChannelEndPoint>(map['endPoints'], (value) => ContactProfileLinkChannelEndPoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      modulationConfiguration: map['modulationConfiguration'] == null ? null : (map['modulationConfiguration'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

