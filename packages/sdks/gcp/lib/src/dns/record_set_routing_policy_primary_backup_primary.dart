// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_primary_backup_primary_internal_load_balancer.dart';

class RecordSetRoutingPolicyPrimaryBackupPrimary {
  /// The Internet IP addresses to be health checked.
  final pulumi.Input<List<String>>? externalEndpoints;
  /// The list of internal load balancers to health check.
  final pulumi.Input<List<RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer>>? internalLoadBalancers;

  /// Creates a new [RecordSetRoutingPolicyPrimaryBackupPrimary].
  /// [externalEndpoints] The Internet IP addresses to be health checked.
  /// [internalLoadBalancers] The list of internal load balancers to health check.
  const RecordSetRoutingPolicyPrimaryBackupPrimary({
    this.externalEndpoints,
    this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalEndpoints': ?externalEndpoints,
      'internalLoadBalancers': ?pulumi.Input.mapOptionalInputValue<List<RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer>, List<Map<String, dynamic>>>(internalLoadBalancers, (value) => pulumi.Input.encodeList<RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecordSetRoutingPolicyPrimaryBackupPrimary.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyPrimaryBackupPrimary(
      externalEndpoints: (() { final guardedValue = map['externalEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      internalLoadBalancers: (() { final guardedValue = map['internalLoadBalancers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer>(guardedValue, (value) => RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

