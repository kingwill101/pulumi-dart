// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_network_pass_through_lb_traffic_policy_zonal_affinity.dart';

class BackendServiceNetworkPassThroughLbTrafficPolicy {
  /// When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity>? zonalAffinity;

  /// Creates a new [BackendServiceNetworkPassThroughLbTrafficPolicy].
  /// [zonalAffinity] When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  const BackendServiceNetworkPassThroughLbTrafficPolicy({
    this.zonalAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zonalAffinity': ?pulumi.Input.mapOptionalInputValue<BackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity, Map<String, dynamic>>(zonalAffinity, (value) => value.toMap()),
    };
  }

  factory BackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(Map<String, dynamic> map) {
    return BackendServiceNetworkPassThroughLbTrafficPolicy(
      zonalAffinity: (() { final guardedValue = map['zonalAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
