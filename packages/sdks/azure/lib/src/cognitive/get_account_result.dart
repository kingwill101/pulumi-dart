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
  final String customQuestionAnsweringSearchServiceId;
  /// The subdomain name used for Entra ID token-based authentication.
  final String customSubdomainName;
  /// A `customer_managed_key` block as defined below.
  final List<GetAccountCustomerManagedKey> customerManagedKeys;
  /// Whether dynamic throttling is enabled for this Cognitive Services Account.
  final bool dynamicThrottlingEnabled;
  /// The endpoint of the Cognitive Services Account.
  final String endpoint;
  /// List of FQDNs allowed for the Cognitive Services Account.
  final List<String> fqdns;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `identity` block as defined below.
  final List<GetAccountIdentity> identities;
  /// The type of the Cognitive Services Account.
  final String kind;
  /// Whether local authentication methods are enabled for the Cognitive Services Account.
  final bool localAuthEnabled;
  /// The Azure location where the Cognitive Services Account exists.
  final String location;
  /// The Microsoft Entra Application (client) ID.
  final String metricsAdvisorAadClientId;
  /// The Microsoft Entra Tenant ID.
  final String metricsAdvisorAadTenantId;
  /// The super user of Metrics Advisor.
  final String metricsAdvisorSuperUserName;
  /// The website name of Metrics Advisor.
  final String metricsAdvisorWebsiteName;
  final String name;
  /// A `network_acls` block as defined below.
  final List<GetAccountNetworkAcl> networkAcls;
  /// A `network_injection` block as defined below.
  final List<GetAccountNetworkInjection> networkInjections;
  /// Whether outbound network access is restricted for the Cognitive Services Account.
  final bool outboundNetworkAccessRestricted;
  /// The primary access key of the Cognitive Services Account.
  final String primaryAccessKey;
  /// Whether project management is enabled.
  final bool projectManagementEnabled;
  /// Whether public network access is allowed for the Cognitive Services Account.
  final bool publicNetworkAccessEnabled;
  /// The link to the QNA runtime.
  final String qnaRuntimeEndpoint;
  final String resourceGroupName;
  /// The secondary access key of the Cognitive Services Account.
  final String secondaryAccessKey;
  /// The SKU name of the Cognitive Services Account.
  final String skuName;
  /// A `storage` block as defined below.
  final List<GetAccountStorage> storages;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetAccountResult].
  /// [customQuestionAnsweringSearchServiceId] The ID of the search service.
  /// [customSubdomainName] The subdomain name used for Entra ID token-based authentication.
  /// [customerManagedKeys] A `customer_managed_key` block as defined below.
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
  /// [name] Required.
  /// [networkAcls] A `network_acls` block as defined below.
  /// [networkInjections] A `network_injection` block as defined below.
  /// [outboundNetworkAccessRestricted] Whether outbound network access is restricted for the Cognitive Services Account.
  /// [primaryAccessKey] The primary access key of the Cognitive Services Account.
  /// [projectManagementEnabled] Whether project management is enabled.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the Cognitive Services Account.
  /// [qnaRuntimeEndpoint] The link to the QNA runtime.
  /// [resourceGroupName] Required.
  /// [secondaryAccessKey] The secondary access key of the Cognitive Services Account.
  /// [skuName] The SKU name of the Cognitive Services Account.
  /// [storages] A `storage` block as defined below.
  /// [tags] A mapping of tags to assigned to the resource.
  GetAccountResult({
    required this.customQuestionAnsweringSearchServiceId,
    required this.customSubdomainName,
    required this.customerManagedKeys,
    required this.dynamicThrottlingEnabled,
    required this.endpoint,
    required this.fqdns,
    required this.id,
    required this.identities,
    required this.kind,
    required this.localAuthEnabled,
    required this.location,
    required this.metricsAdvisorAadClientId,
    required this.metricsAdvisorAadTenantId,
    required this.metricsAdvisorSuperUserName,
    required this.metricsAdvisorWebsiteName,
    required this.name,
    required this.networkAcls,
    required this.networkInjections,
    required this.outboundNetworkAccessRestricted,
    required this.primaryAccessKey,
    required this.projectManagementEnabled,
    required this.publicNetworkAccessEnabled,
    required this.qnaRuntimeEndpoint,
    required this.resourceGroupName,
    required this.secondaryAccessKey,
    required this.skuName,
    required this.storages,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customQuestionAnsweringSearchServiceId': customQuestionAnsweringSearchServiceId,
      'customSubdomainName': customSubdomainName,
      'customerManagedKeys': pulumi.Input.encodeList<GetAccountCustomerManagedKey, Map<String, dynamic>>(customerManagedKeys, (value) => value.toMap()),
      'dynamicThrottlingEnabled': dynamicThrottlingEnabled,
      'endpoint': endpoint,
      'fqdns': fqdns,
      'id': id,
      'identities': pulumi.Input.encodeList<GetAccountIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'kind': kind,
      'localAuthEnabled': localAuthEnabled,
      'location': location,
      'metricsAdvisorAadClientId': metricsAdvisorAadClientId,
      'metricsAdvisorAadTenantId': metricsAdvisorAadTenantId,
      'metricsAdvisorSuperUserName': metricsAdvisorSuperUserName,
      'metricsAdvisorWebsiteName': metricsAdvisorWebsiteName,
      'name': name,
      'networkAcls': pulumi.Input.encodeList<GetAccountNetworkAcl, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'networkInjections': pulumi.Input.encodeList<GetAccountNetworkInjection, Map<String, dynamic>>(networkInjections, (value) => value.toMap()),
      'outboundNetworkAccessRestricted': outboundNetworkAccessRestricted,
      'primaryAccessKey': primaryAccessKey,
      'projectManagementEnabled': projectManagementEnabled,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'qnaRuntimeEndpoint': qnaRuntimeEndpoint,
      'resourceGroupName': resourceGroupName,
      'secondaryAccessKey': secondaryAccessKey,
      'skuName': skuName,
      'storages': pulumi.Input.encodeList<GetAccountStorage, Map<String, dynamic>>(storages, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      customQuestionAnsweringSearchServiceId: map['customQuestionAnsweringSearchServiceId'] as String,
      customSubdomainName: map['customSubdomainName'] as String,
      customerManagedKeys: pulumi.Input.decodeList<GetAccountCustomerManagedKey>(map['customerManagedKeys'], (value) => GetAccountCustomerManagedKey.fromMap((value as Map).cast<String, dynamic>())),
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] as bool,
      endpoint: map['endpoint'] as String,
      fqdns: (map['fqdns'] as List).cast<String>(),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetAccountIdentity>(map['identities'], (value) => GetAccountIdentity.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      localAuthEnabled: map['localAuthEnabled'] as bool,
      location: map['location'] as String,
      metricsAdvisorAadClientId: map['metricsAdvisorAadClientId'] as String,
      metricsAdvisorAadTenantId: map['metricsAdvisorAadTenantId'] as String,
      metricsAdvisorSuperUserName: map['metricsAdvisorSuperUserName'] as String,
      metricsAdvisorWebsiteName: map['metricsAdvisorWebsiteName'] as String,
      name: map['name'] as String,
      networkAcls: pulumi.Input.decodeList<GetAccountNetworkAcl>(map['networkAcls'], (value) => GetAccountNetworkAcl.fromMap((value as Map).cast<String, dynamic>())),
      networkInjections: pulumi.Input.decodeList<GetAccountNetworkInjection>(map['networkInjections'], (value) => GetAccountNetworkInjection.fromMap((value as Map).cast<String, dynamic>())),
      outboundNetworkAccessRestricted: map['outboundNetworkAccessRestricted'] as bool,
      primaryAccessKey: map['primaryAccessKey'] as String,
      projectManagementEnabled: map['projectManagementEnabled'] as bool,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      qnaRuntimeEndpoint: map['qnaRuntimeEndpoint'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
      skuName: map['skuName'] as String,
      storages: pulumi.Input.decodeList<GetAccountStorage>(map['storages'], (value) => GetAccountStorage.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

