// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_identity.dart';
import 'service_query_key.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Specifies a list of inbound IPv4 or CIDRs that are allowed to access the Search Service. If the incoming IP request is from an IP address which is not included in the `allowed_ips` it will be blocked by the Search Services firewall.
  ///
  /// > **Note:** The `allowed_ips` are only applied if the `public_network_access_enabled` field has been set to `true`, else all traffic over the public interface will be rejected, even if the `allowed_ips` field has been defined. When the `public_network_access_enabled` field has been set to `false` the private endpoint connections are the only allowed access point to the Search Service.
  final pulumi.Input<List<String>>? allowedIps;
  /// Specifies the response that the Search Service should return for requests that fail authentication. Possible values include `http401WithBearerChallenge` or `http403`.
  ///
  /// > **Note:** `authentication_failure_mode` can only be configured when using `local_authentication_enabled` is set to `true` - which when set together specifies that both API Keys and AzureAD Authentication should be supported.
  final pulumi.Input<String>? authenticationFailureMode;
  /// Describes whether the search service is compliant or not with respect to having non-customer encrypted resources. If a service has more than one non-customer encrypted resource and `Enforcement` is `enabled` then the service will be marked as `NonCompliant`. If all the resources are customer encrypted, then the service will be marked as `Compliant`.
  final pulumi.Input<String>? customerManagedKeyEncryptionComplianceStatus;
  /// Specifies whether the Search Service should enforce that non-customer resources are encrypted. Defaults to `false`.
  final pulumi.Input<bool>? customerManagedKeyEnforcementEnabled;
  /// Specifies the Hosting Mode, which allows for High Density partitions (that allow for up to 1000 indexes) should be supported. Possible values are `HighDensity` or `Default`. Defaults to `Default`. Changing this forces a new Search Service to be created.
  ///
  /// > **Note:** `hosting_mode` can only be configured when `sku` is set to `standard3`.
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
  /// > **Note:** when `hosting_mode` is set to `highDensity` the maximum number of partitions allowed is `3`.
  final pulumi.Input<int>? partitionCount;
  /// The Primary Key used for Search Service Administration.
  final pulumi.Input<String>? primaryKey;
  /// Specifies whether Public Network Access is allowed for this resource. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// A `query_keys` block as defined below.
  final pulumi.Input<List<ServiceQueryKey>>? queryKeys;
  /// Specifies the number of Replica's which should be created for this Search Service. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)).
  final pulumi.Input<int>? replicaCount;
  /// The name of the Resource Group where the Search Service should exist. Changing this forces a new Search Service to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Secondary Key used for Search Service Administration.
  final pulumi.Input<String>? secondaryKey;
  /// Specifies the Semantic Search SKU which should be used for this Search Service. Possible values include `free` and `standard`.
  ///
  /// > **Note:** The `semantic_search_sku` cannot be defined if your Search Services `sku` is set to `free`. The Semantic Search feature is only available in certain regions, please see the [product documentation](https://learn.microsoft.com/azure/search/semantic-search-overview#availability-and-pricing) for more information.
  final pulumi.Input<String>? semanticSearchSku;
  /// The SKU which should be used for this Search Service. Possible values include `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1` and `storage_optimized_l2`.
  ///
  /// > **Note:** The `basic` and `free` SKUs provision the Search Service in a Shared Cluster - the `standard` SKUs use a Dedicated Cluster.
  ///
  /// > **Note:** The SKUs `standard2`, `standard3`, `storage_optimized_l1` and `storage_optimized_l2` are only available by submitting a quota increase request to Microsoft. Please see the [product documentation](https://learn.microsoft.com/azure/azure-resource-manager/troubleshooting/error-resource-quota?tabs=azure-cli) on how to submit a quota increase request.
  ///
  /// > **Note:** SKU upgrades between Basic and Standard (S1, S2, S3) tiers from a lower tier to a higher tier (e.g., Basic → S1, S1 → S2, S2 → S3) are supported without recreating the resource. And your region must support the higher tier. All other SKU changes (downgrades, changes from/to Free tier, or changes to/from Storage Optimized tiers) will force creation of a new Search Service.
  final pulumi.Input<String>? sku;
  /// Specifies a mapping of tags which should be assigned to this Search Service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceState].
  /// [allowedIps] Specifies a list of inbound IPv4 or CIDRs that are allowed to access the Search Service. If the incoming IP request is from an IP address which is not included in the `allowed_ips` it will be blocked by the Search Services firewall.
  /// [authenticationFailureMode] Specifies the response that the Search Service should return for requests that fail authentication. Possible values include `http401WithBearerChallenge` or `http403`.
  /// [customerManagedKeyEncryptionComplianceStatus] Describes whether the search service is compliant or not with respect to having non-customer encrypted resources. If a service has more than one non-customer encrypted resource and `Enforcement` is `enabled` then the service will be marked as `NonCompliant`. If all the resources are customer encrypted, then the service will be marked as `Compliant`.
  /// [customerManagedKeyEnforcementEnabled] Specifies whether the Search Service should enforce that non-customer resources are encrypted. Defaults to `false`.
  /// [hostingMode] Specifies the Hosting Mode, which allows for High Density partitions (that allow for up to 1000 indexes) should be supported. Possible values are `HighDensity` or `Default`. Defaults to `Default`. Changing this forces a new Search Service to be created.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] Specifies whether the Search Service allows authenticating using API Keys? Defaults to `true`.
  /// [location] The Azure Region where the Search Service should exist. Changing this forces a new Search Service to be created.
  /// [name] The Name which should be used for this Search Service. Changing this forces a new Search Service to be created.
  /// [networkRuleBypassOption] Whether to allow trusted Azure services to access a network restricted Search Service? Possible values are `None` and `AzureServices`. Defaults to `None`.
  /// [partitionCount] Specifies the number of partitions which should be created. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)). Possible values include `1`, `2`, `3`, `4`, `6`, or `12`. Defaults to `1`.
  /// [primaryKey] The Primary Key used for Search Service Administration.
  /// [publicNetworkAccessEnabled] Specifies whether Public Network Access is allowed for this resource. Defaults to `true`.
  /// [queryKeys] A `query_keys` block as defined below.
  /// [replicaCount] Specifies the number of Replica's which should be created for this Search Service. This field cannot be set when using a `free` sku ([see the Microsoft documentation](https://learn.microsoft.com/azure/search/search-sku-tier)).
  /// [resourceGroupName] The name of the Resource Group where the Search Service should exist. Changing this forces a new Search Service to be created.
  /// [secondaryKey] The Secondary Key used for Search Service Administration.
  /// [semanticSearchSku] Specifies the Semantic Search SKU which should be used for this Search Service. Possible values include `free` and `standard`.
  /// [sku] The SKU which should be used for this Search Service. Possible values include `basic`, `free`, `standard`, `standard2`, `standard3`, `storage_optimized_l1` and `storage_optimized_l2`.
  /// [tags] Specifies a mapping of tags which should be assigned to this Search Service.
  ServiceState({
    pulumi.Output<List<String>>? allowedIps,
    pulumi.Output<String>? authenticationFailureMode,
    pulumi.Output<String>? customerManagedKeyEncryptionComplianceStatus,
    pulumi.Output<bool>? customerManagedKeyEnforcementEnabled,
    pulumi.Output<String>? hostingMode,
    pulumi.Output<ServiceIdentity>? identity,
    pulumi.Output<bool>? localAuthenticationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkRuleBypassOption,
    pulumi.Output<int>? partitionCount,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<List<ServiceQueryKey>>? queryKeys,
    pulumi.Output<int>? replicaCount,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<String>? semanticSearchSku,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      allowedIps = pulumi.Input.asOptionalInput<List<String>>(allowedIps),
      authenticationFailureMode = pulumi.Input.asOptionalInput<String>(authenticationFailureMode),
      customerManagedKeyEncryptionComplianceStatus = pulumi.Input.asOptionalInput<String>(customerManagedKeyEncryptionComplianceStatus),
      customerManagedKeyEnforcementEnabled = pulumi.Input.asOptionalInput<bool>(customerManagedKeyEnforcementEnabled),
      hostingMode = pulumi.Input.asOptionalInput<String>(hostingMode),
      identity = pulumi.Input.asOptionalInput<ServiceIdentity>(identity),
      localAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkRuleBypassOption = pulumi.Input.asOptionalInput<String>(networkRuleBypassOption),
      partitionCount = pulumi.Input.asOptionalInput<int>(partitionCount),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      queryKeys = pulumi.Input.asOptionalInput<List<ServiceQueryKey>>(queryKeys),
      replicaCount = pulumi.Input.asOptionalInput<int>(replicaCount),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      semanticSearchSku = pulumi.Input.asOptionalInput<String>(semanticSearchSku),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIps': ?allowedIps,
      'authenticationFailureMode': ?authenticationFailureMode,
      'customerManagedKeyEncryptionComplianceStatus': ?customerManagedKeyEncryptionComplianceStatus,
      'customerManagedKeyEnforcementEnabled': ?customerManagedKeyEnforcementEnabled,
      'hostingMode': ?hostingMode,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'networkRuleBypassOption': ?networkRuleBypassOption,
      'partitionCount': ?partitionCount,
      'primaryKey': ?primaryKey,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'queryKeys': ?pulumi.Input.mapOptionalInputValue<List<ServiceQueryKey>, List<Map<String, dynamic>>>(queryKeys, (value) => pulumi.Input.encodeList<ServiceQueryKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaCount': ?replicaCount,
      'resourceGroupName': ?resourceGroupName,
      'secondaryKey': ?secondaryKey,
      'semanticSearchSku': ?semanticSearchSku,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      allowedIps: map['allowedIps'] == null ? null : pulumi.Output.create<List<String>>((map['allowedIps'] as List).cast<String>()),
      authenticationFailureMode: map['authenticationFailureMode'] == null ? null : pulumi.Output.create<String>(map['authenticationFailureMode'] as String),
      customerManagedKeyEncryptionComplianceStatus: map['customerManagedKeyEncryptionComplianceStatus'] == null ? null : pulumi.Output.create<String>(map['customerManagedKeyEncryptionComplianceStatus'] as String),
      customerManagedKeyEnforcementEnabled: map['customerManagedKeyEnforcementEnabled'] == null ? null : pulumi.Output.create<bool>(map['customerManagedKeyEnforcementEnabled'] as bool),
      hostingMode: map['hostingMode'] == null ? null : pulumi.Output.create<String>(map['hostingMode'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServiceIdentity>(ServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkRuleBypassOption: map['networkRuleBypassOption'] == null ? null : pulumi.Output.create<String>(map['networkRuleBypassOption'] as String),
      partitionCount: map['partitionCount'] == null ? null : pulumi.Output.create<int>(map['partitionCount'] as int),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      queryKeys: map['queryKeys'] == null ? null : pulumi.Output.create<List<ServiceQueryKey>>(pulumi.Input.decodeList<ServiceQueryKey>(map['queryKeys'], (value) => ServiceQueryKey.fromMap((value as Map).cast<String, dynamic>()))),
      replicaCount: map['replicaCount'] == null ? null : pulumi.Output.create<int>(map['replicaCount'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      semanticSearchSku: map['semanticSearchSku'] == null ? null : pulumi.Output.create<String>(map['semanticSearchSku'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

