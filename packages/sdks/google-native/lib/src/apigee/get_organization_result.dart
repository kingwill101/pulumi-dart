// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_addons_config_response.dart';
import 'google_cloud_apigee_v1_properties_response.dart';

/// Result data returned by getOrganization.
class GetOrganizationResult {
  /// Addon configurations of the Apigee organization.
  final GoogleCloudApigeeV1AddonsConfigResponse addonsConfig;
  /// DEPRECATED: This field will eventually be deprecated and replaced with a differently-named field. Primary Google Cloud region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  final String analyticsRegion;
  /// Cloud KMS key name used for encrypting API consumer data. Required for US/EU regions when [BillingType](#BillingType) is `SUBSCRIPTION`. When [BillingType](#BillingType) is `EVALUATION` or the region is not US/EU, a Google-Managed encryption key will be used. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final String apiConsumerDataEncryptionKeyName;
  /// This field is needed only for customers with control plane in US or EU. Apigee stores some control plane data only in single region. This field determines which single region Apigee should use. For example: "us-west1" when control plane is in US or "europe-west2" when control plane is in EU.
  final String apiConsumerDataLocation;
  /// Apigee Project ID associated with the organization. Use this project to allowlist Apigee in the Service Attachment when using private service connect with Apigee.
  final String apigeeProjectId;
  /// Not used by Apigee.
  final List<String> attributes;
  /// Compute Engine network used for Service Networking to be peered with Apigee runtime instances. See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started). Valid only when [RuntimeType](#RuntimeType) is set to `CLOUD`. The value must be set before the creation of a runtime instance and can be updated only when there are no runtime instances. For example: `default`. Apigee also supports shared VPC (that is, the host network project is not the same as the one that is peering with Apigee). See [Shared VPC overview](https://cloud.google.com/vpc/docs/shared-vpc). To use a shared VPC network, use the following format: `projects/{host-project-id}/{region}/networks/{network-name}`. For example: `projects/my-sharedvpc-host/global/networks/mynetwork` **Note:** Not supported for Apigee hybrid.
  final String authorizedNetwork;
  /// Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
  final String billingType;
  /// Base64-encoded public certificate for the root CA of the Apigee organization. Valid only when [RuntimeType](#RuntimeType) is `CLOUD`.
  final String caCertificate;
  /// Cloud KMS key name used for encrypting control plane data that is stored in a multi region. Required when [BillingType](#BillingType) is `SUBSCRIPTION`. When [BillingType](#BillingType) is `EVALUATION`, a Google-Managed encryption key will be used. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final String controlPlaneEncryptionKeyName;
  /// Time that the Apigee organization was created in milliseconds since epoch.
  final String createdAt;
  /// Not used by Apigee.
  final String customerName;
  /// Description of the Apigee organization.
  final String description;
  /// Optional. Flag that specifies whether the VPC Peering through Private Google Access should be disabled between the consumer network and Apigee. Valid only when RuntimeType is set to CLOUD. Required if an authorizedNetwork on the consumer project is not provided, in which case the flag should be set to true. The value must be set before the creation of any Apigee runtime instance and can be updated only when there are no runtime instances. **Note:** Apigee will be deprecating the vpc peering model that requires you to provide 'authorizedNetwork', by making the non-peering model as the default way of provisioning Apigee organization in future. So, this will be a temporary flag to enable the transition. Not supported for Apigee hybrid.
  final bool disableVpcPeering;
  /// Display name for the Apigee organization. Unused, but reserved for future use.
  final String displayName;
  /// List of environments in the Apigee organization.
  final List<String> environments;
  /// Time that the Apigee organization is scheduled for deletion.
  final String expiresAt;
  /// Time that the Apigee organization was last modified in milliseconds since epoch.
  final String lastModifiedAt;
  /// Name of the Apigee organization.
  final String name;
  /// Configuration for the Portals settings.
  final bool portalDisabled;
  /// Project ID associated with the Apigee organization.
  final String project;
  /// Properties defined in the Apigee organization profile.
  final GoogleCloudApigeeV1PropertiesResponse properties;
  /// Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances. Update is not allowed after the organization is created. Required when [RuntimeType](#RuntimeType) is `CLOUD`. If not specified when [RuntimeType](#RuntimeType) is `TRIAL`, a Google-Managed encryption key will be used. For example: "projects/foo/locations/us/keyRings/bar/cryptoKeys/baz". **Note:** Not supported for Apigee hybrid.
  final String runtimeDatabaseEncryptionKeyName;
  /// Runtime type of the Apigee organization based on the Apigee subscription purchased.
  final String runtimeType_;
  /// State of the organization. Values other than ACTIVE means the resource is not ready to use.
  final String state;
  /// Subscription plan that the customer has purchased. Output only.
  final String subscriptionPlan;
  /// DEPRECATED: This will eventually be replaced by BillingType. Subscription type of the Apigee organization. Valid values include trial (free, limited, and for evaluation purposes only) or paid (full subscription has been purchased). See [Apigee pricing](https://cloud.google.com/apigee/pricing/).
  final String subscriptionType;
  /// Not used by Apigee.
  final String type;

