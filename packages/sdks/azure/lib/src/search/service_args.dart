// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_identity.dart';

/// {@template pulumi_search_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_search_service_service_args_doc}
class ServiceArgs {
  /// Specifies a list of inbound IPv4 or CIDRs that are allowed to access the Search Service. If the incoming IP request is from an IP address which is not included in the `allowed_ips` it will be blocked by the Search Services firewall.
  ///
  /// &gt; **Note:** The `allowed_ips` are only applied if the `public_network_access_enabled` field has been set to `true`, else all traffic over the public interface will be rejected, even if the `allowed_ips` field has been defined. When the `public_network_access_enabled` field has been set to `false` the private endpoint connections are the only allowed access point to the Search Service.
  final pulumi.Input<List<String>>? allowedIps;

  /// Specifies the response that the Search Service should return for requests that fail authentication. Possible values include `http401WithBearerChallenge` or `http403`.
  ///
  /// &gt; **Note:** `authentication_failure_mode` can only be configured when using `local_authentication_enabled` is set to `true` - which when set together specifies that both API Keys and AzureAD Authentication should be supported.
  final pulumi.Input<String>? authenticationFailureMode;

  /// Specifies whether the Search Service should enforce that non-customer resources are encrypted. Defaults to `false`.
  final pulumi.Input<bool>? customerManagedKeyEnforcementEnabled;

  /// Specifies the Hosting Mode, which allows for High Density partitions (that allow for up to 1000 indexes) should be supported. Possible values are `HighDensity` or `Default`. Defaults to `Default`. Changing this forces a new Search Service to be created.
  ///
  /// &gt; **Note:** `hosting_mode` can only be configured when `sku` is set to `standard3`.
  final pulumi.Input<String>? hostingMode;

  /// An `identity` block as defined below.
  final pulumi.Input<ServiceIdentity>? identity;

  /// Specifies whether the Search Service allows authenticating using API Keys? Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;

  /// The Azure Region where the Search Service should exist. Changing this forces a new Search Service to be created.
  final pulumi.Input<String>? location;

  /// The Name which should be used for this Search Service. Changing this forces a new Search Service to be created.
  final pulumi.Input<String>? name;

  /// Whether to allow trusted Azure services to access a network restricted Search Service? Possible values are `None` and `AzureServices`. Defaults to `None`.
  final pulumi.Input<String>? networkRuleBypassOption;

  /// Specifies the number of partitions which should be created. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). Possible values include `1`, `2`, `3`, `4`, `6`, or `12`. Defaults to `1`.
  ///
  /// &gt; **Note:** when `hosting_mode` is set to `highDensity` the maximum number of partitions allowed is `3`.
  final pulumi.Input<int>? partitionCount;

  /// Specifies whether Public Network Access is allowed for this resource. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// Specifies the number of Replica's which should be created for this Search Service. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)).
  final pulumi.Input<int>? replicaCount;

  /// The name of the Resource Group where the Search Service should exist. Changing this forces a new Search Service to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Specifies the Semantic Search SKU which should be used for this Search Service. Possible values include `free` and `standard`.
  ///
  /// &gt; **Note:** The `semantic_search_sku` cannot be defined if your Search Services `sku` is set to `free`. The Semantic Search feature is only available in certain regions, please see the [product documentation](https://learn.microsoft.com/azure/search/semantic-search-overview#availability-and-pricing) for more information.
  final pulumi.Input<String>? semanticSearchSku;

  /// The SKU which should be used for this Search Service. Possible values include `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1` and `storage_optimized_l2`.
  ///
  /// &gt; **Note:** The `basic` and `free` SKUs provision the Search Service in a Shared Cluster - the `standard` SKUs use a Dedicated Cluster.
  ///
  /// &gt; **Note:** The SKUs `standard2`, `standard3`, `storage_optimized_l1` and `storage_optimized_l2` are only available by submitting a quota increase request to Microsoft. Please see the [product documentation](https://learn.microsoft.com/azure/azure-resource-manager/troubleshooting/error-resource-quota?tabs=azure-cli) on how to submit a quota increase request.
  ///
  /// &gt; **Note:** SKU upgrades between Basic and Standard (S1, S2, S3) tiers from a lower tier to a higher tier (e.g., Basic → S1, S1 → S2, S2 → S3) are supported without recreating the resource. And your region must support the higher tier. All other SKU changes (downgrades, changes from/to Free tier, or changes to/from Storage Optimized tiers) will force creation of a new Search Service.
  final pulumi.Input<String> sku;

