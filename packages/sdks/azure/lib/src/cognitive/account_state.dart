// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_customer_managed_key.dart';
import 'account_identity.dart';
import 'account_network_acls.dart';
import 'account_network_injection.dart';
import 'account_storage.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// If `kind` is `TextAnalytics` this specifies the ID of the Search service.
  final pulumi.Input<String>? customQuestionAnsweringSearchServiceId;
  /// If `kind` is `TextAnalytics` this specifies the key of the Search service.
  ///
  /// > **Note:** `custom_question_answering_search_service_id` and `custom_question_answering_search_service_key` are used for [Custom Question Answering, the renamed version of QnA Maker](https://docs.microsoft.com/azure/cognitive-services/qnamaker/custom-question-answering), while `qna_runtime_endpoint` is used for [the old version of QnA Maker](https://docs.microsoft.com/azure/cognitive-services/qnamaker/overview/overview)
  final pulumi.Input<String>? customQuestionAnsweringSearchServiceKey;
  /// The subdomain name used for Entra ID token-based authentication. This attribute is required when `network_acls` is specified. This attribute is also required when using the OpenAI service with libraries which assume the Azure OpenAI endpoint is a subdomain on `https://openai.azure.com/`, eg. `https://<custom_subdomain_name>.openai.azure.com/`. This can be specified during creation or added later, but once set changing this forces a new resource to be created.
  ///
  /// > **Note:** If you do not specify a `custom_subdomain_name` then you will not be able to attach a Private Endpoint to the resource. Moreover, functionality that requires Entra ID authentication, including Agent service, will not be accessible.
  final pulumi.Input<String>? customSubdomainName;
  /// A `customer_managed_key` block as documented below.
  final pulumi.Input<AccountCustomerManagedKey>? customerManagedKey;
  /// Whether to enable the dynamic throttling for this Cognitive Service Account. This attribute cannot be set when the `kind` is `OpenAI` or `AIServices`.
  final pulumi.Input<bool>? dynamicThrottlingEnabled;
  /// The endpoint used to connect to the Cognitive Service Account.
  final pulumi.Input<String>? endpoint;
  /// List of FQDNs allowed for the Cognitive Account.
  final pulumi.Input<List<String>>? fqdns;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// Specifies the type of Cognitive Service Account that should be created. Possible values are `Academic`, `AIServices`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `ContentSafety`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation` and `WebLM`. Changing this forces a new resource to be created except when upgrading the Cognitive Service Account from `OpenAI` to `AIServices` or rolling back from `AIServices` to `OpenAI`. More information on [upgrade and rollback scenario](https://learn.microsoft.com/en-us/azure/ai-foundry/how-to/upgrade-azure-openai?tabs=portal).
  ///
  /// > **Note:** New Bing Search resources cannot be created as their APIs are moving from Cognitive Services Platform to new surface area under Microsoft.com. Starting from October 30, 2020, existing instances of Bing Search APIs provisioned via Cognitive Services will be continuously supported for next 3 years or till the end of respective Enterprise Agreement, whichever happens first.
  ///
  /// > **Note:** You must create your first Face, Text Analytics, or Computer Vision resources from the Azure portal to review and acknowledge the terms and conditions. In Azure Portal, the checkbox to accept terms and conditions is only displayed when a US region is selected. More information on [Prerequisites](https://docs.microsoft.com/azure/cognitive-services/cognitive-services-apis-create-account-cli?tabs=windows#prerequisites).
  final pulumi.Input<String>? kind;
  /// Whether local authentication methods is enabled for the Cognitive Account. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Azure AD Client ID (Application ID). This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? metricsAdvisorAadClientId;
  /// The Azure AD Tenant ID. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? metricsAdvisorAadTenantId;
  /// The super user of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? metricsAdvisorSuperUserName;
  /// The website name of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This URL is mandatory if the `kind` is set to `QnAMaker`.
  final pulumi.Input<String>? metricsAdvisorWebsiteName;
  /// Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network_acls` block as defined below. When this property is specified, `custom_subdomain_name` is also required to be set.
  final pulumi.Input<AccountNetworkAcls>? networkAcls;
  /// A `network_injection` block as defined below. Only applicable if the `kind` is set to `AIServices`.
  final pulumi.Input<AccountNetworkInjection>? networkInjection;
  /// Whether outbound network access is restricted for the Cognitive Account. Defaults to `false`.
  final pulumi.Input<bool>? outboundNetworkAccessRestricted;
  /// A primary access key which can be used to connect to the Cognitive Service Account.
  final pulumi.Input<String>? primaryAccessKey;
  /// Whether project management is enabled. Can only be set to `true` when `kind` is set to `AIServices`. Once enabled, disabling `project_management_enabled` forces a new resource to be created unless `kind` is set to `OpenAI`. Defaults to `false`.
  final pulumi.Input<bool>? projectManagementEnabled;
  /// Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// A URL to link a QnAMaker cognitive account to a QnA runtime.
  final pulumi.Input<String>? qnaRuntimeEndpoint;
  /// The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary access key which can be used to connect to the Cognitive Service Account.
  final pulumi.Input<String>? secondaryAccessKey;
  /// Specifies the SKU Name for this Cognitive Service Account. Possible values are `C2`, `C3`, `C4`, `D3`, `DC0`, `E0`, `F0`, `F1`, `P0`, `P1`, `P2`, `S`, `S0`, `S1`, `S2`, `S3`, `S4`, `S5` and `S6`.
  ///
  /// > **Note:** SKU `DC0` is the commitment tier for Cognitive Services containers running in disconnected environments. You must obtain approval from Microsoft by submitting the [request form](https://aka.ms/csdisconnectedcontainers) first, before you can use this SKU. More information on [Purchase a commitment plan to use containers in disconnected environments](https://learn.microsoft.com/en-us/azure/cognitive-services/containers/disconnected-containers?tabs=stt#purchase-a-commitment-plan-to-use-containers-in-disconnected-environments).
  final pulumi.Input<String>? skuName;
  /// A `storage` block as defined below.
  final pulumi.Input<List<AccountStorage>>? storages;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountState].
  /// [customQuestionAnsweringSearchServiceId] If `kind` is `TextAnalytics` this specifies the ID of the Search service.
  /// [customQuestionAnsweringSearchServiceKey] If `kind` is `TextAnalytics` this specifies the key of the Search service.
  /// [customSubdomainName] The subdomain name used for Entra ID token-based authentication. This attribute is required when `network_acls` is specified. This attribute is also required when using the OpenAI service with libraries which assume the Azure OpenAI endpoint is a subdomain on `https://openai.azure.com/`, eg. `https://<custom_subdomain_name>.openai.azure.com/`. This can be specified during creation or added later, but once set changing this forces a new resource to be created.
  /// [customerManagedKey] A `customer_managed_key` block as documented below.
  /// [dynamicThrottlingEnabled] Whether to enable the dynamic throttling for this Cognitive Service Account. This attribute cannot be set when the `kind` is `OpenAI` or `AIServices`.
  /// [endpoint] The endpoint used to connect to the Cognitive Service Account.
  /// [fqdns] List of FQDNs allowed for the Cognitive Account.
  /// [identity] An `identity` block as defined below.
  /// [kind] Specifies the type of Cognitive Service Account that should be created. Possible values are `Academic`, `AIServices`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `ContentSafety`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation` and `WebLM`. Changing this forces a new resource to be created except when upgrading the Cognitive Service Account from `OpenAI` to `AIServices` or rolling back from `AIServices` to `OpenAI`. More information on [upgrade and rollback scenario](https://learn.microsoft.com/en-us/azure/ai-foundry/how-to/upgrade-azure-openai?tabs=portal).
  /// [localAuthEnabled] Whether local authentication methods is enabled for the Cognitive Account. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [metricsAdvisorAadClientId] The Azure AD Client ID (Application ID). This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  /// [metricsAdvisorAadTenantId] The Azure AD Tenant ID. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  /// [metricsAdvisorSuperUserName] The super user of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  /// [metricsAdvisorWebsiteName] The website name of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created.
  /// [networkAcls] A `network_acls` block as defined below. When this property is specified, `custom_subdomain_name` is also required to be set.
  /// [networkInjection] A `network_injection` block as defined below. Only applicable if the `kind` is set to `AIServices`.
  /// [outboundNetworkAccessRestricted] Whether outbound network access is restricted for the Cognitive Account. Defaults to `false`.
  /// [primaryAccessKey] A primary access key which can be used to connect to the Cognitive Service Account.
  /// [projectManagementEnabled] Whether project management is enabled. Can only be set to `true` when `kind` is set to `AIServices`. Once enabled, disabling `project_management_enabled` forces a new resource to be created unless `kind` is set to `OpenAI`. Defaults to `false`.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  /// [qnaRuntimeEndpoint] A URL to link a QnAMaker cognitive account to a QnA runtime.
  /// [resourceGroupName] The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The secondary access key which can be used to connect to the Cognitive Service Account.
  /// [skuName] Specifies the SKU Name for this Cognitive Service Account. Possible values are `C2`, `C3`, `C4`, `D3`, `DC0`, `E0`, `F0`, `F1`, `P0`, `P1`, `P2`, `S`, `S0`, `S1`, `S2`, `S3`, `S4`, `S5` and `S6`.
  /// [storages] A `storage` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  AccountState({
    this.customQuestionAnsweringSearchServiceId,
    this.customQuestionAnsweringSearchServiceKey,
    this.customSubdomainName,
    this.customerManagedKey,
    this.dynamicThrottlingEnabled,
    this.endpoint,
    this.fqdns,
    this.identity,
    this.kind,
    this.localAuthEnabled,
    this.location,
    this.metricsAdvisorAadClientId,
    this.metricsAdvisorAadTenantId,
    this.metricsAdvisorSuperUserName,
    this.metricsAdvisorWebsiteName,
    this.name,
    this.networkAcls,
    this.networkInjection,
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
      'customQuestionAnsweringSearchServiceKey': ?customQuestionAnsweringSearchServiceKey,
      'customSubdomainName': ?customSubdomainName,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<AccountCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'endpoint': ?endpoint,
      'fqdns': ?fqdns,
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'metricsAdvisorAadClientId': ?metricsAdvisorAadClientId,
      'metricsAdvisorAadTenantId': ?metricsAdvisorAadTenantId,
      'metricsAdvisorSuperUserName': ?metricsAdvisorSuperUserName,
      'metricsAdvisorWebsiteName': ?metricsAdvisorWebsiteName,
      'name': ?name,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<AccountNetworkAcls, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'networkInjection': ?pulumi.Input.mapOptionalInputValue<AccountNetworkInjection, Map<String, dynamic>>(networkInjection, (value) => value.toMap()),
      'outboundNetworkAccessRestricted': ?outboundNetworkAccessRestricted,
      'primaryAccessKey': ?primaryAccessKey,
      'projectManagementEnabled': ?projectManagementEnabled,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'qnaRuntimeEndpoint': ?qnaRuntimeEndpoint,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'skuName': ?skuName,
      'storages': ?pulumi.Input.mapOptionalInputValue<List<AccountStorage>, List<Map<String, dynamic>>>(storages, (value) => pulumi.Input.encodeList<AccountStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      customQuestionAnsweringSearchServiceId: map['customQuestionAnsweringSearchServiceId'] == null ? null : (map['customQuestionAnsweringSearchServiceId'] as String).input(),
      customQuestionAnsweringSearchServiceKey: map['customQuestionAnsweringSearchServiceKey'] == null ? null : (map['customQuestionAnsweringSearchServiceKey'] as String).input(),
      customSubdomainName: map['customSubdomainName'] == null ? null : (map['customSubdomainName'] as String).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (AccountCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())).input(),
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] == null ? null : (map['dynamicThrottlingEnabled'] as bool).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      fqdns: map['fqdns'] == null ? null : ((map['fqdns'] as List).cast<String>()).input(),
      identity: map['identity'] == null ? null : (AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : (map['localAuthEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metricsAdvisorAadClientId: map['metricsAdvisorAadClientId'] == null ? null : (map['metricsAdvisorAadClientId'] as String).input(),
      metricsAdvisorAadTenantId: map['metricsAdvisorAadTenantId'] == null ? null : (map['metricsAdvisorAadTenantId'] as String).input(),
      metricsAdvisorSuperUserName: map['metricsAdvisorSuperUserName'] == null ? null : (map['metricsAdvisorSuperUserName'] as String).input(),
      metricsAdvisorWebsiteName: map['metricsAdvisorWebsiteName'] == null ? null : (map['metricsAdvisorWebsiteName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkAcls: map['networkAcls'] == null ? null : (AccountNetworkAcls.fromMap((map['networkAcls'] as Map).cast<String, dynamic>())).input(),
      networkInjection: map['networkInjection'] == null ? null : (AccountNetworkInjection.fromMap((map['networkInjection'] as Map).cast<String, dynamic>())).input(),
      outboundNetworkAccessRestricted: map['outboundNetworkAccessRestricted'] == null ? null : (map['outboundNetworkAccessRestricted'] as bool).input(),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : (map['primaryAccessKey'] as String).input(),
      projectManagementEnabled: map['projectManagementEnabled'] == null ? null : (map['projectManagementEnabled'] as bool).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      qnaRuntimeEndpoint: map['qnaRuntimeEndpoint'] == null ? null : (map['qnaRuntimeEndpoint'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : (map['secondaryAccessKey'] as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
      storages: map['storages'] == null ? null : (pulumi.Input.decodeList<AccountStorage>(map['storages'], (value) => AccountStorage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

