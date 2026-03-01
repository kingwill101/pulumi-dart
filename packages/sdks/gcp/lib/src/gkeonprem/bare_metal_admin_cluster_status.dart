// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_status_condition.dart';

class BareMetalAdminClusterStatus {
  /// (Output)
  /// ResourceConditions provide a standard mechanism for higher-level status reporting from admin cluster controller.
  /// Structure is documented below.
  final List<BareMetalAdminClusterStatusCondition>? conditions;
  /// (Output)
  /// Human-friendly representation of the error message from the admin cluster
  /// controller. The error message can be temporary as the admin cluster
  /// controller creates a cluster or node pool. If the error message persists
  /// for a longer period of time, it can be used to surface error message to
  /// indicate real problems requiring user intervention.
  final String? errorMessage;

  /// Creates a new [BareMetalAdminClusterStatus].
  /// [conditions] (Output)
  /// [errorMessage] (Output)
  BareMetalAdminClusterStatus({
    this.conditions,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<BareMetalAdminClusterStatusCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'errorMessage': ?errorMessage,
    };
  }

  factory BareMetalAdminClusterStatus.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterStatus(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<BareMetalAdminClusterStatusCondition>(map['conditions'], (value) => BareMetalAdminClusterStatusCondition.fromMap((value as Map).cast<String, dynamic>())),
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
    );
  }
}

