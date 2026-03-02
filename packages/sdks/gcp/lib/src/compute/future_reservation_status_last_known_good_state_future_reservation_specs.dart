// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_status_last_known_good_state_future_reservation_specs_share_settings.dart';
import 'future_reservation_status_last_known_good_state_future_reservation_specs_specific_sku_properties.dart';
import 'future_reservation_status_last_known_good_state_future_reservation_specs_time_window.dart';

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecs {
  /// Settings for sharing the future reservation
  /// Structure is documented below.
  final pulumi.Input<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings>? shareSettings;
  /// Future Reservation configuration to indicate instance properties and total count.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties>? specificSkuProperties;
  /// Time window for this Future Reservation.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow>? timeWindow;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecs].
  /// [shareSettings] Settings for sharing the future reservation
  /// [specificSkuProperties] Future Reservation configuration to indicate instance properties and total count.
  /// [timeWindow] Time window for this Future Reservation.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecs({
    this.shareSettings,
    this.specificSkuProperties,
    this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificSkuProperties': ?pulumi.Input.mapOptionalInputValue<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties, Map<String, dynamic>>(specificSkuProperties, (value) => value.toMap()),
      'timeWindow': ?pulumi.Input.mapOptionalInputValue<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow, Map<String, dynamic>>(timeWindow, (value) => value.toMap()),
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecs.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecs(
      shareSettings: map['shareSettings'] == null ? null : (FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings.fromMap((map['shareSettings'] as Map).cast<String, dynamic>())).input(),
      specificSkuProperties: map['specificSkuProperties'] == null ? null : (FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties.fromMap((map['specificSkuProperties'] as Map).cast<String, dynamic>())).input(),
      timeWindow: map['timeWindow'] == null ? null : (FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow.fromMap((map['timeWindow'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

