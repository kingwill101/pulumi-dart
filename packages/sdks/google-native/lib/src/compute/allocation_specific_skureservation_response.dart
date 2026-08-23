// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_specific_skuallocation_reserved_instance_properties_response.dart';

/// This reservation type allows to pre allocate specific instance configuration. Next ID: 6
class AllocationSpecificSKUReservationResponse {
  /// Indicates how many instances are actually usable currently.
  final pulumi.Input<String> assuredCount;
  /// Specifies the number of resources that are allocated.
  final pulumi.Input<String> count;
  /// Indicates how many instances are in use.
  final pulumi.Input<String> inUseCount;
  /// The instance properties for the reservation.
  final pulumi.Input<AllocationSpecificSKUAllocationReservedInstancePropertiesResponse> instanceProperties;
  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the instanceProperties field. This field is optional, and it can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final pulumi.Input<String> sourceInstanceTemplate;

  /// Creates a new [AllocationSpecificSKUReservationResponse].
  /// [assuredCount] Indicates how many instances are actually usable currently.
  /// [count] Specifies the number of resources that are allocated.
  /// [inUseCount] Indicates how many instances are in use.
  /// [instanceProperties] The instance properties for the reservation.
  /// [sourceInstanceTemplate] Specifies the instance template to create the reservation. If you use this field, you must exclude the instanceProperties field. This field is optional, and it can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  const AllocationSpecificSKUReservationResponse({
    required this.assuredCount,
    required this.count,
    required this.inUseCount,
    required this.instanceProperties,
    required this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredCount': assuredCount,
      'count': count,
      'inUseCount': inUseCount,
      'instanceProperties': pulumi.Input.mapInputValue<AllocationSpecificSKUAllocationReservedInstancePropertiesResponse, Map<String, dynamic>>(instanceProperties, (value) => value.toMap()),
      'sourceInstanceTemplate': sourceInstanceTemplate,
    };
  }

  factory AllocationSpecificSKUReservationResponse.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUReservationResponse(
      assuredCount: pulumi.Input.fromValue(map['assuredCount'] as String),
      count: pulumi.Input.fromValue(map['count'] as String),
      inUseCount: pulumi.Input.fromValue(map['inUseCount'] as String),
      instanceProperties: pulumi.Input.fromValue(AllocationSpecificSKUAllocationReservedInstancePropertiesResponse.fromMap((map['instanceProperties']! as Map).cast<String, dynamic>())),
      sourceInstanceTemplate: pulumi.Input.fromValue(map['sourceInstanceTemplate'] as String),
    );
  }
}
