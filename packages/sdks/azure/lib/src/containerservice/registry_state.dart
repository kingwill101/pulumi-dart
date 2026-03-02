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
    this.adminEnabled,
    this.adminPassword,
    this.adminUsername,
    this.anonymousPullEnabled,
    this.dataEndpointEnabled,
    this.dataEndpointHostNames,
    this.encryption,
    this.exportPolicyEnabled,
    this.georeplications,
    this.identity,
    this.location,
    this.loginServer,
    this.name,
    this.networkRuleBypassOption,
    this.networkRuleSet,
    this.publicNetworkAccessEnabled,
    this.quarantinePolicyEnabled,
    this.resourceGroupName,
    this.retentionPolicyInDays,
    this.sku,
    this.tags,
    this.trustPolicyEnabled,
    this.zoneRedundancyEnabled,
  });

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
      adminEnabled: map['adminEnabled'] == null ? null : (map['adminEnabled']! as bool).input(),
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword']! as String).input(),
      adminUsername: map['adminUsername'] == null ? null : (map['adminUsername']! as String).input(),
      anonymousPullEnabled: map['anonymousPullEnabled'] == null ? null : (map['anonymousPullEnabled']! as bool).input(),
      dataEndpointEnabled: map['dataEndpointEnabled'] == null ? null : (map['dataEndpointEnabled']! as bool).input(),
      dataEndpointHostNames: map['dataEndpointHostNames'] == null ? null : ((map['dataEndpointHostNames']! as List).cast<String>()).input(),
      encryption: map['encryption'] == null ? null : (RegistryEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      exportPolicyEnabled: map['exportPolicyEnabled'] == null ? null : (map['exportPolicyEnabled']! as bool).input(),
      georeplications: map['georeplications'] == null ? null : (pulumi.Input.decodeList<RegistryGeoreplication>(map['georeplications']!, (value) => RegistryGeoreplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (RegistryIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      loginServer: map['loginServer'] == null ? null : (map['loginServer']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkRuleBypassOption: map['networkRuleBypassOption'] == null ? null : (map['networkRuleBypassOption']! as String).input(),
      networkRuleSet: map['networkRuleSet'] == null ? null : (RegistryNetworkRuleSet.fromMap((map['networkRuleSet']! as Map).cast<String, dynamic>())).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      quarantinePolicyEnabled: map['quarantinePolicyEnabled'] == null ? null : (map['quarantinePolicyEnabled']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      retentionPolicyInDays: map['retentionPolicyInDays'] == null ? null : (map['retentionPolicyInDays']! as int).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      trustPolicyEnabled: map['trustPolicyEnabled'] == null ? null : (map['trustPolicyEnabled']! as bool).input(),
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] == null ? null : (map['zoneRedundancyEnabled']! as bool).input(),
    );
  }
}

