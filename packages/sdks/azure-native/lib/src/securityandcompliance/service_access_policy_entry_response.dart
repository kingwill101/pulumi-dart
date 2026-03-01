// ignore_for_file: unused_element, unnecessary_cast


/// An access policy entry.
class ServiceAccessPolicyEntryResponse {
  /// An Azure AD object ID (User or Apps) that is allowed access to the FHIR service.
  final String objectId;

  /// Creates a new [ServiceAccessPolicyEntryResponse].
  /// [objectId] An Azure AD object ID (User or Apps) that is allowed access to the FHIR service.
  ServiceAccessPolicyEntryResponse({
    required this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
    };
  }

  factory ServiceAccessPolicyEntryResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccessPolicyEntryResponse(
      objectId: map['objectId'] as String,
    );
  }
}

