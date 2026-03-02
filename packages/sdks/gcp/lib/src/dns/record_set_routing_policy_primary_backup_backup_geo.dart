// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_primary_backup_backup_geo_health_checked_targets.dart';

class RecordSetRoutingPolicyPrimaryBackupBackupGeo {
  /// For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item.
  final pulumi.Input<RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets>? healthCheckedTargets;
  /// The location name defined in Google Cloud.
  final pulumi.Input<String> location;
  final pulumi.Input<List<String>>? rrdatas;

  /// Creates a new [RecordSetRoutingPolicyPrimaryBackupBackupGeo].
  /// [healthCheckedTargets] For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item.
  /// [location] The location name defined in Google Cloud.
  /// [rrdatas] Optional.
  RecordSetRoutingPolicyPrimaryBackupBackupGeo({
    this.healthCheckedTargets,
    required this.location,
    this.rrdatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckedTargets': ?pulumi.Input.mapOptionalInputValue<RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets, Map<String, dynamic>>(healthCheckedTargets, (value) => value.toMap()),
      'location': location,
      'rrdatas': ?rrdatas,
    };
  }

  factory RecordSetRoutingPolicyPrimaryBackupBackupGeo.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyPrimaryBackupBackupGeo(
      healthCheckedTargets: map['healthCheckedTargets'] == null ? null : (RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets.fromMap((map['healthCheckedTargets']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      rrdatas: map['rrdatas'] == null ? null : ((map['rrdatas']! as List).cast<String>()).input(),
    );
  }
}

