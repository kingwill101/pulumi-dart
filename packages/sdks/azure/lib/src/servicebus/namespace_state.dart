// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_customer_managed_key.dart';
import 'namespace_identity.dart';
import 'namespace_network_rule_set.dart';

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// Specifies the capacity. When `sku` is `Premium`, capacity can be `1`, `2`, `4`, `8` or `16`. When `sku` is `Basic` or `Standard`, capacity can be `0` only.
  final pulumi.Input<int>? capacity;

  /// An `customer_managed_key` block as defined below.
  final pulumi.Input<NamespaceCustomerManagedKey>? customerManagedKey;

  /// The primary connection string for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultPrimaryConnectionString;

  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultPrimaryKey;

  /// The secondary connection string for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultSecondaryConnectionString;

  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final pulumi.Input<String>? defaultSecondaryKey;

  /// The URL to access the Service Bus Namespace.
  final pulumi.Input<String>? endpoint;

  /// An `identity` block as defined below.
  final pulumi.Input<NamespaceIdentity>? identity;

  /// Whether or not SAS authentication is enabled for the Service Bus namespace. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// The minimum supported TLS version for this Service Bus Namespace. Valid values are: `1.0`, `1.1` and `1.2`. Defaults to `1.2`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? minimumTlsVersion;

  /// Specifies the name of the Service Bus Namespace resource . Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// An `network_rule_set` block as defined below.
  final pulumi.Input<NamespaceNetworkRuleSet>? networkRuleSet;

  /// Specifies the number messaging partitions. Only valid when `sku` is `Premium` and the minimum number is `1`. Possible values include `0`, `1`, `2`, and `4`. Defaults to `0` for Standard, Basic namespace. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** It's not possible to change the partitioning option on any existing namespace. The number of partitions can only be set during namespace creation. Please check the doc https://learn.microsoft.com/en-us/azure/service-bus-messaging/enable-partitions-premium for more feature restrictions.
  final pulumi.Input<int>? premiumMessagingPartitions;

  /// Is public network access enabled for the Service Bus Namespace? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// The name of the resource group in which to Changing this forces a new resource to be created.
  /// create the namespace.
  final pulumi.Input<String>? resourceGroupName;

  /// Defines which tier to use. Options are `Basic`, `Standard` or `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource.
  final pulumi.Input<String>? sku;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceState].
  /// [capacity] Specifies the capacity. When `sku` is `Premium`, capacity can be `1`, `2`, `4`, `8` or `16`. When `sku` is `Basic` or `Standard`, capacity can be `0` only.
  /// [customerManagedKey] An `customer_managed_key` block as defined below.
  /// [defaultPrimaryConnectionString] The primary connection string for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultPrimaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryConnectionString] The secondary connection string for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [endpoint] The URL to access the Service Bus Namespace.
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
  NamespaceState({
    this.capacity,
    this.customerManagedKey,
    this.defaultPrimaryConnectionString,
    this.defaultPrimaryKey,
    this.defaultSecondaryConnectionString,
    this.defaultSecondaryKey,
    this.endpoint,
    this.identity,
    this.localAuthEnabled,
    this.location,
    this.minimumTlsVersion,
    this.name,
    this.networkRuleSet,
    this.premiumMessagingPartitions,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'customerManagedKey':
          ?pulumi.Input.mapOptionalInputValue<
            NamespaceCustomerManagedKey,
            Map<String, dynamic>
          >(customerManagedKey, (value) => value.toMap()),
      'defaultPrimaryConnectionString': ?defaultPrimaryConnectionString,
      'defaultPrimaryKey': ?defaultPrimaryKey,
      'defaultSecondaryConnectionString': ?defaultSecondaryConnectionString,
      'defaultSecondaryKey': ?defaultSecondaryKey,
      'endpoint': ?endpoint,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            NamespaceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'networkRuleSet':
          ?pulumi.Input.mapOptionalInputValue<
            NamespaceNetworkRuleSet,
            Map<String, dynamic>
          >(networkRuleSet, (value) => value.toMap()),
      'premiumMessagingPartitions': ?premiumMessagingPartitions,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      customerManagedKey: (() {
        final guardedValue = map['customerManagedKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NamespaceCustomerManagedKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultPrimaryConnectionString: (() {
        final guardedValue = map['defaultPrimaryConnectionString'];
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
      defaultSecondaryKey: (() {
        final guardedValue = map['defaultSecondaryKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NamespaceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      localAuthEnabled: (() {
        final guardedValue = map['localAuthEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      networkRuleSet: (() {
        final guardedValue = map['networkRuleSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NamespaceNetworkRuleSet.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      premiumMessagingPartitions: (() {
        final guardedValue = map['premiumMessagingPartitions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
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
