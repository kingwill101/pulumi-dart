// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains Properties set for the reservation.
class AllocationResourceStatusSpecificSKUAllocationResponse {
  /// ID of the instance template used to populate reservation properties.
  final pulumi.Input<String> sourceInstanceTemplateId;

  /// Creates a new [AllocationResourceStatusSpecificSKUAllocationResponse].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate reservation properties.
  AllocationResourceStatusSpecificSKUAllocationResponse({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': sourceInstanceTemplateId,
    };
  }

  factory AllocationResourceStatusSpecificSKUAllocationResponse.fromMap(Map<String, dynamic> map) {
    return AllocationResourceStatusSpecificSKUAllocationResponse(
      sourceInstanceTemplateId: (map['sourceInstanceTemplateId'] as String).input(),
    );
  }
}

