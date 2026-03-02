// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadEkmProvisioningResponse {
  /// Indicates Ekm provisioning error if any. Possible values: EKM_PROVISIONING_ERROR_DOMAIN_UNSPECIFIED, UNSPECIFIED_ERROR, GOOGLE_SERVER_ERROR, EXTERNAL_USER_ERROR, EXTERNAL_PARTNER_ERROR, TIMEOUT_ERROR
  final pulumi.Input<String>? ekmProvisioningErrorDomain;
  /// Detailed error message if Ekm provisioning fails Possible values: EKM_PROVISIONING_ERROR_MAPPING_UNSPECIFIED, INVALID_SERVICE_ACCOUNT, MISSING_METRICS_SCOPE_ADMIN_PERMISSION, MISSING_EKM_CONNECTION_ADMIN_PERMISSION
  final pulumi.Input<String>? ekmProvisioningErrorMapping;
  /// Indicates Ekm enrollment Provisioning of a given workload. Possible values: EKM_PROVISIONING_STATE_UNSPECIFIED, EKM_PROVISIONING_STATE_PENDING, EKM_PROVISIONING_STATE_FAILED, EKM_PROVISIONING_STATE_COMPLETED
  final pulumi.Input<String>? ekmProvisioningState;

  /// Creates a new [WorkloadEkmProvisioningResponse].
  /// [ekmProvisioningErrorDomain] Indicates Ekm provisioning error if any. Possible values: EKM_PROVISIONING_ERROR_DOMAIN_UNSPECIFIED, UNSPECIFIED_ERROR, GOOGLE_SERVER_ERROR, EXTERNAL_USER_ERROR, EXTERNAL_PARTNER_ERROR, TIMEOUT_ERROR
  /// [ekmProvisioningErrorMapping] Detailed error message if Ekm provisioning fails Possible values: EKM_PROVISIONING_ERROR_MAPPING_UNSPECIFIED, INVALID_SERVICE_ACCOUNT, MISSING_METRICS_SCOPE_ADMIN_PERMISSION, MISSING_EKM_CONNECTION_ADMIN_PERMISSION
  /// [ekmProvisioningState] Indicates Ekm enrollment Provisioning of a given workload. Possible values: EKM_PROVISIONING_STATE_UNSPECIFIED, EKM_PROVISIONING_STATE_PENDING, EKM_PROVISIONING_STATE_FAILED, EKM_PROVISIONING_STATE_COMPLETED
  WorkloadEkmProvisioningResponse({
    this.ekmProvisioningErrorDomain,
    this.ekmProvisioningErrorMapping,
    this.ekmProvisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ekmProvisioningErrorDomain': ?ekmProvisioningErrorDomain,
      'ekmProvisioningErrorMapping': ?ekmProvisioningErrorMapping,
      'ekmProvisioningState': ?ekmProvisioningState,
    };
  }

  factory WorkloadEkmProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadEkmProvisioningResponse(
      ekmProvisioningErrorDomain: map['ekmProvisioningErrorDomain'] == null ? null : (map['ekmProvisioningErrorDomain'] as String).input(),
      ekmProvisioningErrorMapping: map['ekmProvisioningErrorMapping'] == null ? null : (map['ekmProvisioningErrorMapping'] as String).input(),
      ekmProvisioningState: map['ekmProvisioningState'] == null ? null : (map['ekmProvisioningState'] as String).input(),
    );
  }
}

