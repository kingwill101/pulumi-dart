// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_encryption.dart';
import 'registry_georeplication.dart';
import 'registry_identity.dart';
import 'registry_network_rule_set.dart';

/// Input properties used for looking up and filtering Registry resources.
class RegistryState {
  /// Specifies whether the admin user is enabled. Defaults to `false`.
  final pulumi.Input<bool>? adminEnabled;
  /// The Password associated with the Container Registry Admin account - if the admin account is enabled.
  final pulumi.Input<String>? adminPassword;
  /// The Username associated with the Container Registry Admin account - if the admin account is enabled.
  final pulumi.Input<String>? adminUsername;
  /// Whether to allow anonymous (unauthenticated) pull access to this Container Registry. This is only supported on resources with the `Standard` or `Premium` SKU.
  final pulumi.Input<bool>? anonymousPullEnabled;
  /// Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the `Premium` SKU.
  final pulumi.Input<bool>? dataEndpointEnabled;
  /// A set of data endpoint hostnames associated with the container registry if data endpoints are enabled.
  final pulumi.Input<List<String>>? dataEndpointHostNames;
  /// An `encryption` block as documented below.
  final pulumi.Input<RegistryEncryption>? encryption;
  /// Boolean value that indicates whether export policy is enabled. Defaults to `true`. In order to set it to `false`, make sure the `public_network_access_enabled` is also set to `false`.
  ///
  /// > **Note:** `quarantine_policy_enabled`, `retention_policy_in_days`, `trust_policy_enabled`, `export_policy_enabled` and `zone_redundancy_enabled` are only supported on resources with the `Premium` SKU.
  final pulumi.Input<bool>? exportPolicyEnabled;
  /// One or more `georeplications` blocks as documented below.
  ///
  /// > **Note:** The `georeplications` is only supported on new resources with the `Premium` SKU.
  ///
  /// > **Note:** The `georeplications` list cannot contain the location where the Container Registry exists.
  ///
  /// > **Note:** If more than one `georeplications` block is specified, they are expected to follow the alphabetic order on the `location` property.
  final pulumi.Input<List<RegistryGeoreplication>>? georeplications;
  /// An `identity` block as defined below.
  final pulumi.Input<RegistryIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The URL that can be used to log into the container registry.
  final pulumi.Input<String>? loginServer;
  /// Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether to allow trusted Azure services to access a network-restricted Container Registry? Possible values are `None` and `AzureServices`. Defaults to `AzureServices`.
  final pulumi.Input<String>? networkRuleBypassOption;
  /// A `network_rule_set` block as documented below.
  final pulumi.Input<RegistryNetworkRuleSet>? networkRuleSet;
  /// Whether public network access is allowed for the container registry. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Boolean value that indicates whether quarantine policy is enabled.
  final pulumi.Input<bool>? quarantinePolicyEnabled;
  /// The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The number of days to retain and untagged manifest after which it gets purged.
  final pulumi.Input<int>? retentionPolicyInDays;
  /// The SKU name of the container registry. Possible values are `Basic`, `Standard` and `Premium`.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Boolean value that indicated whether trust policy is enabled. Defaults to `false`.
  final pulumi.Input<bool>? trustPolicyEnabled;
  /// Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to `false`.
  final pulumi.Input<bool>? zoneRedundancyEnabled;

