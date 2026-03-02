// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpacecraftLink {
  /// Bandwidth in Mhz.
  final pulumi.Input<double> bandwidthMhz;
  /// Center frequency in Mhz.
  ///
  /// > **Note:** The value of `center_frequency_mhz +/- bandwidth_mhz / 2` should fall in one of these ranges: `Uplink/LHCP`: [2025, 2120]; `Uplink/Linear`: [399, 403],[435, 438],[449, 451]; `Uplink/RHCP`: [399, 403],[435, 438],[449, 451],[2025, 2120]; `Downlink/LHCP`: [2200, 2300], [7500, 8400]; `Downlink/Linear`: [399, 403], [435, 438], [449, 451]; Downlink/Linear`: [399, 403], [435, 438], [449, 451], [2200, 2300], [7500, 8400]
  final pulumi.Input<double> centerFrequencyMhz;
  /// Direction if the communication. Possible values are `Uplink` and `Downlink`.
  final pulumi.Input<String> direction;
  /// Name of the link.
  final pulumi.Input<String> name;
  /// Polarization. Possible values are `RHCP`, `LHCP`, `linearVertical` and `linearHorizontal`.
  final pulumi.Input<String> polarization;

  /// Creates a new [SpacecraftLink].
  /// [bandwidthMhz] Bandwidth in Mhz.
  /// [centerFrequencyMhz] Center frequency in Mhz.
  /// [direction] Direction if the communication. Possible values are `Uplink` and `Downlink`.
  /// [name] Name of the link.
  /// [polarization] Polarization. Possible values are `RHCP`, `LHCP`, `linearVertical` and `linearHorizontal`.
  SpacecraftLink({
    required this.bandwidthMhz,
    required this.centerFrequencyMhz,
    required this.direction,
    required this.name,
    required this.polarization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthMhz': bandwidthMhz,
      'centerFrequencyMhz': centerFrequencyMhz,
      'direction': direction,
      'name': name,
      'polarization': polarization,
    };
  }

  factory SpacecraftLink.fromMap(Map<String, dynamic> map) {
    return SpacecraftLink(
      bandwidthMhz: (map['bandwidthMhz'] as double).input(),
      centerFrequencyMhz: (map['centerFrequencyMhz'] as double).input(),
      direction: (map['direction'] as String).input(),
      name: (map['name'] as String).input(),
      polarization: (map['polarization'] as String).input(),
    );
  }
}

