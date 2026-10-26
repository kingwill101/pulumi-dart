// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_assuredworkloads_v1_workload_compliance_status_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_ekm_provisioning_response_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_kmssettings_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_partner_permissions_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_resource_info_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_resource_settings_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_saa_enrollment_response_response.dart';

/// Result data returned by getWorkload.
class GetWorkloadResult {
  /// Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  final String? billingAccount;
  /// Immutable. Compliance Regime associated with this workload.
  final String? complianceRegime;
  /// Count of active Violations in the Workload.
  final GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse? complianceStatus;
  /// Urls for services which are compliant for this Assured Workload, but which are currently disallowed by the ResourceUsageRestriction org policy. Invoke RestrictAllowedResources endpoint to allow your project developers to use these services in their environment.
  final List<String>? compliantButDisallowedServices;
  /// Immutable. The Workload creation timestamp.
  final String? createTime;
  /// The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  final String? displayName;
  /// Represents the Ekm Provisioning State of the given workload.
  final GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse? ekmProvisioningResponse;
  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  final bool? enableSovereignControls;
  /// Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  final String? etag;
  /// Represents the KAJ enrollment state of the given workload.
  final String? kajEnrollmentState;
  /// Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  final GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse? kmsSettings;
  /// Optional. Labels applied to the workload.
  final Map<String, String>? labels;
  /// Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  final String? name;
  /// Optional. Partner regime associated with this workload.
  final String? partner;
  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  final GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse? partnerPermissions;
  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  final String? provisionedResourcesParent;
  /// Indicates whether resource monitoring is enabled for workload or not. It is true when Resource feed is subscribed to AWM topic and AWM Service Agent Role is binded to AW Service Account for resource Assured workload.
  final bool? resourceMonitoringEnabled;
  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  final List<GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse>? resourceSettings;
  /// The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.
  final List<GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse>? resources;
  /// Represents the SAA enrollment response of the given workload. SAA enrollment response is queried during GetWorkload call. In failure cases, user friendly error message is shown in SAA details page.
  final GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse? saaEnrollmentResponse;
  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  final bool? violationNotificationsEnabled;

  /// Creates a new [GetWorkloadResult].
  /// [billingAccount] Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  /// [complianceRegime] Immutable. Compliance Regime associated with this workload.
  /// [complianceStatus] Count of active Violations in the Workload.
  /// [compliantButDisallowedServices] Urls for services which are compliant for this Assured Workload, but which are currently disallowed by the ResourceUsageRestriction org policy. Invoke RestrictAllowedResources endpoint to allow your project developers to use these services in their environment.
  /// [createTime] Immutable. The Workload creation timestamp.
  /// [displayName] The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  /// [ekmProvisioningResponse] Represents the Ekm Provisioning State of the given workload.
  /// [enableSovereignControls] Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  /// [etag] Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  /// [kajEnrollmentState] Represents the KAJ enrollment state of the given workload.
  /// [kmsSettings] Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  /// [labels] Optional. Labels applied to the workload.
  /// [name] Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  /// [partner] Optional. Partner regime associated with this workload.
  /// [partnerPermissions] Optional. Permissions granted to the AW Partner SA account for the customer workload
  /// [provisionedResourcesParent] Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  /// [resourceMonitoringEnabled] Indicates whether resource monitoring is enabled for workload or not. It is true when Resource feed is subscribed to AWM topic and AWM Service Agent Role is binded to AW Service Account for resource Assured workload.
  /// [resourceSettings] Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  /// [resources] The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.
  /// [saaEnrollmentResponse] Represents the SAA enrollment response of the given workload. SAA enrollment response is queried during GetWorkload call. In failure cases, user friendly error message is shown in SAA details page.
  /// [violationNotificationsEnabled] Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  const GetWorkloadResult({
    this.billingAccount,
    this.complianceRegime,
    this.complianceStatus,
    this.compliantButDisallowedServices,
    this.createTime,
    this.displayName,
    this.ekmProvisioningResponse,
    this.enableSovereignControls,
    this.etag,
    this.kajEnrollmentState,
    this.kmsSettings,
    this.labels,
    this.name,
    this.partner,
    this.partnerPermissions,
    this.provisionedResourcesParent,
    this.resourceMonitoringEnabled,
    this.resourceSettings,
    this.resources,
    this.saaEnrollmentResponse,
    this.violationNotificationsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'complianceRegime': ?complianceRegime,
      'complianceStatus': ?complianceStatus?.toMap(),
      'compliantButDisallowedServices': ?compliantButDisallowedServices,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'ekmProvisioningResponse': ?ekmProvisioningResponse?.toMap(),
      'enableSovereignControls': ?enableSovereignControls,
      'etag': ?etag,
      'kajEnrollmentState': ?kajEnrollmentState,
      'kmsSettings': ?kmsSettings?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'partner': ?partner,
      'partnerPermissions': ?partnerPermissions?.toMap(),
      'provisionedResourcesParent': ?provisionedResourcesParent,
      'resourceMonitoringEnabled': ?resourceMonitoringEnabled,
      'resourceSettings': ?(() { final guardedValue = resourceSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'saaEnrollmentResponse': ?saaEnrollmentResponse?.toMap(),
      'violationNotificationsEnabled': ?violationNotificationsEnabled,
    };
  }

  factory GetWorkloadResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadResult(
      billingAccount: (() { final guardedValue = map['billingAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      complianceRegime: (() { final guardedValue = map['complianceRegime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      complianceStatus: (() { final guardedValue = map['complianceStatus']; if (guardedValue == null) return null; return GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      compliantButDisallowedServices: (() { final guardedValue = map['compliantButDisallowedServices']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ekmProvisioningResponse: (() { final guardedValue = map['ekmProvisioningResponse']; if (guardedValue == null) return null; return GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enableSovereignControls: (() { final guardedValue = map['enableSovereignControls']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kajEnrollmentState: (() { final guardedValue = map['kajEnrollmentState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsSettings: (() { final guardedValue = map['kmsSettings']; if (guardedValue == null) return null; return GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partner: (() { final guardedValue = map['partner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerPermissions: (() { final guardedValue = map['partnerPermissions']; if (guardedValue == null) return null; return GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisionedResourcesParent: (() { final guardedValue = map['provisionedResourcesParent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceMonitoringEnabled: (() { final guardedValue = map['resourceMonitoringEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceSettings: (() { final guardedValue = map['resourceSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse>(guardedValue, (value) => GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse>(guardedValue, (value) => GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      saaEnrollmentResponse: (() { final guardedValue = map['saaEnrollmentResponse']; if (guardedValue == null) return null; return GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      violationNotificationsEnabled: (() { final guardedValue = map['violationNotificationsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
