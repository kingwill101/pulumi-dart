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
    pulumi.Output<String>? customSubdomainName,
    pulumi.Output<AIServicesCustomerManagedKey>? customerManagedKey,
    pulumi.Output<String>? endpoint,
    pulumi.Output<List<String>>? fqdns,
    pulumi.Output<AIServicesIdentity>? identity,
    pulumi.Output<bool>? localAuthenticationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<AIServicesNetworkAcls>? networkAcls,
    pulumi.Output<bool>? outboundNetworkAccessRestricted,
    pulumi.Output<String>? primaryAccessKey,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryAccessKey,
    pulumi.Output<String>? skuName,
    pulumi.Output<List<AIServicesStorage>>? storages,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customSubdomainName = pulumi.Input.asOptionalInput<String>(customSubdomainName),
      customerManagedKey = pulumi.Input.asOptionalInput<AIServicesCustomerManagedKey>(customerManagedKey),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      fqdns = pulumi.Input.asOptionalInput<List<String>>(fqdns),
      identity = pulumi.Input.asOptionalInput<AIServicesIdentity>(identity),
      localAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkAcls = pulumi.Input.asOptionalInput<AIServicesNetworkAcls>(networkAcls),
      outboundNetworkAccessRestricted = pulumi.Input.asOptionalInput<bool>(outboundNetworkAccessRestricted),
      primaryAccessKey = pulumi.Input.asOptionalInput<String>(primaryAccessKey),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryAccessKey = pulumi.Input.asOptionalInput<String>(secondaryAccessKey),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      storages = pulumi.Input.asOptionalInput<List<AIServicesStorage>>(storages),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      customSubdomainName: map['customSubdomainName'] == null ? null : pulumi.Output.create<String>(map['customSubdomainName'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<AIServicesCustomerManagedKey>(AIServicesCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      fqdns: map['fqdns'] == null ? null : pulumi.Output.create<List<String>>((map['fqdns'] as List).cast<String>()),
      identity: map['identity'] == null ? null : pulumi.Output.create<AIServicesIdentity>(AIServicesIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkAcls: map['networkAcls'] == null ? null : pulumi.Output.create<AIServicesNetworkAcls>(AIServicesNetworkAcls.fromMap((map['networkAcls'] as Map).cast<String, dynamic>())),
      outboundNetworkAccessRestricted: map['outboundNetworkAccessRestricted'] == null ? null : pulumi.Output.create<bool>(map['outboundNetworkAccessRestricted'] as bool),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['primaryAccessKey'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['secondaryAccessKey'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      storages: map['storages'] == null ? null : pulumi.Output.create<List<AIServicesStorage>>(pulumi.Input.decodeList<AIServicesStorage>(map['storages'], (value) => AIServicesStorage.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

