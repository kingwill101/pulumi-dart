// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of authorized spacecraft links per ground station and the expiration date of the authorization.
class SpacecraftLink {
  /// Bandwidth in MHz.
  final pulumi.Input<double> bandwidthMHz;
  /// Center Frequency in MHz.
  final pulumi.Input<double> centerFrequencyMHz;
  /// Direction (Uplink or Downlink).
  final pulumi.Input<String> direction;
  /// Link name.
  final pulumi.Input<String> name;
  /// Polarization. e.g. (RHCP, LHCP).
  final pulumi.Input<String> polarization;

  /// Creates a new [SpacecraftLink].
  /// [bandwidthMHz] Bandwidth in MHz.
  /// [centerFrequencyMHz] Center Frequency in MHz.
  /// [direction] Direction (Uplink or Downlink).
  /// [name] Link name.
  /// [polarization] Polarization. e.g. (RHCP, LHCP).
  const SpacecraftLink({
    required this.bandwidthMHz,
    required this.centerFrequencyMHz,
    required this.direction,
    required this.name,
    required this.polarization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthMHz': bandwidthMHz,
      'centerFrequencyMHz': centerFrequencyMHz,
      'direction': direction,
      'name': name,
      'polarization': polarization,
    };
  }

  factory SpacecraftLink.fromMap(Map<String, dynamic> map) {
    return SpacecraftLink(
      bandwidthMHz: pulumi.Input.fromValue(map['bandwidthMHz'] as double),
      centerFrequencyMHz: pulumi.Input.fromValue(map['centerFrequencyMHz'] as double),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      polarization: pulumi.Input.fromValue(map['polarization'] as String),
    );
  }
}

