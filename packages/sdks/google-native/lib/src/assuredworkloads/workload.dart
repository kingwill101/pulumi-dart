import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_assuredworkloads_v1_workload_compliance_status_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_ekm_provisioning_response_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_kmssettings_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_partner_permissions_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_saa_enrollment_response_response.dart';
import 'workload_args.dart';

/// Creates Assured Workload.
class Workload extends pulumi.CustomResource {
  /// Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  late final pulumi.Output<String> billingAccount;

  /// Immutable. Compliance Regime associated with this workload.
  late final pulumi.Output<String> complianceRegime;

  /// Count of active Violations in the Workload.
  late final pulumi.Output<
    GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse
  >
  complianceStatus;

  /// Urls for services which are compliant for this Assured Workload, but which are currently disallowed by the ResourceUsageRestriction org policy. Invoke RestrictAllowedResources endpoint to allow your project developers to use these services in their environment.
  late final pulumi.Output<List<String>> compliantButDisallowedServices;

  /// Immutable. The Workload creation timestamp.
  late final pulumi.Output<String> createTime;

  /// The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  late final pulumi.Output<String> displayName;

  /// Represents the Ekm Provisioning State of the given workload.
  late final pulumi.Output<
    GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse
  >
  ekmProvisioningResponse;

  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  late final pulumi.Output<bool> enableSovereignControls;

  /// Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  late final pulumi.Output<String> etag;

  /// Optional. A identifier associated with the workload and underlying projects which allows for the break down of billing costs for a workload. The value provided for the identifier will add a label to the workload and contained projects with the identifier as the value.
  late final pulumi.Output<String?> externalId;

  /// Represents the KAJ enrollment state of the given workload.
  late final pulumi.Output<String> kajEnrollmentState;

  /// Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  late final pulumi.Output<
    GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse
  >
  kmsSettings;

  /// Optional. Labels applied to the workload.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Optional. Partner regime associated with this workload.
  late final pulumi.Output<String> partner;

  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  late final pulumi.Output<
    GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse
  >
  partnerPermissions;

  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  late final pulumi.Output<String> provisionedResourcesParent;

  /// Indicates whether resource monitoring is enabled for workload or not. It is true when Resource feed is subscribed to AWM topic and AWM Service Agent Role is binded to AW Service Account for resource Assured workload.
  late final pulumi.Output<bool> resourceMonitoringEnabled;

  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  late final pulumi.Output<List<Map<String, dynamic>>> resourceSettings;

  /// The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.
  late final pulumi.Output<List<Map<String, dynamic>>> resources;

  /// Represents the SAA enrollment response of the given workload. SAA enrollment response is queried during GetWorkload call. In failure cases, user friendly error message is shown in SAA details page.
  late final pulumi.Output<
    GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse
  >
  saaEnrollmentResponse;

  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  late final pulumi.Output<bool> violationNotificationsEnabled;

  /// Creates a new [Workload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workload]. {@macro pulumi_assuredworkloads_v1_workload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workload(
    String name, {
    WorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:assuredworkloads/v1:Workload',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    billingAccount = registerOutput<String>('billingAccount');
    complianceRegime = registerOutput<String>('complianceRegime');
    complianceStatus =
        registerOutput<
          GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse
        >(
          'complianceStatus',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    compliantButDisallowedServices = registerOutput<List<String>>(
      'compliantButDisallowedServices',
    );
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    ekmProvisioningResponse =
        registerOutput<
          GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse
        >(
          'ekmProvisioningResponse',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    enableSovereignControls = registerOutput<bool>('enableSovereignControls');
    etag = registerOutput<String>('etag');
    externalId = registerOutput<String?>('externalId');
    kajEnrollmentState = registerOutput<String>('kajEnrollmentState');
    kmsSettings =
        registerOutput<
          GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse
        >(
          'kmsSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    partner = registerOutput<String>('partner');
    partnerPermissions =
        registerOutput<
          GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse
        >(
          'partnerPermissions',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    provisionedResourcesParent = registerOutput<String>(
      'provisionedResourcesParent',
    );
    resourceMonitoringEnabled = registerOutput<bool>(
      'resourceMonitoringEnabled',
    );
    resourceSettings = registerOutput<List<Map<String, dynamic>>>(
      'resourceSettings',
    );
    resources = registerOutput<List<Map<String, dynamic>>>('resources');
    saaEnrollmentResponse =
        registerOutput<
          GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse
        >(
          'saaEnrollmentResponse',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    violationNotificationsEnabled = registerOutput<bool>(
      'violationNotificationsEnabled',
    );
  }
}
