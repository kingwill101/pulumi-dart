// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_customer_managed_key.dart';
import 'namespace_identity.dart';
import 'namespace_network_rule_set.dart';

/// {@template pulumi_eventhub_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_eventhub_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Specifies the capacity. When `sku` is `Premium`, capacity can be `1`, `2`, `4`, `8` or `16`. When `sku` is `Basic` or `Standard`, capacity can be `0` only.
  final pulumi.Input<int>? capacity;
  /// An `customer_managed_key` block as defined below.
  final pulumi.Input<NamespaceCustomerManagedKey>? customerManagedKey;
  /// An `identity` block as defined below.
  final pulumi.Input<NamespaceIdentity>? identity;
  /// Whether or not SAS authentication is enabled for the Service Bus namespace. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The minimum supported TLS version for this Service Bus Namespace. Valid values are: `1.0`, `1.1` and `1.2`. Defaults to `1.2`.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? minimumTlsVersion;
  /// Specifies the name of the Service Bus Namespace resource . Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An `network_rule_set` block as defined below.
  final pulumi.Input<NamespaceNetworkRuleSet>? networkRuleSet;
  /// Specifies the number messaging partitions. Only valid when `sku` is `Premium` and the minimum number is `1`. Possible values include `0`, `1`, `2`, and `4`. Defaults to `0` for Standard, Basic namespace. Changing this forces a new resource to be created.
  ///
  /// > **Note:** It's not possible to change the partitioning option on any existing namespace. The number of partitions can only be set during namespace creation. Please check the doc https://learn.microsoft.com/en-us/azure/service-bus-messaging/enable-partitions-premium for more feature restrictions.
  final pulumi.Input<int>? premiumMessagingPartitions;
  /// Is public network access enabled for the Service Bus Namespace? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to Changing this forces a new resource to be created.
  /// create the namespace.
  final pulumi.Input<String> resourceGroupName;
  /// Defines which tier to use. Options are `Basic`, `Standard` or `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource.
  final pulumi.Input<String> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceArgs].
  /// [capacity] Specifies the capacity. When `sku` is `Premium`, capacity can be `1`, `2`, `4`, `8` or `16`. When `sku` is `Basic` or `Standard`, capacity can be `0` only.
  /// [customerManagedKey] An `customer_managed_key` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [localAuthEnabled] Whether or not SAS authentication is enabled for the Service Bus namespace. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [minimumTlsVersion] The minimum supported TLS version for this Service Bus Namespace. Valid values are: `1.0`, `1.1` and `1.2`. Defaults to `1.2`.
  /// [name] Specifies the name of the Service Bus Namespace resource . Changing this forces a new resource to be created.
  /// [networkRuleSet] An `network_rule_set` block as defined below.
  /// [premiumMessagingPartitions] Specifies the number messaging partitions. Only valid when `sku` is `Premium` and the minimum number is `1`. Possible values include `0`, `1`, `2`, and `4`. Defaults to `0` for Standard, Basic namespace. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Is public network access enabled for the Service Bus Namespace? Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to Changing this forces a new resource to be created.
  /// [sku] Defines which tier to use. Options are `Basic`, `Standard` or `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource.
  /// [tags] A mapping of tags to assign to the resource.
  NamespaceArgs({
    this.capacity,
    this.customerManagedKey,
    this.identity,
    this.localAuthEnabled,
    this.location,
    this.minimumTlsVersion,
    this.name,
    this.networkRuleSet,
    this.premiumMessagingPartitions,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<NamespaceCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<NamespaceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'networkRuleSet': ?pulumi.Input.mapOptionalInputValue<NamespaceNetworkRuleSet, Map<String, dynamic>>(networkRuleSet, (value) => value.toMap()),
      'premiumMessagingPartitions': ?premiumMessagingPartitions,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': ?tags,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (NamespaceCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (NamespaceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : (map['localAuthEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkRuleSet: map['networkRuleSet'] == null ? null : (NamespaceNetworkRuleSet.fromMap((map['networkRuleSet'] as Map).cast<String, dynamic>())).input(),
      premiumMessagingPartitions: map['premiumMessagingPartitions'] == null ? null : (map['premiumMessagingPartitions'] as int).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (map['sku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

