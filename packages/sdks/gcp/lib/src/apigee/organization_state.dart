// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_properties.dart';

/// Input properties used for looking up and filtering Organization resources.
class OrganizationState {
  /// Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  final pulumi.Input<String>? analyticsRegion;
  /// Cloud KMS key name used for encrypting API consumer data.
  final pulumi.Input<String>? apiConsumerDataEncryptionKeyName;
  /// This field is needed only for customers using non-default data residency regions.
  /// Apigee stores some control plane data only in single region.
  /// This field determines which single region Apigee should use.
  final pulumi.Input<String>? apiConsumerDataLocation;
  /// Output only. Project ID of the Apigee Tenant Project.
  final pulumi.Input<String>? apigeeProjectId;
  /// Compute Engine network used for Service Networking to be peered with Apigee runtime instances.
  /// See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).
  /// Valid only when `RuntimeType` is set to CLOUD. The value can be updated only when there are no runtime instances. For example: "default".
  final pulumi.Input<String>? authorizedNetwork;
  /// Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
  final pulumi.Input<String>? billingType;
  /// Output only. Base64-encoded public certificate for the root CA of the Apigee organization.
  /// Valid only when `RuntimeType` is CLOUD. A base64-encoded string.
  final pulumi.Input<String>? caCertificate;
  /// Cloud KMS key name used for encrypting control plane data that is stored in a multi region.
  /// Only used for the data residency region "US" or "EU".
  final pulumi.Input<String>? controlPlaneEncryptionKeyName;
  /// Description of the Apigee organization.
  final pulumi.Input<String>? description;
  /// Flag that specifies whether the VPC Peering through Private Google Access should be
  /// disabled between the consumer network and Apigee. Required if an `authorizedNetwork`
  /// on the consumer project is not provided, in which case the flag should be set to `true`.
  /// Valid only when `RuntimeType` is set to CLOUD. The value must be set before the creation
  /// of any Apigee runtime instance and can be updated only when there are no runtime instances.
  final pulumi.Input<bool>? disableVpcPeering;
  /// The display name of the Apigee organization.
  final pulumi.Input<String>? displayName;
  /// Output only. Name of the Apigee organization.
  final pulumi.Input<String>? name;
  /// The project ID associated with the Apigee organization.
  final pulumi.Input<String>? projectId;
  /// Properties defined in the Apigee organization profile.
  /// Structure is documented below.
  final pulumi.Input<OrganizationProperties>? properties;
  /// Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType
  /// is not EVALUATION). It controls how long Organization data will be retained after the initial delete
  /// operation completes. During this period, the Organization may be restored to its last known state.
  /// After this period, the Organization will no longer be able to be restored.
  /// Default value is `DELETION_RETENTION_UNSPECIFIED`.
  /// Possible values are: `DELETION_RETENTION_UNSPECIFIED`, `MINIMUM`.
  final pulumi.Input<String>? retention;
  /// Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.
  /// Update is not allowed after the organization is created.
  /// If not specified, a Google-Managed encryption key will be used.
  /// Valid only when `RuntimeType` is CLOUD. For example: `projects/foo/locations/us/keyRings/bar/cryptoKeys/baz`.
  final pulumi.Input<String>? runtimeDatabaseEncryptionKeyName;
  /// Runtime type of the Apigee organization based on the Apigee subscription purchased.
  /// Default value is `CLOUD`.
  /// Possible values are: `CLOUD`, `HYBRID`.
  final pulumi.Input<String>? runtimeType_;
  /// Output only. Subscription type of the Apigee organization.
  /// Valid values include trial (free, limited, and for evaluation purposes only) or paid (full subscription has been purchased).
  final pulumi.Input<String>? subscriptionType;

