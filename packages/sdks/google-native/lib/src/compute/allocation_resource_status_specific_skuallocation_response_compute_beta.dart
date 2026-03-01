// ignore_for_file: unused_element, unnecessary_cast


/// Contains Properties set for the reservation.
class AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta {
  /// ID of the instance template used to populate reservation properties.
  final String sourceInstanceTemplateId;

  /// Creates a new [AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate reservation properties.
  AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': sourceInstanceTemplateId,
    };
  }

  factory AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] as String,
    );
  }
}

