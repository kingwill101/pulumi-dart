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
    this.accessPolicyObjectIds,
    this.authenticationConfiguration,
    this.configurationExportStorageAccountName,
    this.corsConfiguration,
    this.cosmosdbKeyVaultKeyVersionlessId,
    this.cosmosdbThroughput,
    this.identity,
    this.kind,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.tags,
  });

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
      accessPolicyObjectIds: map['accessPolicyObjectIds'] == null ? null : ((map['accessPolicyObjectIds']! as List).cast<String>()).input(),
      authenticationConfiguration: map['authenticationConfiguration'] == null ? null : (ServiceAuthenticationConfiguration.fromMap((map['authenticationConfiguration']! as Map).cast<String, dynamic>())).input(),
      configurationExportStorageAccountName: map['configurationExportStorageAccountName'] == null ? null : (map['configurationExportStorageAccountName']! as String).input(),
      corsConfiguration: map['corsConfiguration'] == null ? null : (ServiceCorsConfiguration.fromMap((map['corsConfiguration']! as Map).cast<String, dynamic>())).input(),
      cosmosdbKeyVaultKeyVersionlessId: map['cosmosdbKeyVaultKeyVersionlessId'] == null ? null : (map['cosmosdbKeyVaultKeyVersionlessId']! as String).input(),
      cosmosdbThroughput: map['cosmosdbThroughput'] == null ? null : (map['cosmosdbThroughput']! as int).input(),
      identity: map['identity'] == null ? null : (ServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

