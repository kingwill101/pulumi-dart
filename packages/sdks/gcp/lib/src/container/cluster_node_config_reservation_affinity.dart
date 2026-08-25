// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigReservationAffinity {
  /// The type of reservation consumption
  /// Accepted values are:
  ///
  /// * `"UNSPECIFIED"`: Default value. This should not be used.
  /// * `"NO_RESERVATION"`: Do not consume from any reserved capacity.
  /// * `"ANY_RESERVATION"`: Consume any non-specific reservation available, with a fallback to on-demand capacity in case of none reservaition being claimable.
  /// * `"SPECIFIC_RESERVATION"`: Must consume from a specific reservation. Must specify key value fields for specifying the reservations.
  /// * `"ANY_RESERVATION_THEN_FAIL"`: Consume any non-specific reservation available, without a fallback to on-demand capacity in case of none reservaition being claimable.
  final pulumi.Input<String> consumeReservationType;
  /// The label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  final pulumi.Input<String?>? key;
  /// The list of label values of reservation resources. For example: the name of the specific reservation when using a key of "compute.googleapis.com/reservation-name"
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [ClusterNodeConfigReservationAffinity].
  /// [consumeReservationType] The type of reservation consumption
  /// [key] The label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  /// [values] The list of label values of reservation resources. For example: the name of the specific reservation when using a key of "compute.googleapis.com/reservation-name"
  const ClusterNodeConfigReservationAffinity({
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

  factory ClusterNodeConfigReservationAffinity.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigReservationAffinity(
      consumeReservationType: pulumi.Input.fromValue(map['consumeReservationType'] as String),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