  /// Creates a new [OrganizationState].
  /// [analyticsRegion] Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  /// [apiConsumerDataEncryptionKeyName] Cloud KMS key name used for encrypting API consumer data.
  /// [apiConsumerDataLocation] This field is needed only for customers using non-default data residency regions.
  /// [apigeeProjectId] Output only. Project ID of the Apigee Tenant Project.
  /// [authorizedNetwork] Compute Engine network used for Service Networking to be peered with Apigee runtime instances.
  /// [billingType] Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
  /// [caCertificate] Output only. Base64-encoded public certificate for the root CA of the Apigee organization.
  /// [controlPlaneEncryptionKeyName] Cloud KMS key name used for encrypting control plane data that is stored in a multi region.
  /// [description] Description of the Apigee organization.
  /// [disableVpcPeering] Flag that specifies whether the VPC Peering through Private Google Access should be
  /// [displayName] The display name of the Apigee organization.
  /// [name] Output only. Name of the Apigee organization.
  /// [projectId] The project ID associated with the Apigee organization.
  /// [properties] Properties defined in the Apigee organization profile.
  /// [retention] Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType
  /// [runtimeDatabaseEncryptionKeyName] Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.
  /// [runtimeType_] Runtime type of the Apigee organization based on the Apigee subscription purchased.
  /// [subscriptionType] Output only. Subscription type of the Apigee organization.
  OrganizationState({
    pulumi.Output<String>? analyticsRegion,
    pulumi.Output<String>? apiConsumerDataEncryptionKeyName,
    pulumi.Output<String>? apiConsumerDataLocation,
    pulumi.Output<String>? apigeeProjectId,
    pulumi.Output<String>? authorizedNetwork,
    pulumi.Output<String>? billingType,
    pulumi.Output<String>? caCertificate,
    pulumi.Output<String>? controlPlaneEncryptionKeyName,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disableVpcPeering,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<OrganizationProperties>? properties,
    pulumi.Output<String>? retention,
    pulumi.Output<String>? runtimeDatabaseEncryptionKeyName,
    pulumi.Output<String>? runtimeType_,
    pulumi.Output<String>? subscriptionType,
  }) :
      analyticsRegion = pulumi.Input.asOptionalInput<String>(analyticsRegion),
      apiConsumerDataEncryptionKeyName = pulumi.Input.asOptionalInput<String>(apiConsumerDataEncryptionKeyName),
      apiConsumerDataLocation = pulumi.Input.asOptionalInput<String>(apiConsumerDataLocation),
      apigeeProjectId = pulumi.Input.asOptionalInput<String>(apigeeProjectId),
      authorizedNetwork = pulumi.Input.asOptionalInput<String>(authorizedNetwork),
      billingType = pulumi.Input.asOptionalInput<String>(billingType),
      caCertificate = pulumi.Input.asOptionalInput<String>(caCertificate),
      controlPlaneEncryptionKeyName = pulumi.Input.asOptionalInput<String>(controlPlaneEncryptionKeyName),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableVpcPeering = pulumi.Input.asOptionalInput<bool>(disableVpcPeering),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      properties = pulumi.Input.asOptionalInput<OrganizationProperties>(properties),
      retention = pulumi.Input.asOptionalInput<String>(retention),
      runtimeDatabaseEncryptionKeyName = pulumi.Input.asOptionalInput<String>(runtimeDatabaseEncryptionKeyName),
      runtimeType_ = pulumi.Input.asOptionalInput<String>(runtimeType_),
      subscriptionType = pulumi.Input.asOptionalInput<String>(subscriptionType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsRegion': ?analyticsRegion,
      'apiConsumerDataEncryptionKeyName': ?apiConsumerDataEncryptionKeyName,
      'apiConsumerDataLocation': ?apiConsumerDataLocation,
      'apigeeProjectId': ?apigeeProjectId,
      'authorizedNetwork': ?authorizedNetwork,
      'billingType': ?billingType,
      'caCertificate': ?caCertificate,
      'controlPlaneEncryptionKeyName': ?controlPlaneEncryptionKeyName,
      'description': ?description,
      'disableVpcPeering': ?disableVpcPeering,
      'displayName': ?displayName,
      'name': ?name,
      'projectId': ?projectId,
      'properties': ?pulumi.Input.mapOptionalInputValue<OrganizationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'retention': ?retention,
      'runtimeDatabaseEncryptionKeyName': ?runtimeDatabaseEncryptionKeyName,
      'runtimeType': ?runtimeType_,
      'subscriptionType': ?subscriptionType,
    };
  }

  factory OrganizationState.fromMap(Map<String, dynamic> map) {
    return OrganizationState(
      analyticsRegion: map['analyticsRegion'] == null ? null : pulumi.Output.create<String>(map['analyticsRegion'] as String),
      apiConsumerDataEncryptionKeyName: map['apiConsumerDataEncryptionKeyName'] == null ? null : pulumi.Output.create<String>(map['apiConsumerDataEncryptionKeyName'] as String),
      apiConsumerDataLocation: map['apiConsumerDataLocation'] == null ? null : pulumi.Output.create<String>(map['apiConsumerDataLocation'] as String),
      apigeeProjectId: map['apigeeProjectId'] == null ? null : pulumi.Output.create<String>(map['apigeeProjectId'] as String),
      authorizedNetwork: map['authorizedNetwork'] == null ? null : pulumi.Output.create<String>(map['authorizedNetwork'] as String),
      billingType: map['billingType'] == null ? null : pulumi.Output.create<String>(map['billingType'] as String),
      caCertificate: map['caCertificate'] == null ? null : pulumi.Output.create<String>(map['caCertificate'] as String),
      controlPlaneEncryptionKeyName: map['controlPlaneEncryptionKeyName'] == null ? null : pulumi.Output.create<String>(map['controlPlaneEncryptionKeyName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableVpcPeering: map['disableVpcPeering'] == null ? null : pulumi.Output.create<bool>(map['disableVpcPeering'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<OrganizationProperties>(OrganizationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      retention: map['retention'] == null ? null : pulumi.Output.create<String>(map['retention'] as String),
      runtimeDatabaseEncryptionKeyName: map['runtimeDatabaseEncryptionKeyName'] == null ? null : pulumi.Output.create<String>(map['runtimeDatabaseEncryptionKeyName'] as String),
      runtimeType_: map['runtimeType'] == null ? null : pulumi.Output.create<String>(map['runtimeType'] as String),
      subscriptionType: map['subscriptionType'] == null ? null : pulumi.Output.create<String>(map['subscriptionType'] as String),
    );
  }
}

