// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Radius Server Settings.
class RadiusServerResponse {
  /// The address of this radius server.
  final pulumi.Input<String> radiusServerAddress;
  /// The initial score assigned to this radius server.
  final pulumi.Input<double>? radiusServerScore;
  /// The secret used for this radius server.
  final pulumi.Input<String>? radiusServerSecret;

  /// Creates a new [RadiusServerResponse].
  /// [radiusServerAddress] The address of this radius server.
  /// [radiusServerScore] The initial score assigned to this radius server.
  /// [radiusServerSecret] The secret used for this radius server.
  RadiusServerResponse({
    required this.radiusServerAddress,
    this.radiusServerScore,
    this.radiusServerSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'radiusServerAddress': radiusServerAddress,
      'radiusServerScore': ?radiusServerScore,
      'radiusServerSecret': ?radiusServerSecret,
    };
  }

  factory RadiusServerResponse.fromMap(Map<String, dynamic> map) {
    return RadiusServerResponse(
      radiusServerAddress: (map['radiusServerAddress'] as String).input(),
      radiusServerScore: map['radiusServerScore'] == null ? null : (map['radiusServerScore'] as double).input(),
      radiusServerSecret: map['radiusServerSecret'] == null ? null : (map['radiusServerSecret'] as String).input(),
    );
  }
}

