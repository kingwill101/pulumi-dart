// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigGceClusterConfigReservationAffinity {
  /// Corresponds to the type of reservation consumption.
  final pulumi.Input<String>? consumeReservationType;
  /// Corresponds to the label key of reservation resource.
  final pulumi.Input<String>? key;
  /// Corresponds to the label values of reservation resource.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ClusterClusterConfigGceClusterConfigReservationAffinity].
  /// [consumeReservationType] Corresponds to the type of reservation consumption.
  /// [key] Corresponds to the label key of reservation resource.
  /// [values] Corresponds to the label values of reservation resource.
  ClusterClusterConfigGceClusterConfigReservationAffinity({
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

  factory ClusterClusterConfigGceClusterConfigReservationAffinity.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfigReservationAffinity(
      consumeReservationType: map['consumeReservationType'] == null ? null : (map['consumeReservationType']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

