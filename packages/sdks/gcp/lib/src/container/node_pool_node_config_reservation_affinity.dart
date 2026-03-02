// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigReservationAffinity {
  /// The type of reservation consumption
  /// Accepted values are:
  ///
  /// * `"UNSPECIFIED"`: Default value. This should not be used.
  /// * `"NO_RESERVATION"`: Do not consume from any reserved capacity.
  /// * `"ANY_RESERVATION"`: Consume any reservation available.
  /// * `"SPECIFIC_RESERVATION"`: Must consume from a specific reservation. Must specify key value fields for specifying the reservations.
  final pulumi.Input<String> consumeReservationType;
  /// The label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  final pulumi.Input<String>? key;
  /// The list of label values of reservation resources. For example: the name of the specific reservation when using a key of "compute.googleapis.com/reservation-name"
  final pulumi.Input<List<String>>? values;

  /// Creates a new [NodePoolNodeConfigReservationAffinity].
  /// [consumeReservationType] The type of reservation consumption
  /// [key] The label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  /// [values] The list of label values of reservation resources. For example: the name of the specific reservation when using a key of "compute.googleapis.com/reservation-name"
  NodePoolNodeConfigReservationAffinity({
    required this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': consumeReservationType,
      'key': ?key,
      'values': ?values,
    };
  }

  factory NodePoolNodeConfigReservationAffinity.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigReservationAffinity(
      consumeReservationType: (map['consumeReservationType'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

