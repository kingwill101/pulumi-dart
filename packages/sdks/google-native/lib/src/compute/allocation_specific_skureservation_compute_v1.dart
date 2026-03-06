// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_specific_skuallocation_reserved_instance_properties_compute_v1.dart';

/// This reservation type allows to pre allocate specific instance configuration. Next ID: 6
class AllocationSpecificSKUReservationComputeV1 {
  /// Specifies the number of resources that are allocated.
  final pulumi.Input<String>? count;
  /// The instance properties for the reservation.
  final pulumi.Input<AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1>? instanceProperties;
  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the instanceProperties field. This field is optional, and it can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final pulumi.Input<String>? sourceInstanceTemplate;

  /// Creates a new [AllocationSpecificSKUReservationComputeV1].
  /// [count] Specifies the number of resources that are allocated.
  /// [instanceProperties] The instance properties for the reservation.
  /// [sourceInstanceTemplate] Specifies the instance template to create the reservation. If you use this field, you must exclude the instanceProperties field. This field is optional, and it can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  const AllocationSpecificSKUReservationComputeV1({
    this.count,
    this.instanceProperties,
    this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'instanceProperties': ?pulumi.Input.mapOptionalInputValue<AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1, Map<String, dynamic>>(instanceProperties, (value) => value.toMap()),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
    };
  }

  factory AllocationSpecificSKUReservationComputeV1.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUReservationComputeV1(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceProperties: (() { final guardedValue = map['instanceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceInstanceTemplate: (() { final guardedValue = map['sourceInstanceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

