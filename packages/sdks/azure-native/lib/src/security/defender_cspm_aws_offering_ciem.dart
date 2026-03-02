// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_aws_offering_ciem_discovery.dart';
import 'defender_cspm_aws_offering_ciem_oidc.dart';

/// Defenders CSPM Permissions Management offering configurations
class DefenderCspmAwsOfferingCiem {
  /// Defender CSPM Permissions Management discovery configuration
  final pulumi.Input<DefenderCspmAwsOfferingCiemDiscovery>? ciemDiscovery;
  /// AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  final pulumi.Input<DefenderCspmAwsOfferingCiemOidc>? ciemOidc;

  /// Creates a new [DefenderCspmAwsOfferingCiem].
  /// [ciemDiscovery] Defender CSPM Permissions Management discovery configuration
  /// [ciemOidc] AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  DefenderCspmAwsOfferingCiem({
    this.ciemDiscovery,
    this.ciemOidc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingCiemDiscovery, Map<String, dynamic>>(ciemDiscovery, (value) => value.toMap()),
      'ciemOidc': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingCiemOidc, Map<String, dynamic>>(ciemOidc, (value) => value.toMap()),
    };
  }

  factory DefenderCspmAwsOfferingCiem.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingCiem(
      ciemDiscovery: map['ciemDiscovery'] == null ? null : (DefenderCspmAwsOfferingCiemDiscovery.fromMap((map['ciemDiscovery'] as Map).cast<String, dynamic>())).input(),
      ciemOidc: map['ciemOidc'] == null ? null : (DefenderCspmAwsOfferingCiemOidc.fromMap((map['ciemOidc'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