  /// Creates a new [RegistryState].
  /// [adminEnabled] Specifies whether the admin user is enabled. Defaults to `false`.
  /// [adminPassword] The Password associated with the Container Registry Admin account - if the admin account is enabled.
  /// [adminUsername] The Username associated with the Container Registry Admin account - if the admin account is enabled.
  /// [anonymousPullEnabled] Whether to allow anonymous (unauthenticated) pull access to this Container Registry. This is only supported on resources with the `Standard` or `Premium` SKU.
  /// [dataEndpointEnabled] Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the `Premium` SKU.
  /// [dataEndpointHostNames] A set of data endpoint hostnames associated with the container registry if data endpoints are enabled.
  /// [encryption] An `encryption` block as documented below.
  /// [exportPolicyEnabled] Boolean value that indicates whether export policy is enabled. Defaults to `true`. In order to set it to `false`, make sure the `public_network_access_enabled` is also set to `false`.
  /// [georeplications] One or more `georeplications` blocks as documented below.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [loginServer] The URL that can be used to log into the container registry.
  /// [name] Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  /// [networkRuleBypassOption] Whether to allow trusted Azure services to access a network-restricted Container Registry? Possible values are `None` and `AzureServices`. Defaults to `AzureServices`.
  /// [networkRuleSet] A `network_rule_set` block as documented below.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the container registry. Defaults to `true`.
  /// [quarantinePolicyEnabled] Boolean value that indicates whether quarantine policy is enabled.
  /// [resourceGroupName] The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created.
  /// [retentionPolicyInDays] The number of days to retain and untagged manifest after which it gets purged.
  /// [sku] The SKU name of the container registry. Possible values are `Basic`, `Standard` and `Premium`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trustPolicyEnabled] Boolean value that indicated whether trust policy is enabled. Defaults to `false`.
  /// [zoneRedundancyEnabled] Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to `false`.
  RegistryState({
    pulumi.Output<bool>? adminEnabled,
    pulumi.Output<String>? adminPassword,
    pulumi.Output<String>? adminUsername,
    pulumi.Output<bool>? anonymousPullEnabled,
    pulumi.Output<bool>? dataEndpointEnabled,
    pulumi.Output<List<String>>? dataEndpointHostNames,
    pulumi.Output<RegistryEncryption>? encryption,
    pulumi.Output<bool>? exportPolicyEnabled,
    pulumi.Output<List<RegistryGeoreplication>>? georeplications,
    pulumi.Output<RegistryIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? loginServer,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkRuleBypassOption,
    pulumi.Output<RegistryNetworkRuleSet>? networkRuleSet,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<bool>? quarantinePolicyEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? retentionPolicyInDays,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? trustPolicyEnabled,
    pulumi.Output<bool>? zoneRedundancyEnabled,
  }) :
      adminEnabled = pulumi.Input.asOptionalInput<bool>(adminEnabled),
      adminPassword = pulumi.Input.asOptionalInput<String>(adminPassword),
      adminUsername = pulumi.Input.asOptionalInput<String>(adminUsername),
      anonymousPullEnabled = pulumi.Input.asOptionalInput<bool>(anonymousPullEnabled),
      dataEndpointEnabled = pulumi.Input.asOptionalInput<bool>(dataEndpointEnabled),
      dataEndpointHostNames = pulumi.Input.asOptionalInput<List<String>>(dataEndpointHostNames),
      encryption = pulumi.Input.asOptionalInput<RegistryEncryption>(encryption),
      exportPolicyEnabled = pulumi.Input.asOptionalInput<bool>(exportPolicyEnabled),
      georeplications = pulumi.Input.asOptionalInput<List<RegistryGeoreplication>>(georeplications),
      identity = pulumi.Input.asOptionalInput<RegistryIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      loginServer = pulumi.Input.asOptionalInput<String>(loginServer),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkRuleBypassOption = pulumi.Input.asOptionalInput<String>(networkRuleBypassOption),
      networkRuleSet = pulumi.Input.asOptionalInput<RegistryNetworkRuleSet>(networkRuleSet),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      quarantinePolicyEnabled = pulumi.Input.asOptionalInput<bool>(quarantinePolicyEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retentionPolicyInDays = pulumi.Input.asOptionalInput<int>(retentionPolicyInDays),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trustPolicyEnabled = pulumi.Input.asOptionalInput<bool>(trustPolicyEnabled),
      zoneRedundancyEnabled = pulumi.Input.asOptionalInput<bool>(zoneRedundancyEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'adminPassword': ?adminPassword,
      'adminUsername': ?adminUsername,
      'anonymousPullEnabled': ?anonymousPullEnabled,
      'dataEndpointEnabled': ?dataEndpointEnabled,
      'dataEndpointHostNames': ?dataEndpointHostNames,
      'encryption': ?pulumi.Input.mapOptionalInputValue<RegistryEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'exportPolicyEnabled': ?exportPolicyEnabled,
      'georeplications': ?pulumi.Input.mapOptionalInputValue<List<RegistryGeoreplication>, List<Map<String, dynamic>>>(georeplications, (value) => pulumi.Input.encodeList<RegistryGeoreplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<RegistryIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'loginServer': ?loginServer,
      'name': ?name,
      'networkRuleBypassOption': ?networkRuleBypassOption,
      'networkRuleSet': ?pulumi.Input.mapOptionalInputValue<RegistryNetworkRuleSet, Map<String, dynamic>>(networkRuleSet, (value) => value.toMap()),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'quarantinePolicyEnabled': ?quarantinePolicyEnabled,
      'resourceGroupName': ?resourceGroupName,
      'retentionPolicyInDays': ?retentionPolicyInDays,
      'sku': ?sku,
      'tags': ?tags,
      'trustPolicyEnabled': ?trustPolicyEnabled,
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory RegistryState.fromMap(Map<String, dynamic> map) {
    return RegistryState(
      adminEnabled: map['adminEnabled'] == null ? null : pulumi.Output.create<bool>(map['adminEnabled'] as bool),
      adminPassword: map['adminPassword'] == null ? null : pulumi.Output.create<String>(map['adminPassword'] as String),
      adminUsername: map['adminUsername'] == null ? null : pulumi.Output.create<String>(map['adminUsername'] as String),
      anonymousPullEnabled: map['anonymousPullEnabled'] == null ? null : pulumi.Output.create<bool>(map['anonymousPullEnabled'] as bool),
      dataEndpointEnabled: map['dataEndpointEnabled'] == null ? null : pulumi.Output.create<bool>(map['dataEndpointEnabled'] as bool),
      dataEndpointHostNames: map['dataEndpointHostNames'] == null ? null : pulumi.Output.create<List<String>>((map['dataEndpointHostNames'] as List).cast<String>()),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<RegistryEncryption>(RegistryEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      exportPolicyEnabled: map['exportPolicyEnabled'] == null ? null : pulumi.Output.create<bool>(map['exportPolicyEnabled'] as bool),
      georeplications: map['georeplications'] == null ? null : pulumi.Output.create<List<RegistryGeoreplication>>(pulumi.Input.decodeList<RegistryGeoreplication>(map['georeplications'], (value) => RegistryGeoreplication.fromMap((value as Map).cast<String, dynamic>()))),
      identity: map['identity'] == null ? null : pulumi.Output.create<RegistryIdentity>(RegistryIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      loginServer: map['loginServer'] == null ? null : pulumi.Output.create<String>(map['loginServer'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkRuleBypassOption: map['networkRuleBypassOption'] == null ? null : pulumi.Output.create<String>(map['networkRuleBypassOption'] as String),
      networkRuleSet: map['networkRuleSet'] == null ? null : pulumi.Output.create<RegistryNetworkRuleSet>(RegistryNetworkRuleSet.fromMap((map['networkRuleSet'] as Map).cast<String, dynamic>())),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      quarantinePolicyEnabled: map['quarantinePolicyEnabled'] == null ? null : pulumi.Output.create<bool>(map['quarantinePolicyEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retentionPolicyInDays: map['retentionPolicyInDays'] == null ? null : pulumi.Output.create<int>(map['retentionPolicyInDays'] as int),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trustPolicyEnabled: map['trustPolicyEnabled'] == null ? null : pulumi.Output.create<bool>(map['trustPolicyEnabled'] as bool),
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] == null ? null : pulumi.Output.create<bool>(map['zoneRedundancyEnabled'] as bool),
    );
  }
}

