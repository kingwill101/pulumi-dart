// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_compliance_status.dart';
import 'workload_ekm_provisioning_response.dart';
import 'workload_kms_settings.dart';
import 'workload_partner_permissions.dart';
import 'workload_resource.dart';
import 'workload_resource_setting.dart';
import 'workload_saa_enrollment_response.dart';
import 'workload_workload_options.dart';

/// Input properties used for looking up and filtering Workload resources.
class WorkloadState {
  /// Optional. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  final pulumi.Input<String>? billingAccount;
  /// Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS, ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2, JP_REGIONS_AND_SUPPORT, KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS, REGIONAL_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT, IRS_1075
  final pulumi.Input<String>? complianceRegime;
  /// Output only. Count of active Violations in the Workload.
  final pulumi.Input<List<WorkloadComplianceStatus>>? complianceStatuses;
  /// Output only. Urls for services which are compliant for this Assured Workload, but which are currently disallowed by the ResourceUsageRestriction org policy. Invoke workloads.restrictAllowedResources endpoint to allow your project developers to use these services in their environment.
  final pulumi.Input<List<String>>? compliantButDisallowedServices;
  /// Output only. Immutable. The Workload creation timestamp.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. Represents the Ekm Provisioning State of the given workload.
  final pulumi.Input<List<WorkloadEkmProvisioningResponse>>? ekmProvisioningResponses;
  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  final pulumi.Input<bool>? enableSovereignControls;
  /// Output only. Represents the KAJ enrollment state of the given workload. Possible values: KAJ_ENROLLMENT_STATE_UNSPECIFIED, KAJ_ENROLLMENT_STATE_PENDING, KAJ_ENROLLMENT_STATE_COMPLETE
  final pulumi.Input<String>? kajEnrollmentState;
  /// **DEPRECATED** Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  final pulumi.Input<WorkloadKmsSettings>? kmsSettings;
  /// Optional. Labels applied to the workload.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Output only. The resource name of the workload.
  final pulumi.Input<String>? name;
  /// The organization for the resource
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? organization;
  /// Optional. Partner regime associated with this workload. Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS, SOVEREIGN_CONTROLS_BY_T_SYSTEMS, SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN, SOVEREIGN_CONTROLS_BY_CNTXT, SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM, SPAIN_DATA_BOUNDARY_BY_TELEFONICA
  final pulumi.Input<String>? partner;
  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  final pulumi.Input<WorkloadPartnerPermissions>? partnerPermissions;
  /// Optional. Input only. Billing account necessary for purchasing services from Sovereign Partners. This field is required for creating SIA/PSN/CNTXT partner workloads. The caller should have 'billing.resourceAssociations.create' IAM permission on this billing-account. The format of this string is billingAccounts/AAAAAA-BBBBBB-CCCCCC.
  final pulumi.Input<String>? partnerServicesBillingAccount;
  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  final pulumi.Input<String>? provisionedResourcesParent;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  final pulumi.Input<List<WorkloadResourceSetting>>? resourceSettings;
  /// Output only. The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.
  final pulumi.Input<List<WorkloadResource>>? resources;
  /// Output only. Represents the SAA enrollment response of the given workload. SAA enrollment response is queried during workloads.get call. In failure cases, user friendly error message is shown in SAA details page.
  final pulumi.Input<List<WorkloadSaaEnrollmentResponse>>? saaEnrollmentResponses;
  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  final pulumi.Input<bool>? violationNotificationsEnabled;
  /// Optional. Used to specify certain options for a workload during workload creation - currently only supporting KAT Optionality for Regional Controls workloads.
  final pulumi.Input<WorkloadWorkloadOptions>? workloadOptions;

