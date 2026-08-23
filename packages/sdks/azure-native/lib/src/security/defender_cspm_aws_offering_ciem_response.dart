// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_aws_offering_ciem_ciem_discovery_response.dart';
import 'defender_cspm_aws_offering_ciem_ciem_oidc_response.dart';

/// Defenders CSPM Permissions Management offering configurations
class DefenderCspmAwsOfferingCiemResponse {
  /// Defender CSPM Permissions Management discovery configuration
  final pulumi.Input<DefenderCspmAwsOfferingCiemCiemDiscoveryResponse>? ciemDiscovery;
  /// AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  final pulumi.Input<DefenderCspmAwsOfferingCiemCiemOidcResponse>? ciemOidc;

  /// Creates a new [DefenderCspmAwsOfferingCiemResponse].
  /// [ciemDiscovery] Defender CSPM Permissions Management discovery configuration
  /// [ciemOidc] AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  const DefenderCspmAwsOfferingCiemResponse({
    this.ciemDiscovery,
    this.ciemOidc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingCiemCiemDiscoveryResponse, Map<String, dynamic>>(ciemDiscovery, (value) => value.toMap()),
      'ciemOidc': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingCiemCiemOidcResponse, Map<String, dynamic>>(ciemOidc, (value) => value.toMap()),
    };
  }

  factory DefenderCspmAwsOfferingCiemResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingCiemResponse(
      ciemDiscovery: (() { final guardedValue = map['ciemDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingCiemCiemDiscoveryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ciemOidc: (() { final guardedValue = map['ciemOidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingCiemCiemOidcResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
