// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_profile_link_channel.dart';

/// Contact Profile Link.
class ContactProfileLink {
  /// Contact Profile Link Channel.
  final pulumi.Input<List<ContactProfileLinkChannel>> channels;
  /// Direction (Uplink or Downlink).
  final pulumi.Input<String> direction;
  /// Effective Isotropic Radiated Power (EIRP) in dBW. It is the required EIRP by the customer. Not used yet.
  final pulumi.Input<double>? eirpdBW;
  /// Gain to noise temperature in db/K. It is the required G/T by the customer. Not used yet.
  final pulumi.Input<double>? gainOverTemperature;
  /// Link name.
  final pulumi.Input<String> name;
  /// Polarization. e.g. (RHCP, LHCP).
  final pulumi.Input<String> polarization;

  /// Creates a new [ContactProfileLink].
  /// [channels] Contact Profile Link Channel.
  /// [direction] Direction (Uplink or Downlink).
  /// [eirpdBW] Effective Isotropic Radiated Power (EIRP) in dBW. It is the required EIRP by the customer. Not used yet.
  /// [gainOverTemperature] Gain to noise temperature in db/K. It is the required G/T by the customer. Not used yet.
  /// [name] Link name.
  /// [polarization] Polarization. e.g. (RHCP, LHCP).
  const ContactProfileLink({
    required this.channels,
    required this.direction,
    this.eirpdBW,
    this.gainOverTemperature,
    required this.name,
    required this.polarization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': pulumi.Input.mapInputValue<List<ContactProfileLinkChannel>, List<Map<String, dynamic>>>(channels, (value) => pulumi.Input.encodeList<ContactProfileLinkChannel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': direction,
      'eirpdBW': ?eirpdBW,
      'gainOverTemperature': ?gainOverTemperature,
      'name': name,
      'polarization': polarization,
    };
  }

  factory ContactProfileLink.fromMap(Map<String, dynamic> map) {
    return ContactProfileLink(
      channels: pulumi.Input.fromValue(pulumi.Input.decodeList<ContactProfileLinkChannel>(map['channels']!, (value) => ContactProfileLinkChannel.fromMap((value as Map).cast<String, dynamic>()))),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      eirpdBW: (() { final guardedValue = map['eirpdBW']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      gainOverTemperature: (() { final guardedValue = map['gainOverTemperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      polarization: pulumi.Input.fromValue(map['polarization'] as String),
    );
  }
}

