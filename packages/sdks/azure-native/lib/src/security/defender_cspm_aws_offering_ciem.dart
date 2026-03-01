// ignore_for_file: unused_element, unnecessary_cast

import 'defender_cspm_aws_offering_ciem_discovery.dart';
import 'defender_cspm_aws_offering_ciem_oidc.dart';

/// Defenders CSPM Permissions Management offering configurations
class DefenderCspmAwsOfferingCiem {
  /// Defender CSPM Permissions Management discovery configuration
  final DefenderCspmAwsOfferingCiemDiscovery? ciemDiscovery;
  /// AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  final DefenderCspmAwsOfferingCiemOidc? ciemOidc;

  /// Creates a new [DefenderCspmAwsOfferingCiem].
  /// [ciemDiscovery] Defender CSPM Permissions Management discovery configuration
  /// [ciemOidc] AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  DefenderCspmAwsOfferingCiem({
    this.ciemDiscovery,
    this.ciemOidc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?ciemDiscovery == null ? null : ciemDiscovery!.toMap(),
      'ciemOidc': ?ciemOidc == null ? null : ciemOidc!.toMap(),
    };
  }

  factory DefenderCspmAwsOfferingCiem.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingCiem(
      ciemDiscovery: map['ciemDiscovery'] == null ? null : DefenderCspmAwsOfferingCiemDiscovery.fromMap((map['ciemDiscovery'] as Map).cast<String, dynamic>()),
      ciemOidc: map['ciemOidc'] == null ? null : DefenderCspmAwsOfferingCiemOidc.fromMap((map['ciemOidc'] as Map).cast<String, dynamic>()),
    );
  }
}

