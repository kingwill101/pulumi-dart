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
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
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
    pulumi.Output<bool>? autoInflateEnabled,
    pulumi.Output<int>? capacity,
    pulumi.Output<String>? dedicatedClusterId,
    pulumi.Output<String>? defaultPrimaryConnectionString,
    pulumi.Output<String>? defaultPrimaryConnectionStringAlias,
    pulumi.Output<String>? defaultPrimaryKey,
    pulumi.Output<String>? defaultSecondaryConnectionString,
    pulumi.Output<String>? defaultSecondaryConnectionStringAlias,
    pulumi.Output<String>? defaultSecondaryKey,
    pulumi.Output<EventHubNamespaceIdentity>? identity,
    pulumi.Output<bool>? localAuthenticationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maximumThroughputUnits,
    pulumi.Output<String>? minimumTlsVersion,
    pulumi.Output<String>? name,
    pulumi.Output<EventHubNamespaceNetworkRulesets>? networkRulesets,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      autoInflateEnabled = pulumi.Input.asOptionalInput<bool>(autoInflateEnabled),
      capacity = pulumi.Input.asOptionalInput<int>(capacity),
      dedicatedClusterId = pulumi.Input.asOptionalInput<String>(dedicatedClusterId),
      defaultPrimaryConnectionString = pulumi.Input.asOptionalInput<String>(defaultPrimaryConnectionString),
      defaultPrimaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(defaultPrimaryConnectionStringAlias),
      defaultPrimaryKey = pulumi.Input.asOptionalInput<String>(defaultPrimaryKey),
      defaultSecondaryConnectionString = pulumi.Input.asOptionalInput<String>(defaultSecondaryConnectionString),
      defaultSecondaryConnectionStringAlias = pulumi.Input.asOptionalInput<String>(defaultSecondaryConnectionStringAlias),
      defaultSecondaryKey = pulumi.Input.asOptionalInput<String>(defaultSecondaryKey),
      identity = pulumi.Input.asOptionalInput<EventHubNamespaceIdentity>(identity),
      localAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      maximumThroughputUnits = pulumi.Input.asOptionalInput<int>(maximumThroughputUnits),
      minimumTlsVersion = pulumi.Input.asOptionalInput<String>(minimumTlsVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkRulesets = pulumi.Input.asOptionalInput<EventHubNamespaceNetworkRulesets>(networkRulesets),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoInflateEnabled': ?autoInflateEnabled,
      'capacity': ?capacity,
      'dedicatedClusterId': ?dedicatedClusterId,
      'defaultPrimaryConnectionString': ?defaultPrimaryConnectionString,
      'defaultPrimaryConnectionStringAlias': ?defaultPrimaryConnectionStringAlias,
      'defaultPrimaryKey': ?defaultPrimaryKey,
      'defaultSecondaryConnectionString': ?defaultSecondaryConnectionString,
      'defaultSecondaryConnectionStringAlias': ?defaultSecondaryConnectionStringAlias,
      'defaultSecondaryKey': ?defaultSecondaryKey,
      'identity': ?pulumi.Input.mapOptionalInputValue<EventHubNamespaceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'maximumThroughputUnits': ?maximumThroughputUnits,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'networkRulesets': ?pulumi.Input.mapOptionalInputValue<EventHubNamespaceNetworkRulesets, Map<String, dynamic>>(networkRulesets, (value) => value.toMap()),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory EventHubNamespaceState.fromMap(Map<String, dynamic> map) {
    return EventHubNamespaceState(
      autoInflateEnabled: map['autoInflateEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoInflateEnabled'] as bool),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<int>(map['capacity'] as int),
      dedicatedClusterId: map['dedicatedClusterId'] == null ? null : pulumi.Output.create<String>(map['dedicatedClusterId'] as String),
      defaultPrimaryConnectionString: map['defaultPrimaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['defaultPrimaryConnectionString'] as String),
      defaultPrimaryConnectionStringAlias: map['defaultPrimaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['defaultPrimaryConnectionStringAlias'] as String),
      defaultPrimaryKey: map['defaultPrimaryKey'] == null ? null : pulumi.Output.create<String>(map['defaultPrimaryKey'] as String),
      defaultSecondaryConnectionString: map['defaultSecondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['defaultSecondaryConnectionString'] as String),
      defaultSecondaryConnectionStringAlias: map['defaultSecondaryConnectionStringAlias'] == null ? null : pulumi.Output.create<String>(map['defaultSecondaryConnectionStringAlias'] as String),
      defaultSecondaryKey: map['defaultSecondaryKey'] == null ? null : pulumi.Output.create<String>(map['defaultSecondaryKey'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<EventHubNamespaceIdentity>(EventHubNamespaceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maximumThroughputUnits: map['maximumThroughputUnits'] == null ? null : pulumi.Output.create<int>(map['maximumThroughputUnits'] as int),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minimumTlsVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkRulesets: map['networkRulesets'] == null ? null : pulumi.Output.create<EventHubNamespaceNetworkRulesets>(EventHubNamespaceNetworkRulesets.fromMap((map['networkRulesets'] as Map).cast<String, dynamic>())),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

