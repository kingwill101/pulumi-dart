// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'factory_github_configuration.dart';
import 'factory_global_parameter.dart';
import 'factory_identity.dart';
import 'factory_vsts_configuration.dart';

/// {@template pulumi_datafactory_factory_factory_args_doc}
/// The set of arguments for Factory.
/// {@endtemplate}
/// {@macro pulumi_datafactory_factory_factory_args_doc}
class FactoryArgs {
  /// Specifies the Azure Key Vault Key ID to be used as the Customer Managed Key (CMK) for double encryption. Required with user assigned identity.
  final pulumi.Input<String>? customerManagedKeyId;
  /// Specifies the ID of the user assigned identity associated with the Customer Managed Key. Must be supplied at factory creation if `customer_managed_key_id` is set. Can be left empty once factory is created to use the system assigned identity. See the [Microsoft documentation](https://learn.microsoft.com/en-us/azure/data-factory/enable-customer-managed-key) for more information.
  final pulumi.Input<String>? customerManagedKeyIdentityId;
  /// A `github_configuration` block as defined below.
  final pulumi.Input<FactoryGithubConfiguration>? githubConfiguration;
  /// A list of `global_parameter` blocks as defined above.
  final pulumi.Input<List<FactoryGlobalParameter>>? globalParameters;
  /// An `identity` block as defined below.
  final pulumi.Input<FactoryIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Is Managed Virtual Network enabled?
  final pulumi.Input<bool>? managedVirtualNetworkEnabled;
  /// Specifies the name of the Data Factory. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// Is the Data Factory visible to the public network? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkEnabled;
  /// Specifies the ID of the purview account resource associated with the Data Factory.
  final pulumi.Input<String>? purviewId;
  /// The name of the resource group in which to create the Data Factory. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `vsts_configuration` block as defined below.
  final pulumi.Input<FactoryVstsConfiguration>? vstsConfiguration;

  /// Creates a new [FactoryArgs].
  /// [customerManagedKeyId] Specifies the Azure Key Vault Key ID to be used as the Customer Managed Key (CMK) for double encryption. Required with user assigned identity.
  /// [customerManagedKeyIdentityId] Specifies the ID of the user assigned identity associated with the Customer Managed Key. Must be supplied at factory creation if `customer_managed_key_id` is set. Can be left empty once factory is created to use the system assigned identity. See the [Microsoft documentation](https://learn.microsoft.com/en-us/azure/data-factory/enable-customer-managed-key) for more information.
  /// [githubConfiguration] A `github_configuration` block as defined below.
  /// [globalParameters] A list of `global_parameter` blocks as defined above.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [managedVirtualNetworkEnabled] Is Managed Virtual Network enabled?
  /// [name] Specifies the name of the Data Factory. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [publicNetworkEnabled] Is the Data Factory visible to the public network? Defaults to `true`.
  /// [purviewId] Specifies the ID of the purview account resource associated with the Data Factory.
  /// [resourceGroupName] The name of the resource group in which to create the Data Factory. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vstsConfiguration] A `vsts_configuration` block as defined below.
  FactoryArgs({
    this.customerManagedKeyId,
    this.customerManagedKeyIdentityId,
    this.githubConfiguration,
    this.globalParameters,
    this.identity,
    this.location,
    this.managedVirtualNetworkEnabled,
    this.name,
    this.publicNetworkEnabled,
    this.purviewId,
    required this.resourceGroupName,
    this.tags,
    this.vstsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyId': ?customerManagedKeyId,
      'customerManagedKeyIdentityId': ?customerManagedKeyIdentityId,
      'githubConfiguration': ?pulumi.Input.mapOptionalInputValue<FactoryGithubConfiguration, Map<String, dynamic>>(githubConfiguration, (value) => value.toMap()),
      'globalParameters': ?pulumi.Input.mapOptionalInputValue<List<FactoryGlobalParameter>, List<Map<String, dynamic>>>(globalParameters, (value) => pulumi.Input.encodeList<FactoryGlobalParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<FactoryIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managedVirtualNetworkEnabled': ?managedVirtualNetworkEnabled,
      'name': ?name,
      'publicNetworkEnabled': ?publicNetworkEnabled,
      'purviewId': ?purviewId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vstsConfiguration': ?pulumi.Input.mapOptionalInputValue<FactoryVstsConfiguration, Map<String, dynamic>>(vstsConfiguration, (value) => value.toMap()),
    };
  }

  factory FactoryArgs.fromMap(Map<String, dynamic> map) {
    return FactoryArgs(
      customerManagedKeyId: map['customerManagedKeyId'] == null ? null : (map['customerManagedKeyId']! as String).input(),
      customerManagedKeyIdentityId: map['customerManagedKeyIdentityId'] == null ? null : (map['customerManagedKeyIdentityId']! as String).input(),
      githubConfiguration: map['githubConfiguration'] == null ? null : (FactoryGithubConfiguration.fromMap((map['githubConfiguration']! as Map).cast<String, dynamic>())).input(),
      globalParameters: map['globalParameters'] == null ? null : (pulumi.Input.decodeList<FactoryGlobalParameter>(map['globalParameters']!, (value) => FactoryGlobalParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (FactoryIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedVirtualNetworkEnabled: map['managedVirtualNetworkEnabled'] == null ? null : (map['managedVirtualNetworkEnabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkEnabled: map['publicNetworkEnabled'] == null ? null : (map['publicNetworkEnabled']! as bool).input(),
      purviewId: map['purviewId'] == null ? null : (map['purviewId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vstsConfiguration: map['vstsConfiguration'] == null ? null : (FactoryVstsConfiguration.fromMap((map['vstsConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

