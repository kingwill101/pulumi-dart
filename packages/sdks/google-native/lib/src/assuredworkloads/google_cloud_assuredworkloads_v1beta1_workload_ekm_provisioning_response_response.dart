// ignore_for_file: unused_element, unnecessary_cast


/// External key management systems(EKM) Provisioning response
class GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponseResponse {
  /// Indicates Ekm provisioning error if any.
  final String ekmProvisioningErrorDomain;
  /// Detailed error message if Ekm provisioning fails
  final String ekmProvisioningErrorMapping;
  /// Indicates Ekm enrollment Provisioning of a given workload.
  final String ekmProvisioningState;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponseResponse].
  /// [ekmProvisioningErrorDomain] Indicates Ekm provisioning error if any.
  /// [ekmProvisioningErrorMapping] Detailed error message if Ekm provisioning fails
  /// [ekmProvisioningState] Indicates Ekm enrollment Provisioning of a given workload.
  GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponseResponse({
    required this.ekmProvisioningErrorDomain,
    required this.ekmProvisioningErrorMapping,
    required this.ekmProvisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ekmProvisioningErrorDomain': ekmProvisioningErrorDomain,
      'ekmProvisioningErrorMapping': ekmProvisioningErrorMapping,
      'ekmProvisioningState': ekmProvisioningState,
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponseResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadEkmProvisioningResponseResponse(
      ekmProvisioningErrorDomain: map['ekmProvisioningErrorDomain'] as String,
      ekmProvisioningErrorMapping: map['ekmProvisioningErrorMapping'] as String,
      ekmProvisioningState: map['ekmProvisioningState'] as String,
    );
  }
}

