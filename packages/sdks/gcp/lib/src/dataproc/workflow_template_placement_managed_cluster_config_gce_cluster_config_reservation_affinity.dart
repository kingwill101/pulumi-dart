// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity {
  /// Type of reservation to consume Possible values: TYPE_UNSPECIFIED, NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION
  final pulumi.Input<String?>? consumeReservationType;
  /// Corresponds to the label key of reservation resource.
  final pulumi.Input<String?>? key;
  /// Corresponds to the label values of reservation resource.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity].
  /// [consumeReservationType] Type of reservation to consume Possible values: TYPE_UNSPECIFIED, NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION
  /// [key] Corresponds to the label key of reservation resource.
  /// [values] Corresponds to the label values of reservation resource.
  const WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': ?consumeReservationType,
      'key': ?key,
      'values': ?values,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity(
      consumeReservationType: (() { final guardedValue = map['consumeReservationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
