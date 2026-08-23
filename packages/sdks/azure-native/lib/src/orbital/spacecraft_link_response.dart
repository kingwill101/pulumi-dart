// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_groundstation_response.dart';

/// List of authorized spacecraft links per ground station and the expiration date of the authorization.
class SpacecraftLinkResponse {
  /// Authorized Ground Stations
  final pulumi.Input<List<AuthorizedGroundstationResponse>> authorizations;
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

  /// Creates a new [SpacecraftLinkResponse].
  /// [authorizations] Authorized Ground Stations
  /// [bandwidthMHz] Bandwidth in MHz.
  /// [centerFrequencyMHz] Center Frequency in MHz.
  /// [direction] Direction (Uplink or Downlink).
  /// [name] Link name.
  /// [polarization] Polarization. e.g. (RHCP, LHCP).
  const SpacecraftLinkResponse({
    required this.authorizations,
    required this.bandwidthMHz,
    required this.centerFrequencyMHz,
    required this.direction,
    required this.name,
    required this.polarization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': pulumi.Input.mapInputValue<List<AuthorizedGroundstationResponse>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<AuthorizedGroundstationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bandwidthMHz': bandwidthMHz,
      'centerFrequencyMHz': centerFrequencyMHz,
      'direction': direction,
      'name': name,
      'polarization': polarization,
    };
  }

  factory SpacecraftLinkResponse.fromMap(Map<String, dynamic> map) {
    return SpacecraftLinkResponse(
      authorizations: pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizedGroundstationResponse>(map['authorizations']!, (value) => AuthorizedGroundstationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      bandwidthMHz: pulumi.Input.fromValue(map['bandwidthMHz'] as double),
      centerFrequencyMHz: pulumi.Input.fromValue(map['centerFrequencyMHz'] as double),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      polarization: pulumi.Input.fromValue(map['polarization'] as String),
    );
  }
}
