// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_customer_managed_key.dart';
import 'account_identity.dart';
import 'account_network_acls.dart';
import 'account_network_injection.dart';
import 'account_storage.dart';

/// {@template pulumi_cognitive_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_cognitive_account_account_args_doc}
class AccountArgs {
  /// If `kind` is `TextAnalytics` this specifies the ID of the Search service.
  final pulumi.Input<String>? customQuestionAnsweringSearchServiceId;
  /// If `kind` is `TextAnalytics` this specifies the key of the Search service.
  ///
  /// &gt; **Note:** `customQuestionAnsweringSearchServiceId` and `customQuestionAnsweringSearchServiceKey` are used for [Custom Question Answering, the renamed version of QnA Maker](https://docs.microsoft.com/azure/cognitive-services/qnamaker/custom-question-answering), while `qnaRuntimeEndpoint` is used for [the old version of QnA Maker](https://docs.microsoft.com/azure/cognitive-services/qnamaker/overview/overview)
  final pulumi.Input<String>? customQuestionAnsweringSearchServiceKey;
  /// The subdomain name used for Entra ID token-based authentication. This attribute is required when `networkAcls` is specified. This attribute is also required when using the OpenAI service with libraries which assume the Azure OpenAI endpoint is a subdomain on `https://openai.azure.com/`, eg. `https://&lt;custom_subdomain_name&gt;.openai.azure.com/`. This can be specified during creation or added later, but once set changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If you do not specify a `customSubdomainName` then you will not be able to attach a Private Endpoint to the resource. Moreover, functionality that requires Entra ID authentication, including Agent service, will not be accessible.
  final pulumi.Input<String>? customSubdomainName;
  /// A `customerManagedKey` block as documented below.
  final pulumi.Input<AccountCustomerManagedKey>? customerManagedKey;
  /// Whether to enable the dynamic throttling for this Cognitive Service Account. This attribute cannot be set when the `kind` is `OpenAI` or `AIServices`.
  final pulumi.Input<bool>? dynamicThrottlingEnabled;
  /// List of FQDNs allowed for the Cognitive Account.
  final pulumi.Input<List<String>>? fqdns;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// Specifies the type of Cognitive Service Account that should be created. Possible values are `Academic`, `AIServices`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `ContentSafety`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation` and `WebLM`. Changing this forces a new resource to be created except when upgrading the Cognitive Service Account from `OpenAI` to `AIServices` or rolling back from `AIServices` to `OpenAI`. More information on [upgrade and rollback scenario](https://learn.microsoft.com/en-us/azure/ai-foundry/how-to/upgrade-azure-openai?tabs=portal).
  ///
  /// &gt; **Note:** New Bing Search resources cannot be created as their APIs are moving from Cognitive Services Platform to new surface area under Microsoft.com. Starting from October 30, 2020, existing instances of Bing Search APIs provisioned via Cognitive Services will be continuously supported for next 3 years or till the end of respective Enterprise Agreement, whichever happens first.
  ///
  /// &gt; **Note:** You must create your first Face, Text Analytics, or Computer Vision resources from the Azure portal to review and acknowledge the terms and conditions. In Azure Portal, the checkbox to accept terms and conditions is only displayed when a US region is selected. More information on [Prerequisites](https://docs.microsoft.com/azure/cognitive-services/cognitive-services-apis-create-account-cli?tabs=windows#prerequisites).
  final pulumi.Input<String> kind;
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
  /// &gt; **Note:** This URL is mandatory if the `kind` is set to `QnAMaker`.
  final pulumi.Input<String>? metricsAdvisorWebsiteName;
  /// Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `networkAcls` block as defined below. When this property is specified, `customSubdomainName` is also required to be set.
  final pulumi.Input<AccountNetworkAcls>? networkAcls;
  /// A `networkInjection` block as defined below. Only applicable if the `kind` is set to `AIServices`.
  final pulumi.Input<AccountNetworkInjection>? networkInjection;
  /// Whether outbound network access is restricted for the Cognitive Account. Defaults to `false`.
  final pulumi.Input<bool>? outboundNetworkAccessRestricted;
  /// Whether project management is enabled. Can only be set to `true` when `kind` is set to `AIServices`. Once enabled, disabling `projectManagementEnabled` forces a new resource to be created unless `kind` is set to `OpenAI`. Defaults to `false`.
  final pulumi.Input<bool>? projectManagementEnabled;
  /// Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// A URL to link a QnAMaker cognitive account to a QnA runtime.
  final pulumi.Input<String>? qnaRuntimeEndpoint;
  /// The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the SKU Name for this Cognitive Service Account. Possible values are `C2`, `C3`, `C4`, `D3`, `DC0`, `E0`, `F0`, `F1`, `P0`, `P1`, `P2`, `S`, `S0`, `S1`, `S2`, `S3`, `S4`, `S5` and `S6`.
  ///
  /// &gt; **Note:** SKU `DC0` is the commitment tier for Cognitive Services containers running in disconnected environments. You must obtain approval from Microsoft by submitting the [request form](https://aka.ms/csdisconnectedcontainers) first, before you can use this SKU. More information on [Purchase a commitment plan to use containers in disconnected environments](https://learn.microsoft.com/en-us/azure/cognitive-services/containers/disconnected-containers?tabs=stt#purchase-a-commitment-plan-to-use-containers-in-disconnected-environments).
  final pulumi.Input<String> skuName;
  /// A `storage` block as defined below.
  final pulumi.Input<List<AccountStorage>>? storages;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [customQuestionAnsweringSearchServiceId] If `kind` is `TextAnalytics` this specifies the ID of the Search service.
  /// [customQuestionAnsweringSearchServiceKey] If `kind` is `TextAnalytics` this specifies the key of the Search service.
  /// [customSubdomainName] The subdomain name used for Entra ID token-based authentication. This attribute is required when `networkAcls` is specified. This attribute is also required when using the OpenAI service with libraries which assume the Azure OpenAI endpoint is a subdomain on `https://openai.azure.com/`, eg. `https://&lt;custom_subdomain_name&gt;.openai.azure.com/`. This can be specified during creation or added later, but once set changing this forces a new resource to be created.
  /// [customerManagedKey] A `customerManagedKey` block as documented below.
  /// [dynamicThrottlingEnabled] Whether to enable the dynamic throttling for this Cognitive Service Account. This attribute cannot be set when the `kind` is `OpenAI` or `AIServices`.
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
  /// [networkAcls] A `networkAcls` block as defined below. When this property is specified, `customSubdomainName` is also required to be set.
  /// [networkInjection] A `networkInjection` block as defined below. Only applicable if the `kind` is set to `AIServices`.
  /// [outboundNetworkAccessRestricted] Whether outbound network access is restricted for the Cognitive Account. Defaults to `false`.
  /// [projectManagementEnabled] Whether project management is enabled. Can only be set to `true` when `kind` is set to `AIServices`. Once enabled, disabling `projectManagementEnabled` forces a new resource to be created unless `kind` is set to `OpenAI`. Defaults to `false`.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  /// [qnaRuntimeEndpoint] A URL to link a QnAMaker cognitive account to a QnA runtime.
  /// [resourceGroupName] The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created.
  /// [skuName] Specifies the SKU Name for this Cognitive Service Account. Possible values are `C2`, `C3`, `C4`, `D3`, `DC0`, `E0`, `F0`, `F1`, `P0`, `P1`, `P2`, `S`, `S0`, `S1`, `S2`, `S3`, `S4`, `S5` and `S6`.
  /// [storages] A `storage` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  const AccountArgs({
    this.customQuestionAnsweringSearchServiceId,
    this.customQuestionAnsweringSearchServiceKey,
    this.customSubdomainName,
    this.customerManagedKey,
    this.dynamicThrottlingEnabled,
    this.fqdns,
    this.identity,
    required this.kind,
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
    this.projectManagementEnabled,
    this.publicNetworkAccessEnabled,
    this.qnaRuntimeEndpoint,
    required this.resourceGroupName,
    required this.skuName,
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
      'fqdns': ?fqdns,
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': kind,
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
      'projectManagementEnabled': ?projectManagementEnabled,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'qnaRuntimeEndpoint': ?qnaRuntimeEndpoint,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'storages': ?pulumi.Input.mapOptionalInputValue<List<AccountStorage>, List<Map<String, dynamic>>>(storages, (value) => pulumi.Input.encodeList<AccountStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      customQuestionAnsweringSearchServiceId: (() { final guardedValue = map['customQuestionAnsweringSearchServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customQuestionAnsweringSearchServiceKey: (() { final guardedValue = map['customQuestionAnsweringSearchServiceKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customSubdomainName: (() { final guardedValue = map['customSubdomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynamicThrottlingEnabled: (() { final guardedValue = map['dynamicThrottlingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricsAdvisorAadClientId: (() { final guardedValue = map['metricsAdvisorAadClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricsAdvisorAadTenantId: (() { final guardedValue = map['metricsAdvisorAadTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricsAdvisorSuperUserName: (() { final guardedValue = map['metricsAdvisorSuperUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricsAdvisorWebsiteName: (() { final guardedValue = map['metricsAdvisorWebsiteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkInjection: (() { final guardedValue = map['networkInjection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountNetworkInjection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundNetworkAccessRestricted: (() { final guardedValue = map['outboundNetworkAccessRestricted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      projectManagementEnabled: (() { final guardedValue = map['projectManagementEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      qnaRuntimeEndpoint: (() { final guardedValue = map['qnaRuntimeEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      storages: (() { final guardedValue = map['storages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountStorage>(guardedValue, (value) => AccountStorage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
