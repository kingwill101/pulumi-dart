// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_namespace_identity.dart';
import 'event_hub_namespace_network_rulesets.dart';

/// {@template pulumi_eventhub_event_hub_namespace_event_hub_namespace_args_doc}
/// The set of arguments for EventHubNamespace.
/// {@endtemplate}
/// {@macro pulumi_eventhub_event_hub_namespace_event_hub_namespace_args_doc}
class EventHubNamespaceArgs {
  /// Is Auto Inflate enabled for the EventHub Namespace?
  final pulumi.Input<bool>? autoInflateEnabled;
  /// Specifies the Capacity / Throughput Units for a `Standard` SKU namespace. Default capacity has a maximum of `2`, but can be increased in blocks of 2 on a committed purchase basis. Defaults to `1`.
  final pulumi.Input<int>? capacity;
  /// Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dedicatedClusterId;
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
  final pulumi.Input<String> resourceGroupName;
  /// Defines which tier to use. Valid options are `Basic`, `Standard`, and `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource.
  final pulumi.Input<String> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EventHubNamespaceArgs].
  /// [autoInflateEnabled] Is Auto Inflate enabled for the EventHub Namespace?
  /// [capacity] Specifies the Capacity / Throughput Units for a `Standard` SKU namespace. Default capacity has a maximum of `2`, but can be increased in blocks of 2 on a committed purchase basis. Defaults to `1`.
  /// [dedicatedClusterId] Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created.
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
  EventHubNamespaceArgs({
    this.autoInflateEnabled,
    this.capacity,
    this.dedicatedClusterId,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.maximumThroughputUnits,
    this.minimumTlsVersion,
    this.name,
    this.networkRulesets,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoInflateEnabled': ?autoInflateEnabled,
      'capacity': ?capacity,
      'dedicatedClusterId': ?dedicatedClusterId,
      'identity': ?pulumi.Input.mapOptionalInputValue<EventHubNamespaceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'maximumThroughputUnits': ?maximumThroughputUnits,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'networkRulesets': ?pulumi.Input.mapOptionalInputValue<EventHubNamespaceNetworkRulesets, Map<String, dynamic>>(networkRulesets, (value) => value.toMap()),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': ?tags,
    };
  }

  factory EventHubNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return EventHubNamespaceArgs(
      autoInflateEnabled: map['autoInflateEnabled'] == null ? null : (map['autoInflateEnabled'] as bool).input(),
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      dedicatedClusterId: map['dedicatedClusterId'] == null ? null : (map['dedicatedClusterId'] as String).input(),
      identity: map['identity'] == null ? null : (EventHubNamespaceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : (map['localAuthenticationEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maximumThroughputUnits: map['maximumThroughputUnits'] == null ? null : (map['maximumThroughputUnits'] as int).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkRulesets: map['networkRulesets'] == null ? null : (EventHubNamespaceNetworkRulesets.fromMap((map['networkRulesets'] as Map).cast<String, dynamic>())).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (map['sku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

