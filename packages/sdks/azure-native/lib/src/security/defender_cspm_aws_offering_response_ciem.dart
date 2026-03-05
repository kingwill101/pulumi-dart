// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_aws_offering_response_ciem_discovery.dart';
import 'defender_cspm_aws_offering_response_ciem_oidc.dart';

/// Defenders CSPM Permissions Management offering configurations
class DefenderCspmAwsOfferingResponseCiem {
  /// Defender CSPM Permissions Management discovery configuration
  final pulumi.Input<DefenderCspmAwsOfferingResponseCiemDiscovery>? ciemDiscovery;
  /// AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  final pulumi.Input<DefenderCspmAwsOfferingResponseCiemOidc>? ciemOidc;

  /// Creates a new [DefenderCspmAwsOfferingResponseCiem].
  /// [ciemDiscovery] Defender CSPM Permissions Management discovery configuration
  /// [ciemOidc] AWS Defender CSPM Permissions Management OIDC (open id connect) connection configurations
  DefenderCspmAwsOfferingResponseCiem({
    this.ciemDiscovery,
    this.ciemOidc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingResponseCiemDiscovery, Map<String, dynamic>>(ciemDiscovery, (value) => value.toMap()),
      'ciemOidc': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingResponseCiemOidc, Map<String, dynamic>>(ciemOidc, (value) => value.toMap()),
    };
  }

  factory DefenderCspmAwsOfferingResponseCiem.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponseCiem(
      ciemDiscovery: (() { final guardedValue = map['ciemDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingResponseCiemDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ciemOidc: (() { final guardedValue = map['ciemOidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingResponseCiemOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