  /// Specifies a mapping of tags which should be assigned to this Search Service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceArgs].
  /// [allowedIps] Specifies a list of inbound IPv4 or CIDRs that are allowed to access the Search Service. If the incoming IP request is from an IP address which is not included in the `allowed_ips` it will be blocked by the Search Services firewall.
  /// [authenticationFailureMode] Specifies the response that the Search Service should return for requests that fail authentication. Possible values include `http401WithBearerChallenge` or `http403`.
  /// [customerManagedKeyEnforcementEnabled] Specifies whether the Search Service should enforce that non-customer resources are encrypted. Defaults to `false`.
  /// [hostingMode] Specifies the Hosting Mode, which allows for High Density partitions (that allow for up to 1000 indexes) should be supported. Possible values are `HighDensity` or `Default`. Defaults to `Default`. Changing this forces a new Search Service to be created.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] Specifies whether the Search Service allows authenticating using API Keys? Defaults to `true`.
  /// [location] The Azure Region where the Search Service should exist. Changing this forces a new Search Service to be created.
  /// [name] The Name which should be used for this Search Service. Changing this forces a new Search Service to be created.
  /// [networkRuleBypassOption] Whether to allow trusted Azure services to access a network restricted Search Service? Possible values are `None` and `AzureServices`. Defaults to `None`.
  /// [partitionCount] Specifies the number of partitions which should be created. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). Possible values include `1`, `2`, `3`, `4`, `6`, or `12`. Defaults to `1`.
  /// [publicNetworkAccessEnabled] Specifies whether Public Network Access is allowed for this resource. Defaults to `true`.
  /// [replicaCount] Specifies the number of Replica's which should be created for this Search Service. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)).
  /// [resourceGroupName] The name of the Resource Group where the Search Service should exist. Changing this forces a new Search Service to be created.
  /// [semanticSearchSku] Specifies the Semantic Search SKU which should be used for this Search Service. Possible values include `free` and `standard`.
  /// [sku] The SKU which should be used for this Search Service. Possible values include `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1` and `storage_optimized_l2`.
  /// [tags] Specifies a mapping of tags which should be assigned to this Search Service.
  ServiceArgs({
    this.allowedIps,
    this.authenticationFailureMode,
    this.customerManagedKeyEnforcementEnabled,
    this.hostingMode,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    this.networkRuleBypassOption,
    this.partitionCount,
    this.publicNetworkAccessEnabled,
    this.replicaCount,
    required this.resourceGroupName,
    this.semanticSearchSku,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIps': ?allowedIps,
      'authenticationFailureMode': ?authenticationFailureMode,
      'customerManagedKeyEnforcementEnabled':
          ?customerManagedKeyEnforcementEnabled,
      'hostingMode': ?hostingMode,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'networkRuleBypassOption': ?networkRuleBypassOption,
      'partitionCount': ?partitionCount,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'replicaCount': ?replicaCount,
      'resourceGroupName': resourceGroupName,
      'semanticSearchSku': ?semanticSearchSku,
      'sku': sku,
      'tags': ?tags,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      allowedIps: (() {
        final guardedValue = map['allowedIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      authenticationFailureMode: (() {
        final guardedValue = map['authenticationFailureMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerManagedKeyEnforcementEnabled: (() {
        final guardedValue = map['customerManagedKeyEnforcementEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostingMode: (() {
        final guardedValue = map['hostingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceIdentity.fromMap(
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
      partitionCount: (() {
        final guardedValue = map['partitionCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      replicaCount: (() {
        final guardedValue = map['replicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      semanticSearchSku: (() {
        final guardedValue = map['semanticSearchSku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: pulumi.Input.fromValue(map['sku'] as String),
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
