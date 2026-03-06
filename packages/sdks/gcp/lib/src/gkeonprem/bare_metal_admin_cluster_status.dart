// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_status_condition.dart';

class BareMetalAdminClusterStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from admin cluster controller.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalAdminClusterStatusCondition>>? conditions;
  /// (Output)
  /// Human-friendly representation of the error message from the admin cluster
  /// controller. The error message can be temporary as the admin cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final pulumi.Input<String>? errorMessage;

  /// Creates a new [BareMetalAdminClusterStatus].
  /// [conditions] (Output)
  /// [errorMessage] (Output)
  const BareMetalAdminClusterStatus({
    this.conditions,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminClusterStatusCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<BareMetalAdminClusterStatusCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorMessage': ?errorMessage,
    };
  }

  factory BareMetalAdminClusterStatus.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalAdminClusterStatusCondition>(guardedValue, (value) => BareMetalAdminClusterStatusCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

