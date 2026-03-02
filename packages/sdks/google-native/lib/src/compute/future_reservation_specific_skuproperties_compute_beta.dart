// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_specific_skuallocation_reserved_instance_properties_compute_beta.dart';

class FutureReservationSpecificSKUPropertiesComputeBeta {
  /// Properties of the SKU instances being reserved.
  final pulumi.Input<AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta>? instanceProperties;
  /// The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  final pulumi.Input<String>? sourceInstanceTemplate;
  /// Total number of instances for which capacity assurance is requested at a future time period.
  final pulumi.Input<String>? totalCount;

  /// Creates a new [FutureReservationSpecificSKUPropertiesComputeBeta].
  /// [instanceProperties] Properties of the SKU instances being reserved.
  /// [sourceInstanceTemplate] The instance template that will be used to populate the ReservedInstanceProperties of the future reservation
  /// [totalCount] Total number of instances for which capacity assurance is requested at a future time period.
  FutureReservationSpecificSKUPropertiesComputeBeta({
    this.instanceProperties,
    this.sourceInstanceTemplate,
    this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceProperties': ?pulumi.Input.mapOptionalInputValue<AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta, Map<String, dynamic>>(instanceProperties, (value) => value.toMap()),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
      'totalCount': ?totalCount,
    };
  }

  factory FutureReservationSpecificSKUPropertiesComputeBeta.fromMap(Map<String, dynamic> map) {
    return FutureReservationSpecificSKUPropertiesComputeBeta(
      instanceProperties: map['instanceProperties'] == null ? null : (AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta.fromMap((map['instanceProperties']! as Map).cast<String, dynamic>())).input(),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null ? null : (map['sourceInstanceTemplate']! as String).input(),
      totalCount: map['totalCount'] == null ? null : (map['totalCount']! as String).input(),
    );
  }
}

