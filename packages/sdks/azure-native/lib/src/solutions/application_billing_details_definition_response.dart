// ignore_for_file: unused_element, unnecessary_cast


/// Managed application billing details definition.
class ApplicationBillingDetailsDefinitionResponse {
  /// The managed application resource usage Id.
  final String? resourceUsageId;

  /// Creates a new [ApplicationBillingDetailsDefinitionResponse].
  /// [resourceUsageId] The managed application resource usage Id.
  ApplicationBillingDetailsDefinitionResponse({
    this.resourceUsageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUsageId': ?resourceUsageId,
    };
  }

  factory ApplicationBillingDetailsDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationBillingDetailsDefinitionResponse(
      resourceUsageId: map['resourceUsageId'] == null ? null : map['resourceUsageId'] as String,
    );
  }
}

