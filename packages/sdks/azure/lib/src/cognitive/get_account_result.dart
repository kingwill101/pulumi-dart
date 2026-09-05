// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_customer_managed_key.dart';
import 'get_account_identity.dart';
import 'get_account_network_acl.dart';
import 'get_account_network_injection.dart';
import 'get_account_storage.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The ID of the search service.
  final String? customQuestionAnsweringSearchServiceId;
  /// The subdomain name used for Entra ID token-based authentication.
  final String? customSubdomainName;
  /// A `customerManagedKey` block as defined below.
  final List<GetAccountCustomerManagedKey>? customerManagedKeys;
  /// Whether dynamic throttling is enabled for this Cognitive Services Account.
  final bool? dynamicThrottlingEnabled;
  /// The endpoint of the Cognitive Services Account.
  final String? endpoint;
  /// List of FQDNs allowed for the Cognitive Services Account.
  final List<String>? fqdns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetAccountIdentity>? identities;
  /// The type of the Cognitive Services Account.
  final String? kind;
  /// Whether local authentication methods are enabled for the Cognitive Services Account.
  final bool? localAuthEnabled;
  /// The Azure location where the Cognitive Services Account exists.
  final String? location;
  /// The Microsoft Entra Application (client) ID.
  final String? metricsAdvisorAadClientId;
  /// The Microsoft Entra Tenant ID.
  final String? metricsAdvisorAadTenantId;
  /// The super user of Metrics Advisor.
  final String? metricsAdvisorSuperUserName;
  /// The website name of Metrics Advisor.
  final String? metricsAdvisorWebsiteName;
  final String? name;
  /// A `networkAcls` block as defined below.
  final List<GetAccountNetworkAcl>? networkAcls;
  /// A `networkInjection` block as defined below.
  final List<GetAccountNetworkInjection>? networkInjections;
  /// Whether outbound network access is restricted for the Cognitive Services Account.
  final bool? outboundNetworkAccessRestricted;
  /// The primary access key of the Cognitive Services Account.
  final String? primaryAccessKey;
  /// Whether project management is enabled.
  final bool? projectManagementEnabled;
  /// Whether public network access is allowed for the Cognitive Services Account.
  final bool? publicNetworkAccessEnabled;
  /// The link to the QNA runtime.
  final String? qnaRuntimeEndpoint;
  final String? resourceGroupName;
  /// The secondary access key of the Cognitive Services Account.
  final String? secondaryAccessKey;
  /// The SKU name of the Cognitive Services Account.
  final String? skuName;
  /// A `storage` block as defined below.
  final List<GetAccountStorage>? storages;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetAccountResult].
  /// [customQuestionAnsweringSearchServiceId] The ID of the search service.
  /// [customSubdomainName] The subdomain name used for Entra ID token-based authentication.
  /// [customerManagedKeys] A `customerManagedKey` block as defined below.
  /// [dynamicThrottlingEnabled] Whether dynamic throttling is enabled for this Cognitive Services Account.
  /// [endpoint] The endpoint of the Cognitive Services Account.
  /// [fqdns] List of FQDNs allowed for the Cognitive Services Account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [kind] The type of the Cognitive Services Account.
  /// [localAuthEnabled] Whether local authentication methods are enabled for the Cognitive Services Account.
  /// [location] The Azure location where the Cognitive Services Account exists.
  /// [metricsAdvisorAadClientId] The Microsoft Entra Application (client) ID.
  /// [metricsAdvisorAadTenantId] The Microsoft Entra Tenant ID.
  /// [metricsAdvisorSuperUserName] The super user of Metrics Advisor.
  /// [metricsAdvisorWebsiteName] The website name of Metrics Advisor.
  /// [name] Optional.
  /// [networkAcls] A `networkAcls` block as defined below.
  /// [networkInjections] A `networkInjection` block as defined below.
  /// [outboundNetworkAccessRestricted] Whether outbound network access is restricted for the Cognitive Services Account.
  /// [primaryAccessKey] The primary access key of the Cognitive Services Account.
  /// [projectManagementEnabled] Whether project management is enabled.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the Cognitive Services Account.
  /// [qnaRuntimeEndpoint] The link to the QNA runtime.
  /// [resourceGroupName] Optional.
  /// [secondaryAccessKey] The secondary access key of the Cognitive Services Account.
  /// [skuName] The SKU name of the Cognitive Services Account.
  /// [storages] A `storage` block as defined below.
  /// [tags] A mapping of tags to assigned to the resource.
  const GetAccountResult({
    this.customQuestionAnsweringSearchServiceId,
    this.customSubdomainName,
    this.customerManagedKeys,
    this.dynamicThrottlingEnabled,
    this.endpoint,
    this.fqdns,
    this.id,
    this.identities,
    this.kind,
    this.localAuthEnabled,
    this.location,
    this.metricsAdvisorAadClientId,
    this.metricsAdvisorAadTenantId,
    this.metricsAdvisorSuperUserName,
    this.metricsAdvisorWebsiteName,
    this.name,
    this.networkAcls,
    this.networkInjections,
    this.outboundNetworkAccessRestricted,
    this.primaryAccessKey,
    this.projectManagementEnabled,
    this.publicNetworkAccessEnabled,
    this.qnaRuntimeEndpoint,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.skuName,
    this.storages,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customQuestionAnsweringSearchServiceId': ?customQuestionAnsweringSearchServiceId,
      'customSubdomainName': ?customSubdomainName,
      'customerManagedKeys': ?(() { final guardedValue = customerManagedKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountCustomerManagedKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'endpoint': ?endpoint,
      'fqdns': ?fqdns,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'metricsAdvisorAadClientId': ?metricsAdvisorAadClientId,
      'metricsAdvisorAadTenantId': ?metricsAdvisorAadTenantId,
      'metricsAdvisorSuperUserName': ?metricsAdvisorSuperUserName,
      'metricsAdvisorWebsiteName': ?metricsAdvisorWebsiteName,
      'name': ?name,
      'networkAcls': ?(() { final guardedValue = networkAcls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountNetworkAcl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkInjections': ?(() { final guardedValue = networkInjections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountNetworkInjection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'outboundNetworkAccessRestricted': ?outboundNetworkAccessRestricted,
      'primaryAccessKey': ?primaryAccessKey,
      'projectManagementEnabled': ?projectManagementEnabled,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'qnaRuntimeEndpoint': ?qnaRuntimeEndpoint,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'skuName': ?skuName,
      'storages': ?(() { final guardedValue = storages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountStorage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      customQuestionAnsweringSearchServiceId: (() { final guardedValue = map['customQuestionAnsweringSearchServiceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customSubdomainName: (() { final guardedValue = map['customSubdomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerManagedKeys: (() { final guardedValue = map['customerManagedKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountCustomerManagedKey>(guardedValue, (value) => GetAccountCustomerManagedKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      dynamicThrottlingEnabled: (() { final guardedValue = map['dynamicThrottlingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountIdentity>(guardedValue, (value) => GetAccountIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricsAdvisorAadClientId: (() { final guardedValue = map['metricsAdvisorAadClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricsAdvisorAadTenantId: (() { final guardedValue = map['metricsAdvisorAadTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricsAdvisorSuperUserName: (() { final guardedValue = map['metricsAdvisorSuperUserName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricsAdvisorWebsiteName: (() { final guardedValue = map['metricsAdvisorWebsiteName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountNetworkAcl>(guardedValue, (value) => GetAccountNetworkAcl.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkInjections: (() { final guardedValue = map['networkInjections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountNetworkInjection>(guardedValue, (value) => GetAccountNetworkInjection.fromMap((value as Map).cast<String, dynamic>())); })(),
      outboundNetworkAccessRestricted: (() { final guardedValue = map['outboundNetworkAccessRestricted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectManagementEnabled: (() { final guardedValue = map['projectManagementEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      qnaRuntimeEndpoint: (() { final guardedValue = map['qnaRuntimeEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storages: (() { final guardedValue = map['storages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountStorage>(guardedValue, (value) => GetAccountStorage.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
