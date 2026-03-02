// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aiservices_customer_managed_key.dart';
import 'aiservices_identity.dart';
import 'aiservices_network_acls.dart';
import 'aiservices_storage.dart';

/// Input properties used for looking up and filtering AIServices resources.
class AIServicesState {
  /// The subdomain name used for token-based authentication. This property is required when `network_acls` is specified. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If you do not specify a `custom_subdomain_name` then you will not be able to attach a Private Endpoint to the resource.
  final pulumi.Input<String>? customSubdomainName;
  /// A `customer_managed_key` block as documented below.
  final pulumi.Input<AIServicesCustomerManagedKey>? customerManagedKey;
  /// The endpoint used to connect to the AI Services Account.
  final pulumi.Input<String>? endpoint;
  /// List of FQDNs allowed for the AI Services Account.
  final pulumi.Input<List<String>>? fqdns;
  /// An `identity` block as defined below.
  final pulumi.Input<AIServicesIdentity>? identity;
  /// Whether local authentication is enabled for the AI Services Account. Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the AI Services Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network_acls` block as defined below. When this property is specified, `custom_subdomain_name` is also required to be set.
  final pulumi.Input<AIServicesNetworkAcls>? networkAcls;
  /// Whether outbound network access is restricted for the AI Services Account. Defaults to `false`.
  final pulumi.Input<bool>? outboundNetworkAccessRestricted;
  /// A primary access key which can be used to connect to the AI Services Account.
  final pulumi.Input<String>? primaryAccessKey;
  /// Whether public network access is allowed for the AI Services Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which the AI Services Account is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary access key which can be used to connect to the AI Services Account.
  final pulumi.Input<String>? secondaryAccessKey;
  /// Specifies the SKU Name for this AI Services Account. Possible values are `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0` and `DC0`.
  ///
  /// > **Note:** SKU `DC0` is the commitment tier for AI Services Account containers running in disconnected environments. You must obtain approval from Microsoft by submitting the [request form](https://aka.ms/csdisconnectedcontainers) first, before you can use this SKU. More information on [Purchase a commitment plan to use containers in disconnected environments](https://learn.microsoft.com/en-us/azure/cognitive-services/containers/disconnected-containers?tabs=stt#purchase-a-commitment-plan-to-use-containers-in-disconnected-environments).
  final pulumi.Input<String>? skuName;
  /// A `storage` block as defined below.
  final pulumi.Input<List<AIServicesStorage>>? storages;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AIServicesState].
  /// [customSubdomainName] The subdomain name used for token-based authentication. This property is required when `network_acls` is specified. Changing this forces a new resource to be created.
  /// [customerManagedKey] A `customer_managed_key` block as documented below.
  /// [endpoint] The endpoint used to connect to the AI Services Account.
  /// [fqdns] List of FQDNs allowed for the AI Services Account.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] Whether local authentication is enabled for the AI Services Account. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the AI Services Account. Changing this forces a new resource to be created.
  /// [networkAcls] A `network_acls` block as defined below. When this property is specified, `custom_subdomain_name` is also required to be set.
  /// [outboundNetworkAccessRestricted] Whether outbound network access is restricted for the AI Services Account. Defaults to `false`.
  /// [primaryAccessKey] A primary access key which can be used to connect to the AI Services Account.
  /// [publicNetworkAccess] Whether public network access is allowed for the AI Services Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which the AI Services Account is created. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The secondary access key which can be used to connect to the AI Services Account.
  /// [skuName] Specifies the SKU Name for this AI Services Account. Possible values are `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0` and `DC0`.
  /// [storages] A `storage` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  AIServicesState({
    this.customSubdomainName,
    this.customerManagedKey,
    this.endpoint,
    this.fqdns,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    this.networkAcls,
    this.outboundNetworkAccessRestricted,
    this.primaryAccessKey,
    this.publicNetworkAccess,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.skuName,
    this.storages,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSubdomainName': ?customSubdomainName,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<AIServicesCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'fqdns': ?fqdns,
      'identity': ?pulumi.Input.mapOptionalInputValue<AIServicesIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<AIServicesNetworkAcls, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'outboundNetworkAccessRestricted': ?outboundNetworkAccessRestricted,
      'primaryAccessKey': ?primaryAccessKey,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'skuName': ?skuName,
      'storages': ?pulumi.Input.mapOptionalInputValue<List<AIServicesStorage>, List<Map<String, dynamic>>>(storages, (value) => pulumi.Input.encodeList<AIServicesStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AIServicesState.fromMap(Map<String, dynamic> map) {
    return AIServicesState(
      customSubdomainName: map['customSubdomainName'] == null ? null : (map['customSubdomainName'] as String).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (AIServicesCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      fqdns: map['fqdns'] == null ? null : ((map['fqdns'] as List).cast<String>()).input(),
      identity: map['identity'] == null ? null : (AIServicesIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : (map['localAuthenticationEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkAcls: map['networkAcls'] == null ? null : (AIServicesNetworkAcls.fromMap((map['networkAcls'] as Map).cast<String, dynamic>())).input(),
      outboundNetworkAccessRestricted: map['outboundNetworkAccessRestricted'] == null ? null : (map['outboundNetworkAccessRestricted'] as bool).input(),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : (map['primaryAccessKey'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : (map['secondaryAccessKey'] as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
      storages: map['storages'] == null ? null : (pulumi.Input.decodeList<AIServicesStorage>(map['storages'], (value) => AIServicesStorage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

