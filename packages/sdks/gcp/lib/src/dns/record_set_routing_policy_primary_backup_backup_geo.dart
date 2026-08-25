// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_primary_backup_backup_geo_health_checked_targets.dart';

class RecordSetRoutingPolicyPrimaryBackupBackupGeo {
  /// For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item.
  final pulumi.Input<RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets?>? healthCheckedTargets;
  /// The location name defined in Google Cloud.
  final pulumi.Input<String> location;
  /// The string data for the records in this record set
  /// whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding `\"` if you don't want your string to get split on spaces. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add `\" \"` inside the Terraform configuration string (e.g. `"first255characters\" \"morecharacters"`).
  final pulumi.Input<List<String>?>? rrdatas;

  /// Creates a new [RecordSetRoutingPolicyPrimaryBackupBackupGeo].
  /// [healthCheckedTargets] For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item.
  /// [location] The location name defined in Google Cloud.
  /// [rrdatas] The string data for the records in this record set
  const RecordSetRoutingPolicyPrimaryBackupBackupGeo({
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
      healthCheckedTargets: (() { final guardedValue = map['healthCheckedTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      rrdatas: (() { final guardedValue = map['rrdatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
