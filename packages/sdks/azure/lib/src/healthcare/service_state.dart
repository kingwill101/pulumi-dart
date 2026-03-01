// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_authentication_configuration.dart';
import 'service_cors_configuration.dart';
import 'service_identity.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// A set of Azure object IDs that are allowed to access the Service. If not configured, the default value is the object id of the service principal or user that is running Terraform.
  final pulumi.Input<List<String>>? accessPolicyObjectIds;
  /// An `authentication_configuration` block as defined below.
  final pulumi.Input<ServiceAuthenticationConfiguration>? authenticationConfiguration;
  /// Specifies the name of the storage account which the operation configuration information is exported to.
  final pulumi.Input<String>? configurationExportStorageAccountName;
  /// A `cors_configuration` block as defined below.
  final pulumi.Input<ServiceCorsConfiguration>? corsConfiguration;
  /// A versionless Key Vault Key ID for CMK encryption of the backing database. Changing this forces a new resource to be created.
  ///
  /// > **Note:** In order to use a `Custom Key` from Key Vault for encryption you must grant Azure Cosmos DB Service access to your key vault. For instructions on how to configure your Key Vault correctly please refer to the [product documentation](https://docs.microsoft.com/azure/cosmos-db/how-to-setup-cmk#add-an-access-policy-to-your-azure-key-vault-instance)
  final pulumi.Input<String>? cosmosdbKeyVaultKeyVersionlessId;
  /// The provisioned throughput for the backing database. Range of `400`-`100000`. Defaults to `1000`.
  final pulumi.Input<int>? cosmosdbThroughput;
  /// An `identity` block as defined below.
  final pulumi.Input<ServiceIdentity>? identity;
  /// The type of the service. Values at time of publication are: `fhir`, `fhir-Stu3` and `fhir-R4`. Default value is `fhir`.
  final pulumi.Input<String>? kind;
  /// Specifies the supported Azure Region where the Service should be created. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Not all locations support this resource. Some are `West US 2`, `North Central US`, and `UK West`.
  final pulumi.Input<String>? location;
  /// The name of the service instance. Used for service endpoint, must be unique within the audience. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether public network access is enabled or disabled for this service instance. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group in which to create the Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceState].
  /// [accessPolicyObjectIds] A set of Azure object IDs that are allowed to access the Service. If not configured, the default value is the object id of the service principal or user that is running Terraform.
  /// [authenticationConfiguration] An `authentication_configuration` block as defined below.
  /// [configurationExportStorageAccountName] Specifies the name of the storage account which the operation configuration information is exported to.
  /// [corsConfiguration] A `cors_configuration` block as defined below.
  /// [cosmosdbKeyVaultKeyVersionlessId] A versionless Key Vault Key ID for CMK encryption of the backing database. Changing this forces a new resource to be created.
  /// [cosmosdbThroughput] The provisioned throughput for the backing database. Range of `400`-`100000`. Defaults to `1000`.
  /// [identity] An `identity` block as defined below.
  /// [kind] The type of the service. Values at time of publication are: `fhir`, `fhir-Stu3` and `fhir-R4`. Default value is `fhir`.
  /// [location] Specifies the supported Azure Region where the Service should be created. Changing this forces a new resource to be created.
  /// [name] The name of the service instance. Used for service endpoint, must be unique within the audience. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is enabled or disabled for this service instance. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group in which to create the Service. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  ServiceState({
    pulumi.Output<List<String>>? accessPolicyObjectIds,
    pulumi.Output<ServiceAuthenticationConfiguration>? authenticationConfiguration,
    pulumi.Output<String>? configurationExportStorageAccountName,
    pulumi.Output<ServiceCorsConfiguration>? corsConfiguration,
    pulumi.Output<String>? cosmosdbKeyVaultKeyVersionlessId,
    pulumi.Output<int>? cosmosdbThroughput,
    pulumi.Output<ServiceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessPolicyObjectIds = pulumi.Input.asOptionalInput<List<String>>(accessPolicyObjectIds),
      authenticationConfiguration = pulumi.Input.asOptionalInput<ServiceAuthenticationConfiguration>(authenticationConfiguration),
      configurationExportStorageAccountName = pulumi.Input.asOptionalInput<String>(configurationExportStorageAccountName),
      corsConfiguration = pulumi.Input.asOptionalInput<ServiceCorsConfiguration>(corsConfiguration),
      cosmosdbKeyVaultKeyVersionlessId = pulumi.Input.asOptionalInput<String>(cosmosdbKeyVaultKeyVersionlessId),
      cosmosdbThroughput = pulumi.Input.asOptionalInput<int>(cosmosdbThroughput),
      identity = pulumi.Input.asOptionalInput<ServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyObjectIds': ?accessPolicyObjectIds,
      'authenticationConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceAuthenticationConfiguration, Map<String, dynamic>>(authenticationConfiguration, (value) => value.toMap()),
      'configurationExportStorageAccountName': ?configurationExportStorageAccountName,
      'corsConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceCorsConfiguration, Map<String, dynamic>>(corsConfiguration, (value) => value.toMap()),
      'cosmosdbKeyVaultKeyVersionlessId': ?cosmosdbKeyVaultKeyVersionlessId,
      'cosmosdbThroughput': ?cosmosdbThroughput,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      accessPolicyObjectIds: map['accessPolicyObjectIds'] == null ? null : pulumi.Output.create<List<String>>((map['accessPolicyObjectIds'] as List).cast<String>()),
      authenticationConfiguration: map['authenticationConfiguration'] == null ? null : pulumi.Output.create<ServiceAuthenticationConfiguration>(ServiceAuthenticationConfiguration.fromMap((map['authenticationConfiguration'] as Map).cast<String, dynamic>())),
      configurationExportStorageAccountName: map['configurationExportStorageAccountName'] == null ? null : pulumi.Output.create<String>(map['configurationExportStorageAccountName'] as String),
      corsConfiguration: map['corsConfiguration'] == null ? null : pulumi.Output.create<ServiceCorsConfiguration>(ServiceCorsConfiguration.fromMap((map['corsConfiguration'] as Map).cast<String, dynamic>())),
      cosmosdbKeyVaultKeyVersionlessId: map['cosmosdbKeyVaultKeyVersionlessId'] == null ? null : pulumi.Output.create<String>(map['cosmosdbKeyVaultKeyVersionlessId'] as String),
      cosmosdbThroughput: map['cosmosdbThroughput'] == null ? null : pulumi.Output.create<int>(map['cosmosdbThroughput'] as int),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServiceIdentity>(ServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

