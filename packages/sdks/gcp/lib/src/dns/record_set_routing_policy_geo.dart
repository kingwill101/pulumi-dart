// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_geo_health_checked_targets.dart';

class RecordSetRoutingPolicyGeo {
  /// For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item.
  /// Structure is documented below.
  final pulumi.Input<RecordSetRoutingPolicyGeoHealthCheckedTargets>? healthCheckedTargets;
  /// The location name defined in Google Cloud.
  final pulumi.Input<String> location;
  /// Same as `rrdatas` above.
  final pulumi.Input<List<String>>? rrdatas;

  /// Creates a new [RecordSetRoutingPolicyGeo].
  /// [healthCheckedTargets] For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item.
  /// [location] The location name defined in Google Cloud.
  /// [rrdatas] Same as `rrdatas` above.
  RecordSetRoutingPolicyGeo({
    this.healthCheckedTargets,
    required this.location,
    this.rrdatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckedTargets': ?pulumi.Input.mapOptionalInputValue<RecordSetRoutingPolicyGeoHealthCheckedTargets, Map<String, dynamic>>(healthCheckedTargets, (value) => value.toMap()),
      'location': location,
      'rrdatas': ?rrdatas,
    };
  }

  factory RecordSetRoutingPolicyGeo.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyGeo(
      healthCheckedTargets: map['healthCheckedTargets'] == null ? null : (RecordSetRoutingPolicyGeoHealthCheckedTargets.fromMap((map['healthCheckedTargets']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      rrdatas: map['rrdatas'] == null ? null : ((map['rrdatas']! as List).cast<String>()).input(),
    );
  }
}

