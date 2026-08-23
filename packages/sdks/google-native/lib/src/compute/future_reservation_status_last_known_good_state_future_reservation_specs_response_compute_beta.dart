// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_specific_skuproperties_response_compute_beta.dart';
import 'future_reservation_time_window_response_compute_beta.dart';
import 'share_settings_response_compute_beta.dart';

/// The properties of the last known good state for the Future Reservation.
class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta {
  /// The previous share settings of the Future Reservation.
  final pulumi.Input<ShareSettingsResponseComputeBeta> shareSettings;
  /// The previous instance related properties of the Future Reservation.
  final pulumi.Input<FutureReservationSpecificSKUPropertiesResponseComputeBeta> specificSkuProperties;
  /// The previous time window of the Future Reservation.
  final pulumi.Input<FutureReservationTimeWindowResponseComputeBeta> timeWindow;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta].
  /// [shareSettings] The previous share settings of the Future Reservation.
  /// [specificSkuProperties] The previous instance related properties of the Future Reservation.
  /// [timeWindow] The previous time window of the Future Reservation.
  const FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta({
    required this.shareSettings,
    required this.specificSkuProperties,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareSettings': pulumi.Input.mapInputValue<ShareSettingsResponseComputeBeta, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificSkuProperties': pulumi.Input.mapInputValue<FutureReservationSpecificSKUPropertiesResponseComputeBeta, Map<String, dynamic>>(specificSkuProperties, (value) => value.toMap()),
      'timeWindow': pulumi.Input.mapInputValue<FutureReservationTimeWindowResponseComputeBeta, Map<String, dynamic>>(timeWindow, (value) => value.toMap()),
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponseComputeBeta(
      shareSettings: pulumi.Input.fromValue(ShareSettingsResponseComputeBeta.fromMap((map['shareSettings']! as Map).cast<String, dynamic>())),
      specificSkuProperties: pulumi.Input.fromValue(FutureReservationSpecificSKUPropertiesResponseComputeBeta.fromMap((map['specificSkuProperties']! as Map).cast<String, dynamic>())),
      timeWindow: pulumi.Input.fromValue(FutureReservationTimeWindowResponseComputeBeta.fromMap((map['timeWindow']! as Map).cast<String, dynamic>())),
    );
  }
}
