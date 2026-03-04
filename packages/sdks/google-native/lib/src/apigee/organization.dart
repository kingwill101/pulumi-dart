import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_addons_config_response.dart';
import 'google_cloud_apigee_v1_properties_response.dart';
import 'organization_args.dart';

/// Creates an Apigee organization. See [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
/// Auto-naming is currently not supported for this resource.
class Organization extends pulumi.CustomResource {
  /// Addon configurations of the Apigee organization.
  late final pulumi.Output<GoogleCloudApigeeV1AddonsConfigResponse>
  addonsConfig;

  /// DEPRECATED: This field will eventually be deprecated and replaced with a differently-named field. Primary Google Cloud region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  late final pulumi.Output<String> analyticsRegion;

  /// Cloud KMS key name used for encrypting API consumer data. Required for US/EU regions when [BillingType](#BillingType) is `SUBSCRIPTION`. When [BillingType](#BillingType) is `EVALUATION` or the region is not US/EU, a Google-Managed encryption key will be used. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  late final pulumi.Output<String> apiConsumerDataEncryptionKeyName;

  /// This field is needed only for customers with control plane in US or EU. Apigee stores some control plane data only in single region. This field determines which single region Apigee should use. For example: "us-west1" when control plane is in US or "europe-west2" when control plane is in EU.
  late final pulumi.Output<String> apiConsumerDataLocation;

  /// Apigee Project ID associated with the organization. Use this project to allowlist Apigee in the Service Attachment when using private service connect with Apigee.
  late final pulumi.Output<String> apigeeProjectId;

  /// Not used by Apigee.
  late final pulumi.Output<List<String>> attributes;

  /// Compute Engine network used for Service Networking to be peered with Apigee runtime instances. See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started). Valid only when [RuntimeType](#RuntimeType) is set to `CLOUD`. The value must be set before the creation of a runtime instance and can be updated only when there are no runtime instances. For example: `default`. Apigee also supports shared VPC (that is, the host network project is not the same as the one that is peering with Apigee). See [Shared VPC overview](https://cloud.google.com/vpc/docs/shared-vpc). To use a shared VPC network, use the following format: `projects/{host-project-id}/{region}/networks/{network-name}`. For example: `projects/my-sharedvpc-host/global/networks/mynetwork` **Note:** Not supported for Apigee hybrid.
  late final pulumi.Output<String> authorizedNetwork;

  /// Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
  late final pulumi.Output<String> billingType;

  /// Base64-encoded public certificate for the root CA of the Apigee organization. Valid only when [RuntimeType](#RuntimeType) is `CLOUD`.
  late final pulumi.Output<String> caCertificate;

  /// Cloud KMS key name used for encrypting control plane data that is stored in a multi region. Required when [BillingType](#BillingType) is `SUBSCRIPTION`. When [BillingType](#BillingType) is `EVALUATION`, a Google-Managed encryption key will be used. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  late final pulumi.Output<String> controlPlaneEncryptionKeyName;

  /// Time that the Apigee organization was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// Not used by Apigee.
  late final pulumi.Output<String> customerName;

  /// Description of the Apigee organization.
  late final pulumi.Output<String> description;

  /// Optional. Flag that specifies whether the VPC Peering through Private Google Access should be disabled between the consumer network and Apigee. Valid only when RuntimeType is set to CLOUD. Required if an authorizedNetwork on the consumer project is not provided, in which case the flag should be set to true. The value must be set before the creation of any Apigee runtime instance and can be updated only when there are no runtime instances. **Note:** Apigee will be deprecating the vpc peering model that requires you to provide 'authorizedNetwork', by making the non-peering model as the default way of provisioning Apigee organization in future. So, this will be a temporary flag to enable the transition. Not supported for Apigee hybrid.
  late final pulumi.Output<bool> disableVpcPeering;

  /// Display name for the Apigee organization. Unused, but reserved for future use.
  late final pulumi.Output<String> displayName;

  /// List of environments in the Apigee organization.
  late final pulumi.Output<List<String>> environments;

