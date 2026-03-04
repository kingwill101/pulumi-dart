// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_namespace_identity.dart';
import 'event_hub_namespace_network_rulesets.dart';

/// Input properties used for looking up and filtering EventHubNamespace resources.
class EventHubNamespaceState {
  /// Is Auto Inflate enabled for the EventHub Namespace?
  final pulumi.Input<bool>? autoInflateEnabled;

  /// Specifies the Capacity / Throughput Units for a `Standard` SKU namespace. Default capacity has a maximum of `2`, but can be increased in blocks of 2 on a committed purchase basis. Defaults to `1`.
  final pulumi.Input<int>? capacity;

  /// Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dedicatedClusterId;

  /// The primary connection string for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultPrimaryConnectionString;

  /// The alias of the primary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled.
  final pulumi.Input<String>? defaultPrimaryConnectionStringAlias;

  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultPrimaryKey;

  /// The secondary connection string for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultSecondaryConnectionString;

  /// The alias of the secondary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled.
  final pulumi.Input<String>? defaultSecondaryConnectionStringAlias;

  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultSecondaryKey;

  /// An `identity` block as defined below.
  final pulumi.Input<EventHubNamespaceIdentity>? identity;

  /// Is SAS authentication enabled for the EventHub Namespace? Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from `1` - `40`.
  final pulumi.Input<int>? maximumThroughputUnits;

  /// The minimum supported TLS version for this EventHub Namespace. Valid values are: `1.0`, `1.1` and `1.2`. Defaults to `1.2`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? minimumTlsVersion;

  /// Specifies the name of the EventHub Namespace resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// A `network_rulesets` block as defined below.
  final pulumi.Input<EventHubNamespaceNetworkRulesets>? networkRulesets;

  /// Is public network access enabled for the EventHub Namespace? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// The name of the resource group in which to create the namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Defines which tier to use. Valid options are `Basic`, `Standard`, and `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource.
  final pulumi.Input<String>? sku;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EventHubNamespaceState].
  /// [autoInflateEnabled] Is Auto Inflate enabled for the EventHub Namespace?
  /// [capacity] Specifies the Capacity / Throughput Units for a `Standard` SKU namespace. Default capacity has a maximum of `2`, but can be increased in blocks of 2 on a committed purchase basis. Defaults to `1`.
  /// [dedicatedClusterId] Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created.
  /// [defaultPrimaryConnectionString] The primary connection string for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultPrimaryConnectionStringAlias] The alias of the primary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled.
  /// [defaultPrimaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryConnectionString] The secondary connection string for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryConnectionStringAlias] The alias of the secondary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled.
  /// [defaultSecondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] Is SAS authentication enabled for the EventHub Namespace? Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maximumThroughputUnits] Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from `1` - `40`.
  /// [minimumTlsVersion] The minimum supported TLS version for this EventHub Namespace. Valid values are: `1.0`, `1.1` and `1.2`. Defaults to `1.2`.
  /// [name] Specifies the name of the EventHub Namespace resource. Changing this forces a new resource to be created.
  /// [networkRulesets] A `network_rulesets` block as defined below.
  /// [publicNetworkAccessEnabled] Is public network access enabled for the EventHub Namespace? Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the namespace. Changing this forces a new resource to be created.
  /// [sku] Defines which tier to use. Valid options are `Basic`, `Standard`, and `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource.
  /// [tags] A mapping of tags to assign to the resource.
  EventHubNamespaceState({
    this.autoInflateEnabled,
    this.capacity,
    this.dedicatedClusterId,
    this.defaultPrimaryConnectionString,
    this.defaultPrimaryConnectionStringAlias,
    this.defaultPrimaryKey,
    this.defaultSecondaryConnectionString,
    this.defaultSecondaryConnectionStringAlias,
    this.defaultSecondaryKey,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.maximumThroughputUnits,
    this.minimumTlsVersion,
    this.name,
    this.networkRulesets,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoInflateEnabled': ?autoInflateEnabled,
      'capacity': ?capacity,
      'dedicatedClusterId': ?dedicatedClusterId,
      'defaultPrimaryConnectionString': ?defaultPrimaryConnectionString,
      'defaultPrimaryConnectionStringAlias':
          ?defaultPrimaryConnectionStringAlias,
      'defaultPrimaryKey': ?defaultPrimaryKey,
      'defaultSecondaryConnectionString': ?defaultSecondaryConnectionString,
      'defaultSecondaryConnectionStringAlias':
          ?defaultSecondaryConnectionStringAlias,
      'defaultSecondaryKey': ?defaultSecondaryKey,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            EventHubNamespaceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'maximumThroughputUnits': ?maximumThroughputUnits,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'networkRulesets':
          ?pulumi.Input.mapOptionalInputValue<
            EventHubNamespaceNetworkRulesets,
            Map<String, dynamic>
          >(networkRulesets, (value) => value.toMap()),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory EventHubNamespaceState.fromMap(Map<String, dynamic> map) {
    return EventHubNamespaceState(
      autoInflateEnabled: (() {
        final guardedValue = map['autoInflateEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dedicatedClusterId: (() {
        final guardedValue = map['dedicatedClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultPrimaryConnectionString: (() {
        final guardedValue = map['defaultPrimaryConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultPrimaryConnectionStringAlias: (() {
        final guardedValue = map['defaultPrimaryConnectionStringAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultPrimaryKey: (() {
        final guardedValue = map['defaultPrimaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultSecondaryConnectionString: (() {
        final guardedValue = map['defaultSecondaryConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultSecondaryConnectionStringAlias: (() {
        final guardedValue = map['defaultSecondaryConnectionStringAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultSecondaryKey: (() {
        final guardedValue = map['defaultSecondaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventHubNamespaceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      localAuthenticationEnabled: (() {
        final guardedValue = map['localAuthenticationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maximumThroughputUnits: (() {
        final guardedValue = map['maximumThroughputUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumTlsVersion: (() {
        final guardedValue = map['minimumTlsVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkRulesets: (() {
        final guardedValue = map['networkRulesets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventHubNamespaceNetworkRulesets.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
    );
  }
}
