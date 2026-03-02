// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_assuredworkloads_v1beta1_workload_cjissettings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_fedramp_high_settings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_fedramp_moderate_settings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_il4_settings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_kmssettings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_partner_permissions.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_resource_settings.dart';
import 'workload_compliance_regime_assuredworkloads_v1beta1.dart';
import 'workload_partner_assuredworkloads_v1beta1.dart';

/// {@template pulumi_assuredworkloads_v1beta1_workload_assuredworkloads_v1beta1_args_doc}
/// The set of arguments for Workload.
/// {@endtemplate}
/// {@macro pulumi_assuredworkloads_v1beta1_workload_assuredworkloads_v1beta1_args_doc}
class WorkloadAssuredworkloadsV1beta1Args {
  /// Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  final pulumi.Input<String>? billingAccount;
  /// Input only. Immutable. Settings specific to resources needed for CJIS.
  final pulumi.Input<GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings>? cjisSettings;
  /// Immutable. Compliance Regime associated with this workload.
  final pulumi.Input<WorkloadComplianceRegimeAssuredworkloadsV1beta1> complianceRegime;
  /// The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  final pulumi.Input<String> displayName;
  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  final pulumi.Input<bool>? enableSovereignControls;
  /// Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  final pulumi.Input<String>? etag;
  /// Optional. A identifier associated with the workload and underlying projects which allows for the break down of billing costs for a workload. The value provided for the identifier will add a label to the workload and contained projects with the identifier as the value.
  final pulumi.Input<String>? externalId;
  /// Input only. Immutable. Settings specific to resources needed for FedRAMP High.
  final pulumi.Input<GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings>? fedrampHighSettings;
  /// Input only. Immutable. Settings specific to resources needed for FedRAMP Moderate.
  final pulumi.Input<GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings>? fedrampModerateSettings;
  /// Input only. Immutable. Settings specific to resources needed for IL4.
  final pulumi.Input<GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings>? il4Settings;
  /// Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  final pulumi.Input<GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings>? kmsSettings;
  /// Optional. Labels applied to the workload.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Optional. Partner regime associated with this workload.
  final pulumi.Input<WorkloadPartnerAssuredworkloadsV1beta1>? partner;
  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  final pulumi.Input<GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions>? partnerPermissions;
  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  final pulumi.Input<String>? provisionedResourcesParent;
  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  final pulumi.Input<List<GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>>? resourceSettings;
  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  final pulumi.Input<bool>? violationNotificationsEnabled;