  /// Time that the Apigee organization is scheduled for deletion.
  late final pulumi.Output<String> expiresAt;

  /// Time that the Apigee organization was last modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// Name of the Apigee organization.
  late final pulumi.Output<String> name;

  /// Required. Name of the Google Cloud project in which to associate the Apigee organization. Pass the information as a query parameter using the following structure in your request: `projects/`
  late final pulumi.Output<String> parent;

  /// Configuration for the Portals settings.
  late final pulumi.Output<bool> portalDisabled;

  /// Project ID associated with the Apigee organization.
  late final pulumi.Output<String> project;

  /// Properties defined in the Apigee organization profile.
  late final pulumi.Output<GoogleCloudApigeeV1PropertiesResponse> properties;

  /// Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances. Update is not allowed after the organization is created. Required when [RuntimeType](#RuntimeType) is `CLOUD`. If not specified when [RuntimeType](#RuntimeType) is `TRIAL`, a Google-Managed encryption key will be used. For example: "projects/foo/locations/us/keyRings/bar/cryptoKeys/baz". **Note:** Not supported for Apigee hybrid.
  late final pulumi.Output<String> runtimeDatabaseEncryptionKeyName;

  /// Runtime type of the Apigee organization based on the Apigee subscription purchased.
  late final pulumi.Output<String> runtimeType_;

  /// State of the organization. Values other than ACTIVE means the resource is not ready to use.
  late final pulumi.Output<String> state;

  /// Subscription plan that the customer has purchased. Output only.
  late final pulumi.Output<String> subscriptionPlan;

  /// DEPRECATED: This will eventually be replaced by BillingType. Subscription type of the Apigee organization. Valid values include trial (free, limited, and for evaluation purposes only) or paid (full subscription has been purchased). See [Apigee pricing](https://cloud.google.com/apigee/pricing/).
  late final pulumi.Output<String> subscriptionType;

  /// Not used by Apigee.
  late final pulumi.Output<String> type;

  /// Creates a new [Organization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Organization]. {@macro pulumi_apigee_v1_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Organization(
    String name, {
    OrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:Organization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addonsConfig = registerOutput<GoogleCloudApigeeV1AddonsConfigResponse>(
      'addonsConfig',
    );
    analyticsRegion = registerOutput<String>('analyticsRegion');
    apiConsumerDataEncryptionKeyName = registerOutput<String>(
      'apiConsumerDataEncryptionKeyName',
    );
    apiConsumerDataLocation = registerOutput<String>('apiConsumerDataLocation');
    apigeeProjectId = registerOutput<String>('apigeeProjectId');
    attributes = registerOutput<List<String>>('attributes');
    authorizedNetwork = registerOutput<String>('authorizedNetwork');
    billingType = registerOutput<String>('billingType');
    caCertificate = registerOutput<String>('caCertificate');
    controlPlaneEncryptionKeyName = registerOutput<String>(
      'controlPlaneEncryptionKeyName',
    );
    createdAt = registerOutput<String>('createdAt');
    customerName = registerOutput<String>('customerName');
    description = registerOutput<String>('description');
    disableVpcPeering = registerOutput<bool>('disableVpcPeering');
    displayName = registerOutput<String>('displayName');
    environments = registerOutput<List<String>>('environments');
    expiresAt = registerOutput<String>('expiresAt');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    portalDisabled = registerOutput<bool>('portalDisabled');
    project = registerOutput<String>('project');
    properties = registerOutput<GoogleCloudApigeeV1PropertiesResponse>(
      'properties',
    );
    runtimeDatabaseEncryptionKeyName = registerOutput<String>(
      'runtimeDatabaseEncryptionKeyName',
    );
    runtimeType_ = registerOutput<String>('runtimeType');
    state = registerOutput<String>('state');
    subscriptionPlan = registerOutput<String>('subscriptionPlan');
    subscriptionType = registerOutput<String>('subscriptionType');
    type = registerOutput<String>('type');
  }
}
