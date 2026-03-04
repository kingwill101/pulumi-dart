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
  /// &gt; **Note:** `quarantine_policy_enabled`, `retention_policy_in_days`, `trust_policy_enabled`, `export_policy_enabled` and `zone_redundancy_enabled` are only supported on resources with the `Premium` SKU.
  final pulumi.Input<bool>? exportPolicyEnabled;

  /// One or more `georeplications` blocks as documented below.
  ///
  /// &gt; **Note:** The `georeplications` is only supported on new resources with the `Premium` SKU.
  ///
  /// &gt; **Note:** The `georeplications` list cannot contain the location where the Container Registry exists.
  ///
  /// &gt; **Note:** If more than one `georeplications` block is specified, they are expected to follow the alphabetic order on the `location` property.
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
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryEncryption,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'exportPolicyEnabled': ?exportPolicyEnabled,
      'georeplications':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegistryGeoreplication>,
            List<Map<String, dynamic>>
          >(
            georeplications,
            (value) =>
                pulumi.Input.encodeList<
                  RegistryGeoreplication,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'loginServer': ?loginServer,
      'name': ?name,
      'networkRuleBypassOption': ?networkRuleBypassOption,
      'networkRuleSet':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryNetworkRuleSet,
            Map<String, dynamic>
          >(networkRuleSet, (value) => value.toMap()),
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
      adminEnabled: (() {
        final guardedValue = map['adminEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      adminPassword: (() {
        final guardedValue = map['adminPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adminUsername: (() {
        final guardedValue = map['adminUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      anonymousPullEnabled: (() {
        final guardedValue = map['anonymousPullEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dataEndpointEnabled: (() {
        final guardedValue = map['dataEndpointEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dataEndpointHostNames: (() {
        final guardedValue = map['dataEndpointHostNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      exportPolicyEnabled: (() {
        final guardedValue = map['exportPolicyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      georeplications: (() {
        final guardedValue = map['georeplications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegistryGeoreplication>(
            guardedValue,
            (value) => RegistryGeoreplication.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loginServer: (() {
        final guardedValue = map['loginServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkRuleBypassOption: (() {
        final guardedValue = map['networkRuleBypassOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkRuleSet: (() {
        final guardedValue = map['networkRuleSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryNetworkRuleSet.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      quarantinePolicyEnabled: (() {
        final guardedValue = map['quarantinePolicyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPolicyInDays: (() {
        final guardedValue = map['retentionPolicyInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      trustPolicyEnabled: (() {
        final guardedValue = map['trustPolicyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      zoneRedundancyEnabled: (() {
        final guardedValue = map['zoneRedundancyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
