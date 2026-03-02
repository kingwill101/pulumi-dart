// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_geo_policy_response.dart';
import 'rrset_routing_policy_primary_backup_policy_response.dart';
import 'rrset_routing_policy_wrr_policy_response.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicyResponse {
  final pulumi.Input<RRSetRoutingPolicyGeoPolicyResponse> geo;
  final pulumi.Input<String> kind;
  final pulumi.Input<RRSetRoutingPolicyPrimaryBackupPolicyResponse> primaryBackup;
  final pulumi.Input<RRSetRoutingPolicyWrrPolicyResponse> wrr;

  /// Creates a new [RRSetRoutingPolicyResponse].
  /// [geo] Required.
  /// [kind] Required.
  /// [primaryBackup] Required.
  /// [wrr] Required.
  RRSetRoutingPolicyResponse({
    required this.geo,
    required this.kind,
    required this.primaryBackup,
    required this.wrr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geo': pulumi.Input.mapInputValue<RRSetRoutingPolicyGeoPolicyResponse, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'kind': kind,
      'primaryBackup': pulumi.Input.mapInputValue<RRSetRoutingPolicyPrimaryBackupPolicyResponse, Map<String, dynamic>>(primaryBackup, (value) => value.toMap()),
      'wrr': pulumi.Input.mapInputValue<RRSetRoutingPolicyWrrPolicyResponse, Map<String, dynamic>>(wrr, (value) => value.toMap()),
    };
  }

  factory RRSetRoutingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyResponse(
      geo: (RRSetRoutingPolicyGeoPolicyResponse.fromMap((map['geo'] as Map).cast<String, dynamic>())).input(),
      kind: (map['kind'] as String).input(),
      primaryBackup: (RRSetRoutingPolicyPrimaryBackupPolicyResponse.fromMap((map['primaryBackup'] as Map).cast<String, dynamic>())).input(),
      wrr: (RRSetRoutingPolicyWrrPolicyResponse.fromMap((map['wrr'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

