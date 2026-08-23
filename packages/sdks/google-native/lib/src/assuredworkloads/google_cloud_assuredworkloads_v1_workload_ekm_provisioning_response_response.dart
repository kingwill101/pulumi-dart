// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// External key management systems(EKM) Provisioning response
class GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse {
  /// Indicates Ekm provisioning error if any.
  final pulumi.Input<String> ekmProvisioningErrorDomain;
  /// Detailed error message if Ekm provisioning fails
  final pulumi.Input<String> ekmProvisioningErrorMapping;
  /// Indicates Ekm enrollment Provisioning of a given workload.
  final pulumi.Input<String> ekmProvisioningState;

  /// Creates a new [GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse].
  /// [ekmProvisioningErrorDomain] Indicates Ekm provisioning error if any.
  /// [ekmProvisioningErrorMapping] Detailed error message if Ekm provisioning fails
  /// [ekmProvisioningState] Indicates Ekm enrollment Provisioning of a given workload.
  const GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse({
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

  factory GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse(
      ekmProvisioningErrorDomain: pulumi.Input.fromValue(map['ekmProvisioningErrorDomain'] as String),
      ekmProvisioningErrorMapping: pulumi.Input.fromValue(map['ekmProvisioningErrorMapping'] as String),
      ekmProvisioningState: pulumi.Input.fromValue(map['ekmProvisioningState'] as String),
    );
  }
}