  /// Creates a new [WorkloadAssuredworkloadsV1beta1Args].
  /// [billingAccount] Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  /// [cjisSettings] Input only. Immutable. Settings specific to resources needed for CJIS.
  /// [complianceRegime] Immutable. Compliance Regime associated with this workload.
  /// [displayName] The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  /// [enableSovereignControls] Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  /// [etag] Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  /// [externalId] Optional. A identifier associated with the workload and underlying projects which allows for the break down of billing costs for a workload. The value provided for the identifier will add a label to the workload and contained projects with the identifier as the value.
  /// [fedrampHighSettings] Input only. Immutable. Settings specific to resources needed for FedRAMP High.
  /// [fedrampModerateSettings] Input only. Immutable. Settings specific to resources needed for FedRAMP Moderate.
  /// [il4Settings] Input only. Immutable. Settings specific to resources needed for IL4.
  /// [kmsSettings] Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  /// [labels] Optional. Labels applied to the workload.
  /// [location] Optional.
  /// [name] Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  /// [organizationId] Required.
  /// [partner] Optional. Partner regime associated with this workload.
  /// [partnerPermissions] Optional. Permissions granted to the AW Partner SA account for the customer workload
  /// [provisionedResourcesParent] Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  /// [resourceSettings] Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  /// [violationNotificationsEnabled] Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  WorkloadAssuredworkloadsV1beta1Args({
    this.billingAccount,
    this.cjisSettings,
    required this.complianceRegime,
    required this.displayName,
    this.enableSovereignControls,
    this.etag,
    this.externalId,
    this.fedrampHighSettings,
    this.fedrampModerateSettings,
    this.il4Settings,
    this.kmsSettings,
    this.labels,
    this.location,
    this.name,
    required this.organizationId,
    this.partner,
    this.partnerPermissions,
    this.provisionedResourcesParent,
    this.resourceSettings,
    this.violationNotificationsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'cjisSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings, Map<String, dynamic>>(cjisSettings, (value) => value.toMap()),
      'complianceRegime': pulumi.Input.mapInputValue<WorkloadComplianceRegimeAssuredworkloadsV1beta1, String>(complianceRegime, (value) => value.value),
      'displayName': displayName,
      'enableSovereignControls': ?enableSovereignControls,
      'etag': ?etag,
      'externalId': ?externalId,
      'fedrampHighSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings, Map<String, dynamic>>(fedrampHighSettings, (value) => value.toMap()),
      'fedrampModerateSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings, Map<String, dynamic>>(fedrampModerateSettings, (value) => value.toMap()),
      'il4Settings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings, Map<String, dynamic>>(il4Settings, (value) => value.toMap()),
      'kmsSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings, Map<String, dynamic>>(kmsSettings, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'organizationId': organizationId,
      'partner': ?pulumi.Input.mapOptionalInputValue<WorkloadPartnerAssuredworkloadsV1beta1, String>(partner, (value) => value.value),
      'partnerPermissions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions, Map<String, dynamic>>(partnerPermissions, (value) => value.toMap()),
      'provisionedResourcesParent': ?provisionedResourcesParent,
      'resourceSettings': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>, List<Map<String, dynamic>>>(resourceSettings, (value) => pulumi.Input.encodeList<GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'violationNotificationsEnabled': ?violationNotificationsEnabled,
    };
  }

  factory WorkloadAssuredworkloadsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return WorkloadAssuredworkloadsV1beta1Args(
      billingAccount: map['billingAccount'] == null ? null : (map['billingAccount']! as String).input(),
      cjisSettings: map['cjisSettings'] == null ? null : (GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings.fromMap((map['cjisSettings']! as Map).cast<String, dynamic>())).input(),
      complianceRegime: (WorkloadComplianceRegimeAssuredworkloadsV1beta1.fromValue(map['complianceRegime'] as String)).input(),
      displayName: (map['displayName'] as String).input(),
      enableSovereignControls: map['enableSovereignControls'] == null ? null : (map['enableSovereignControls']! as bool).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId']! as String).input(),
      fedrampHighSettings: map['fedrampHighSettings'] == null ? null : (GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings.fromMap((map['fedrampHighSettings']! as Map).cast<String, dynamic>())).input(),
      fedrampModerateSettings: map['fedrampModerateSettings'] == null ? null : (GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings.fromMap((map['fedrampModerateSettings']! as Map).cast<String, dynamic>())).input(),
      il4Settings: map['il4Settings'] == null ? null : (GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings.fromMap((map['il4Settings']! as Map).cast<String, dynamic>())).input(),
      kmsSettings: map['kmsSettings'] == null ? null : (GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromMap((map['kmsSettings']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      partner: map['partner'] == null ? null : (WorkloadPartnerAssuredworkloadsV1beta1.fromValue(map['partner']! as String)).input(),
      partnerPermissions: map['partnerPermissions'] == null ? null : (GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions.fromMap((map['partnerPermissions']! as Map).cast<String, dynamic>())).input(),
      provisionedResourcesParent: map['provisionedResourcesParent'] == null ? null : (map['provisionedResourcesParent']! as String).input(),
      resourceSettings: map['resourceSettings'] == null ? null : (pulumi.Input.decodeList<GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>(map['resourceSettings']!, (value) => GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings.fromMap((value as Map).cast<String, dynamic>()))).input(),
      violationNotificationsEnabled: map['violationNotificationsEnabled'] == null ? null : (map['violationNotificationsEnabled']! as bool).input(),
    );
  }
}

