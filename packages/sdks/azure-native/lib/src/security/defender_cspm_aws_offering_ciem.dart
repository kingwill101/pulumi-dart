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
  DefenderCspmAwsOfferingCiem({this.ciemDiscovery, this.ciemOidc});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery':
          ?pulumi.Input.mapOptionalInputValue<
            DefenderCspmAwsOfferingCiemDiscovery,
            Map<String, dynamic>
          >(ciemDiscovery, (value) => value.toMap()),
      'ciemOidc':
          ?pulumi.Input.mapOptionalInputValue<
            DefenderCspmAwsOfferingCiemOidc,
            Map<String, dynamic>
          >(ciemOidc, (value) => value.toMap()),
    };
  }

  factory DefenderCspmAwsOfferingCiem.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingCiem(
      ciemDiscovery: (() {
        final guardedValue = map['ciemDiscovery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefenderCspmAwsOfferingCiemDiscovery.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ciemOidc: (() {
        final guardedValue = map['ciemOidc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefenderCspmAwsOfferingCiemOidc.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
