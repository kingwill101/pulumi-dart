// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'factory_github_configuration.dart';
import 'factory_global_parameter.dart';
import 'factory_identity.dart';
import 'factory_vsts_configuration.dart';

/// Input properties used for looking up and filtering Factory resources.
class FactoryState {
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
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `vsts_configuration` block as defined below.
  final pulumi.Input<FactoryVstsConfiguration>? vstsConfiguration;

  /// Creates a new [FactoryState].
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
  FactoryState({
    pulumi.Output<String>? customerManagedKeyId,
    pulumi.Output<String>? customerManagedKeyIdentityId,
    pulumi.Output<FactoryGithubConfiguration>? githubConfiguration,
    pulumi.Output<List<FactoryGlobalParameter>>? globalParameters,
    pulumi.Output<FactoryIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? managedVirtualNetworkEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkEnabled,
    pulumi.Output<String>? purviewId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<FactoryVstsConfiguration>? vstsConfiguration,
  }) :
      customerManagedKeyId = pulumi.Input.asOptionalInput<String>(customerManagedKeyId),
      customerManagedKeyIdentityId = pulumi.Input.asOptionalInput<String>(customerManagedKeyIdentityId),
      githubConfiguration = pulumi.Input.asOptionalInput<FactoryGithubConfiguration>(githubConfiguration),
      globalParameters = pulumi.Input.asOptionalInput<List<FactoryGlobalParameter>>(globalParameters),
      identity = pulumi.Input.asOptionalInput<FactoryIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedVirtualNetworkEnabled = pulumi.Input.asOptionalInput<bool>(managedVirtualNetworkEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkEnabled),
      purviewId = pulumi.Input.asOptionalInput<String>(purviewId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vstsConfiguration = pulumi.Input.asOptionalInput<FactoryVstsConfiguration>(vstsConfiguration);

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
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'vstsConfiguration': ?pulumi.Input.mapOptionalInputValue<FactoryVstsConfiguration, Map<String, dynamic>>(vstsConfiguration, (value) => value.toMap()),
    };
  }

  factory FactoryState.fromMap(Map<String, dynamic> map) {
    return FactoryState(
      customerManagedKeyId: map['customerManagedKeyId'] == null ? null : pulumi.Output.create<String>(map['customerManagedKeyId'] as String),
      customerManagedKeyIdentityId: map['customerManagedKeyIdentityId'] == null ? null : pulumi.Output.create<String>(map['customerManagedKeyIdentityId'] as String),
      githubConfiguration: map['githubConfiguration'] == null ? null : pulumi.Output.create<FactoryGithubConfiguration>(FactoryGithubConfiguration.fromMap((map['githubConfiguration'] as Map).cast<String, dynamic>())),
      globalParameters: map['globalParameters'] == null ? null : pulumi.Output.create<List<FactoryGlobalParameter>>(pulumi.Input.decodeList<FactoryGlobalParameter>(map['globalParameters'], (value) => FactoryGlobalParameter.fromMap((value as Map).cast<String, dynamic>()))),
      identity: map['identity'] == null ? null : pulumi.Output.create<FactoryIdentity>(FactoryIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedVirtualNetworkEnabled: map['managedVirtualNetworkEnabled'] == null ? null : pulumi.Output.create<bool>(map['managedVirtualNetworkEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkEnabled: map['publicNetworkEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkEnabled'] as bool),
      purviewId: map['purviewId'] == null ? null : pulumi.Output.create<String>(map['purviewId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vstsConfiguration: map['vstsConfiguration'] == null ? null : pulumi.Output.create<FactoryVstsConfiguration>(FactoryVstsConfiguration.fromMap((map['vstsConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

