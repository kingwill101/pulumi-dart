// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aiservices_customer_managed_key.dart';
import 'aiservices_identity.dart';
import 'aiservices_network_acls.dart';
import 'aiservices_storage.dart';

/// {@template pulumi_cognitive_a_iservices_aiservices_args_doc}
/// The set of arguments for AIServices.
/// {@endtemplate}
/// {@macro pulumi_cognitive_a_iservices_aiservices_args_doc}
class AIServicesArgs {
  /// The subdomain name used for token-based authentication. This property is required when `network_acls` is specified. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If you do not specify a `custom_subdomain_name` then you will not be able to attach a Private Endpoint to the resource.
  final pulumi.Input<String>? customSubdomainName;
  /// A `customer_managed_key` block as documented below.
  final pulumi.Input<AIServicesCustomerManagedKey>? customerManagedKey;
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
  /// Whether public network access is allowed for the AI Services Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which the AI Services Account is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the SKU Name for this AI Services Account. Possible values are `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0` and `DC0`.
  ///
  /// &gt; **Note:** SKU `DC0` is the commitment tier for AI Services Account containers running in disconnected environments. You must obtain approval from Microsoft by submitting the [request form](https://aka.ms/csdisconnectedcontainers) first, before you can use this SKU. More information on [Purchase a commitment plan to use containers in disconnected environments](https://learn.microsoft.com/en-us/azure/cognitive-services/containers/disconnected-containers?tabs=stt#purchase-a-commitment-plan-to-use-containers-in-disconnected-environments).
  final pulumi.Input<String> skuName;
  /// A `storage` block as defined below.
  final pulumi.Input<List<AIServicesStorage>>? storages;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AIServicesArgs].
  /// [customSubdomainName] The subdomain name used for token-based authentication. This property is required when `network_acls` is specified. Changing this forces a new resource to be created.
  /// [customerManagedKey] A `customer_managed_key` block as documented below.
  /// [fqdns] List of FQDNs allowed for the AI Services Account.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] Whether local authentication is enabled for the AI Services Account. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the AI Services Account. Changing this forces a new resource to be created.
  /// [networkAcls] A `network_acls` block as defined below. When this property is specified, `custom_subdomain_name` is also required to be set.
  /// [outboundNetworkAccessRestricted] Whether outbound network access is restricted for the AI Services Account. Defaults to `false`.
  /// [publicNetworkAccess] Whether public network access is allowed for the AI Services Account. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which the AI Services Account is created. Changing this forces a new resource to be created.
  /// [skuName] Specifies the SKU Name for this AI Services Account. Possible values are `F0`, `F1`, `S0`, `S`, `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `P0`, `P1`, `P2`, `E0` and `DC0`.
  /// [storages] A `storage` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  AIServicesArgs({
    this.customSubdomainName,
    this.customerManagedKey,
    this.fqdns,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    this.networkAcls,
    this.outboundNetworkAccessRestricted,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.skuName,
    this.storages,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSubdomainName': ?customSubdomainName,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<AIServicesCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'fqdns': ?fqdns,
      'identity': ?pulumi.Input.mapOptionalInputValue<AIServicesIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<AIServicesNetworkAcls, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'outboundNetworkAccessRestricted': ?outboundNetworkAccessRestricted,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'storages': ?pulumi.Input.mapOptionalInputValue<List<AIServicesStorage>, List<Map<String, dynamic>>>(storages, (value) => pulumi.Input.encodeList<AIServicesStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AIServicesArgs.fromMap(Map<String, dynamic> map) {
    return AIServicesArgs(
      customSubdomainName: (() { final guardedValue = map['customSubdomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AIServicesCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AIServicesIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AIServicesNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundNetworkAccessRestricted: (() { final guardedValue = map['outboundNetworkAccessRestricted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      storages: (() { final guardedValue = map['storages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AIServicesStorage>(guardedValue, (value) => AIServicesStorage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

