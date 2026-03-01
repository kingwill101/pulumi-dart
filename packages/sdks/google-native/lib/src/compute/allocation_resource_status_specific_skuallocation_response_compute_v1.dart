// ignore_for_file: unused_element, unnecessary_cast


/// Contains Properties set for the reservation.
class AllocationResourceStatusSpecificSKUAllocationResponseComputeV1 {
  /// ID of the instance template used to populate reservation properties.
  final String sourceInstanceTemplateId;

  /// Creates a new [AllocationResourceStatusSpecificSKUAllocationResponseComputeV1].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate reservation properties.
  AllocationResourceStatusSpecificSKUAllocationResponseComputeV1({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': sourceInstanceTemplateId,
    };
  }

  factory AllocationResourceStatusSpecificSKUAllocationResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return AllocationResourceStatusSpecificSKUAllocationResponseComputeV1(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] as String,
    );
  }
}

