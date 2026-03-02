// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_status_last_known_good_state_future_reservation_specs_specific_sku_properties_instance_properties.dart';

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties {
  /// Properties of the SKU instances being reserved.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstanceProperties>? instanceProperties;
  /// The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  final pulumi.Input<String>? sourceInstanceTemplate;
  /// Total number of instances for which capacity assurance is requested at a future time period.
  final pulumi.Input<String>? totalCount;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties].
  /// [instanceProperties] Properties of the SKU instances being reserved.
  /// [sourceInstanceTemplate] The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  /// [totalCount] Total number of instances for which capacity assurance is requested at a future time period.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties({
    this.instanceProperties,
    this.sourceInstanceTemplate,
    this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceProperties': ?pulumi.Input.mapOptionalInputValue<FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstanceProperties, Map<String, dynamic>>(instanceProperties, (value) => value.toMap()),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
      'totalCount': ?totalCount,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuProperties(
      instanceProperties: map['instanceProperties'] == null ? null : (FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstanceProperties.fromMap((map['instanceProperties']! as Map).cast<String, dynamic>())).input(),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null ? null : (map['sourceInstanceTemplate']! as String).input(),
      totalCount: map['totalCount'] == null ? null : (map['totalCount']! as String).input(),
    );
  }
}

