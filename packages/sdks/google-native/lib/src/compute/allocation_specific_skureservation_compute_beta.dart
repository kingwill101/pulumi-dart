// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_specific_skuallocation_reserved_instance_properties_compute_beta.dart';

/// This reservation type allows to pre allocate specific instance configuration. Next ID: 6
class AllocationSpecificSKUReservationComputeBeta {
  /// Specifies the number of resources that are allocated.
  final pulumi.Input<String>? count;
  /// The instance properties for the reservation.
  final pulumi.Input<AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta>? instanceProperties;
  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the instanceProperties field. This field is optional, and it can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final pulumi.Input<String>? sourceInstanceTemplate;

  /// Creates a new [AllocationSpecificSKUReservationComputeBeta].
  /// [count] Specifies the number of resources that are allocated.
  /// [instanceProperties] The instance properties for the reservation.
  /// [sourceInstanceTemplate] Specifies the instance template to create the reservation. If you use this field, you must exclude the instanceProperties field. This field is optional, and it can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  AllocationSpecificSKUReservationComputeBeta({
    this.count,
    this.instanceProperties,
    this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'instanceProperties': ?pulumi.Input.mapOptionalInputValue<AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta, Map<String, dynamic>>(instanceProperties, (value) => value.toMap()),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
    };
  }

  factory AllocationSpecificSKUReservationComputeBeta.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUReservationComputeBeta(
      count: map['count'] == null ? null : (map['count'] as String).input(),
      instanceProperties: map['instanceProperties'] == null ? null : (AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta.fromMap((map['instanceProperties'] as Map).cast<String, dynamic>())).input(),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null ? null : (map['sourceInstanceTemplate'] as String).input(),
    );
  }
}

