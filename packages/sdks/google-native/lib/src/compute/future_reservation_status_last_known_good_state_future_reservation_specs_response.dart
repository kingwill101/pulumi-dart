// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_specific_skuproperties_response.dart';
import 'future_reservation_time_window_response.dart';
import 'share_settings_response.dart';

/// The properties of the last known good state for the Future Reservation.
class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse {
  /// The previous share settings of the Future Reservation.
  final pulumi.Input<ShareSettingsResponse> shareSettings;
  /// The previous instance related properties of the Future Reservation.
  final pulumi.Input<FutureReservationSpecificSKUPropertiesResponse> specificSkuProperties;
  /// The previous time window of the Future Reservation.
  final pulumi.Input<FutureReservationTimeWindowResponse> timeWindow;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse].
  /// [shareSettings] The previous share settings of the Future Reservation.
  /// [specificSkuProperties] The previous instance related properties of the Future Reservation.
  /// [timeWindow] The previous time window of the Future Reservation.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse({
    required this.shareSettings,
    required this.specificSkuProperties,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareSettings': pulumi.Input.mapInputValue<ShareSettingsResponse, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificSkuProperties': pulumi.Input.mapInputValue<FutureReservationSpecificSKUPropertiesResponse, Map<String, dynamic>>(specificSkuProperties, (value) => value.toMap()),
      'timeWindow': pulumi.Input.mapInputValue<FutureReservationTimeWindowResponse, Map<String, dynamic>>(timeWindow, (value) => value.toMap()),
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsResponse(
      shareSettings: pulumi.Input.fromValue(ShareSettingsResponse.fromMap((map['shareSettings']! as Map).cast<String, dynamic>())),
      specificSkuProperties: pulumi.Input.fromValue(FutureReservationSpecificSKUPropertiesResponse.fromMap((map['specificSkuProperties']! as Map).cast<String, dynamic>())),
      timeWindow: pulumi.Input.fromValue(FutureReservationTimeWindowResponse.fromMap((map['timeWindow']! as Map).cast<String, dynamic>())),
    );
  }
}

