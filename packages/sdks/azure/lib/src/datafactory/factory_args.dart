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
  const FactoryArgs({
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
      customerManagedKeyId: (() { final guardedValue = map['customerManagedKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKeyIdentityId: (() { final guardedValue = map['customerManagedKeyIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      githubConfiguration: (() { final guardedValue = map['githubConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FactoryGithubConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      globalParameters: (() { final guardedValue = map['globalParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FactoryGlobalParameter>(guardedValue, (value) => FactoryGlobalParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FactoryIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedVirtualNetworkEnabled: (() { final guardedValue = map['managedVirtualNetworkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkEnabled: (() { final guardedValue = map['publicNetworkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purviewId: (() { final guardedValue = map['purviewId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vstsConfiguration: (() { final guardedValue = map['vstsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FactoryVstsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