  /// Creates a new [GetOrganizationResult].
  /// [addonsConfig] Addon configurations of the Apigee organization.
  /// [analyticsRegion] DEPRECATED: This field will eventually be deprecated and replaced with a differently-named field. Primary Google Cloud region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  /// [apiConsumerDataEncryptionKeyName] Cloud KMS key name used for encrypting API consumer data. Required for US/EU regions when [BillingType](#BillingType) is `SUBSCRIPTION`. When [BillingType](#BillingType) is `EVALUATION` or the region is not US/EU, a Google-Managed encryption key will be used. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  /// [apiConsumerDataLocation] This field is needed only for customers with control plane in US or EU. Apigee stores some control plane data only in single region. This field determines which single region Apigee should use. For example: "us-west1" when control plane is in US or "europe-west2" when control plane is in EU.
  /// [apigeeProjectId] Apigee Project ID associated with the organization. Use this project to allowlist Apigee in the Service Attachment when using private service connect with Apigee.
  /// [attributes] Not used by Apigee.
  /// [authorizedNetwork] Compute Engine network used for Service Networking to be peered with Apigee runtime instances. See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started). Valid only when [RuntimeType](#RuntimeType) is set to `CLOUD`. The value must be set before the creation of a runtime instance and can be updated only when there are no runtime instances. For example: `default`. Apigee also supports shared VPC (that is, the host network project is not the same as the one that is peering with Apigee). See [Shared VPC overview](https://cloud.google.com/vpc/docs/shared-vpc). To use a shared VPC network, use the following format: `projects/{host-project-id}/{region}/networks/{network-name}`. For example: `projects/my-sharedvpc-host/global/networks/mynetwork` **Note:** Not supported for Apigee hybrid.
  /// [billingType] Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
  /// [caCertificate] Base64-encoded public certificate for the root CA of the Apigee organization. Valid only when [RuntimeType](#RuntimeType) is `CLOUD`.
  /// [controlPlaneEncryptionKeyName] Cloud KMS key name used for encrypting control plane data that is stored in a multi region. Required when [BillingType](#BillingType) is `SUBSCRIPTION`. When [BillingType](#BillingType) is `EVALUATION`, a Google-Managed encryption key will be used. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  /// [createdAt] Time that the Apigee organization was created in milliseconds since epoch.
  /// [customerName] Not used by Apigee.
  /// [description] Description of the Apigee organization.
  /// [disableVpcPeering] Optional. Flag that specifies whether the VPC Peering through Private Google Access should be disabled between the consumer network and Apigee. Valid only when RuntimeType is set to CLOUD. Required if an authorizedNetwork on the consumer project is not provided, in which case the flag should be set to true. The value must be set before the creation of any Apigee runtime instance and can be updated only when there are no runtime instances. **Note:** Apigee will be deprecating the vpc peering model that requires you to provide 'authorizedNetwork', by making the non-peering model as the default way of provisioning Apigee organization in future. So, this will be a temporary flag to enable the transition. Not supported for Apigee hybrid.
  /// [displayName] Display name for the Apigee organization. Unused, but reserved for future use.
  /// [environments] List of environments in the Apigee organization.
  /// [expiresAt] Time that the Apigee organization is scheduled for deletion.
  /// [lastModifiedAt] Time that the Apigee organization was last modified in milliseconds since epoch.
  /// [name] Name of the Apigee organization.
  /// [portalDisabled] Configuration for the Portals settings.
  /// [project] Project ID associated with the Apigee organization.
  /// [properties] Properties defined in the Apigee organization profile.
  /// [runtimeDatabaseEncryptionKeyName] Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances. Update is not allowed after the organization is created. Required when [RuntimeType](#RuntimeType) is `CLOUD`. If not specified when [RuntimeType](#RuntimeType) is `TRIAL`, a Google-Managed encryption key will be used. For example: "projects/foo/locations/us/keyRings/bar/cryptoKeys/baz". **Note:** Not supported for Apigee hybrid.
  /// [runtimeType_] Runtime type of the Apigee organization based on the Apigee subscription purchased.
  /// [state] State of the organization. Values other than ACTIVE means the resource is not ready to use.
  /// [subscriptionPlan] Subscription plan that the customer has purchased. Output only.
  /// [subscriptionType] DEPRECATED: This will eventually be replaced by BillingType. Subscription type of the Apigee organization. Valid values include trial (free, limited, and for evaluation purposes only) or paid (full subscription has been purchased). See [Apigee pricing](https://cloud.google.com/apigee/pricing/).
  /// [type] Not used by Apigee.
  const GetOrganizationResult({
    required this.addonsConfig,
    required this.analyticsRegion,
    required this.apiConsumerDataEncryptionKeyName,
    required this.apiConsumerDataLocation,
    required this.apigeeProjectId,
    required this.attributes,
    required this.authorizedNetwork,
    required this.billingType,
    required this.caCertificate,
    required this.controlPlaneEncryptionKeyName,
    required this.createdAt,
    required this.customerName,
    required this.description,
    required this.disableVpcPeering,
    required this.displayName,
    required this.environments,
    required this.expiresAt,
    required this.lastModifiedAt,
    required this.name,
    required this.portalDisabled,
    required this.project,
    required this.properties,
    required this.runtimeDatabaseEncryptionKeyName,
    required this.runtimeType_,
    required this.state,
    required this.subscriptionPlan,
    required this.subscriptionType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfig': addonsConfig.toMap(),
      'analyticsRegion': analyticsRegion,
      'apiConsumerDataEncryptionKeyName': apiConsumerDataEncryptionKeyName,
      'apiConsumerDataLocation': apiConsumerDataLocation,
      'apigeeProjectId': apigeeProjectId,
      'attributes': attributes,
      'authorizedNetwork': authorizedNetwork,
      'billingType': billingType,
      'caCertificate': caCertificate,
      'controlPlaneEncryptionKeyName': controlPlaneEncryptionKeyName,
      'createdAt': createdAt,
      'customerName': customerName,
      'description': description,
      'disableVpcPeering': disableVpcPeering,
      'displayName': displayName,
      'environments': environments,
      'expiresAt': expiresAt,
      'lastModifiedAt': lastModifiedAt,
      'name': name,
      'portalDisabled': portalDisabled,
      'project': project,
      'properties': properties.toMap(),
      'runtimeDatabaseEncryptionKeyName': runtimeDatabaseEncryptionKeyName,
      'runtimeType': runtimeType_,
      'state': state,
      'subscriptionPlan': subscriptionPlan,
      'subscriptionType': subscriptionType,
      'type': type,
    };
  }