  /// Creates a new [WorkloadState].
  /// [billingAccount] Optional. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  /// [complianceRegime] Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS, ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2, JP_REGIONS_AND_SUPPORT, KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS, REGIONAL_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT, IRS_1075
  /// [complianceStatuses] Output only. Count of active Violations in the Workload.
  /// [compliantButDisallowedServices] Output only. Urls for services which are compliant for this Assured Workload, but which are currently disallowed by the ResourceUsageRestriction org policy. Invoke workloads.restrictAllowedResources endpoint to allow your project developers to use these services in their environment.
  /// [createTime] Output only. Immutable. The Workload creation timestamp.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [displayName] Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ekmProvisioningResponses] Optional. Represents the Ekm Provisioning State of the given workload.
  /// [enableSovereignControls] Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  /// [kajEnrollmentState] Output only. Represents the KAJ enrollment state of the given workload. Possible values: KAJ_ENROLLMENT_STATE_UNSPECIFIED, KAJ_ENROLLMENT_STATE_PENDING, KAJ_ENROLLMENT_STATE_COMPLETE
  /// [kmsSettings] **DEPRECATED** Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  /// [labels] Optional. Labels applied to the workload.
  /// [location] The location for the resource
  /// [name] Output only. The resource name of the workload.
  /// [organization] The organization for the resource
  /// [partner] Optional. Partner regime associated with this workload. Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS, SOVEREIGN_CONTROLS_BY_T_SYSTEMS, SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN, SOVEREIGN_CONTROLS_BY_CNTXT, SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM, SPAIN_DATA_BOUNDARY_BY_TELEFONICA
  /// [partnerPermissions] Optional. Permissions granted to the AW Partner SA account for the customer workload
  /// [partnerServicesBillingAccount] Optional. Input only. Billing account necessary for purchasing services from Sovereign Partners. This field is required for creating SIA/PSN/CNTXT partner workloads. The caller should have 'billing.resourceAssociations.create' IAM permission on this billing-account. The format of this string is billingAccounts/AAAAAA-BBBBBB-CCCCCC.
  /// [provisionedResourcesParent] Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [resourceSettings] Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  /// [resources] Output only. The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.
  /// [saaEnrollmentResponses] Output only. Represents the SAA enrollment response of the given workload. SAA enrollment response is queried during workloads.get call. In failure cases, user friendly error message is shown in SAA details page.
  /// [violationNotificationsEnabled] Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  /// [workloadOptions] Optional. Used to specify certain options for a workload during workload creation - currently only supporting KAT Optionality for Regional Controls workloads.
  const WorkloadState({
    this.billingAccount,
    this.complianceRegime,
    this.complianceStatuses,
    this.compliantButDisallowedServices,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.ekmProvisioningResponses,
    this.enableSovereignControls,
    this.kajEnrollmentState,
    this.kmsSettings,
    this.labels,
    this.location,
    this.name,
    this.organization,
    this.partner,
    this.partnerPermissions,
    this.partnerServicesBillingAccount,
    this.provisionedResourcesParent,
    this.pulumiLabels,
    this.resourceSettings,
    this.resources,
    this.saaEnrollmentResponses,
    this.violationNotificationsEnabled,
    this.workloadOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'complianceRegime': ?complianceRegime,
      'complianceStatuses': ?pulumi.Input.mapOptionalInputValue<List<WorkloadComplianceStatus>, List<Map<String, dynamic>>>(complianceStatuses, (value) => pulumi.Input.encodeList<WorkloadComplianceStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'compliantButDisallowedServices': ?compliantButDisallowedServices,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'ekmProvisioningResponses': ?pulumi.Input.mapOptionalInputValue<List<WorkloadEkmProvisioningResponse>, List<Map<String, dynamic>>>(ekmProvisioningResponses, (value) => pulumi.Input.encodeList<WorkloadEkmProvisioningResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableSovereignControls': ?enableSovereignControls,
      'kajEnrollmentState': ?kajEnrollmentState,
      'kmsSettings': ?pulumi.Input.mapOptionalInputValue<WorkloadKmsSettings, Map<String, dynamic>>(kmsSettings, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'partner': ?partner,
      'partnerPermissions': ?pulumi.Input.mapOptionalInputValue<WorkloadPartnerPermissions, Map<String, dynamic>>(partnerPermissions, (value) => value.toMap()),
      'partnerServicesBillingAccount': ?partnerServicesBillingAccount,
      'provisionedResourcesParent': ?provisionedResourcesParent,
      'pulumiLabels': ?pulumiLabels,
      'resourceSettings': ?pulumi.Input.mapOptionalInputValue<List<WorkloadResourceSetting>, List<Map<String, dynamic>>>(resourceSettings, (value) => pulumi.Input.encodeList<WorkloadResourceSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<List<WorkloadResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<WorkloadResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'saaEnrollmentResponses': ?pulumi.Input.mapOptionalInputValue<List<WorkloadSaaEnrollmentResponse>, List<Map<String, dynamic>>>(saaEnrollmentResponses, (value) => pulumi.Input.encodeList<WorkloadSaaEnrollmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'violationNotificationsEnabled': ?violationNotificationsEnabled,
      'workloadOptions': ?pulumi.Input.mapOptionalInputValue<WorkloadWorkloadOptions, Map<String, dynamic>>(workloadOptions, (value) => value.toMap()),
    };
  }

  factory WorkloadState.fromMap(Map<String, dynamic> map) {
    return WorkloadState(
      billingAccount: (() { final guardedValue = map['billingAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      complianceRegime: (() { final guardedValue = map['complianceRegime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      complianceStatuses: (() { final guardedValue = map['complianceStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadComplianceStatus>(guardedValue, (value) => WorkloadComplianceStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      compliantButDisallowedServices: (() { final guardedValue = map['compliantButDisallowedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ekmProvisioningResponses: (() { final guardedValue = map['ekmProvisioningResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadEkmProvisioningResponse>(guardedValue, (value) => WorkloadEkmProvisioningResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableSovereignControls: (() { final guardedValue = map['enableSovereignControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kajEnrollmentState: (() { final guardedValue = map['kajEnrollmentState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsSettings: (() { final guardedValue = map['kmsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadKmsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partner: (() { final guardedValue = map['partner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerPermissions: (() { final guardedValue = map['partnerPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadPartnerPermissions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partnerServicesBillingAccount: (() { final guardedValue = map['partnerServicesBillingAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedResourcesParent: (() { final guardedValue = map['provisionedResourcesParent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceSettings: (() { final guardedValue = map['resourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadResourceSetting>(guardedValue, (value) => WorkloadResourceSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadResource>(guardedValue, (value) => WorkloadResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      saaEnrollmentResponses: (() { final guardedValue = map['saaEnrollmentResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadSaaEnrollmentResponse>(guardedValue, (value) => WorkloadSaaEnrollmentResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      violationNotificationsEnabled: (() { final guardedValue = map['violationNotificationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workloadOptions: (() { final guardedValue = map['workloadOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadWorkloadOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
