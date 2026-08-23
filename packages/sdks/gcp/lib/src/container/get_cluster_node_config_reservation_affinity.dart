// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigReservationAffinity {
  /// Corresponds to the type of reservation consumption.
  final pulumi.Input<String> consumeReservationType;
  /// The label key of a reservation resource.
  final pulumi.Input<String> key;
  /// The label values of the reservation resource.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetClusterNodeConfigReservationAffinity].
  /// [consumeReservationType] Corresponds to the type of reservation consumption.
  /// [key] The label key of a reservation resource.
  /// [values] The label values of the reservation resource.
  const GetClusterNodeConfigReservationAffinity({
    required this.consumeReservationType,
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': consumeReservationType,
      'key': key,
      'values': values,
    };
  }

  factory GetClusterNodeConfigReservationAffinity.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigReservationAffinity(
      consumeReservationType: pulumi.Input.fromValue(map['consumeReservationType'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