  factory GetOrganizationResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationResult(
      addonsConfig: GoogleCloudApigeeV1AddonsConfigResponse.fromMap((map['addonsConfig']! as Map).cast<String, dynamic>()),
      analyticsRegion: map['analyticsRegion'] as String,
      apiConsumerDataEncryptionKeyName: map['apiConsumerDataEncryptionKeyName'] as String,
      apiConsumerDataLocation: map['apiConsumerDataLocation'] as String,
      apigeeProjectId: map['apigeeProjectId'] as String,
      attributes: (map['attributes'] as List).cast<String>(),
      authorizedNetwork: map['authorizedNetwork'] as String,
      billingType: map['billingType'] as String,
      caCertificate: map['caCertificate'] as String,
      controlPlaneEncryptionKeyName: map['controlPlaneEncryptionKeyName'] as String,
      createdAt: map['createdAt'] as String,
      customerName: map['customerName'] as String,
      description: map['description'] as String,
      disableVpcPeering: map['disableVpcPeering'] as bool,
      displayName: map['displayName'] as String,
      environments: (map['environments'] as List).cast<String>(),
      expiresAt: map['expiresAt'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      name: map['name'] as String,
      portalDisabled: map['portalDisabled'] as bool,
      project: map['project'] as String,
      properties: GoogleCloudApigeeV1PropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      runtimeDatabaseEncryptionKeyName: map['runtimeDatabaseEncryptionKeyName'] as String,
      runtimeType_: map['runtimeType'] as String,
      state: map['state'] as String,
      subscriptionPlan: map['subscriptionPlan'] as String,
      subscriptionType: map['subscriptionType'] as String,
      type: map['type'] as String,
    );
  }
}
