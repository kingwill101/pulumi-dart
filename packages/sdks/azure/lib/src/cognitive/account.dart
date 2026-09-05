import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_customer_managed_key.dart';
import 'account_identity.dart';
import 'account_network_acls.dart';
import 'account_network_injection.dart';
import 'account_state.dart';
import 'account_storage.dart';

/// Manages a Cognitive Services Account.
///
/// &gt; **Note:** The Cognitive Services Account manages the resource type for various Azure AI resource implementations, including Azure AI Foundry, Azure OpenAI, Azure Speech, Azure Vision and others. Each service shares the same control plane but exposes a different subset of developer APIs. Azure AI Foundry (kind = `AIServices`) provides the superset of capabilities. For more information, please see [Azure AI Foundry architecture](https://learn.microsoft.com/en-us/azure/ai-foundry/concepts/architecture).
///
/// &gt; **Note:** The Azure Provider will attempt to Purge the Cognitive Services Account during deletion. This feature can be disabled using the `features` block within the `provider` block, see the provider documentation on the features block for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.cognitive.Account("example", {
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "Face",
///     skuName: "S0",
///     tags: {
///         Acceptance: "Test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.cognitive.Account("example",
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="Face",
///     sku_name="S0",
///     tags={
///         "Acceptance": "Test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Cognitive.Account("example", new()
///     {
///         Name = "example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "Face",
///         SkuName = "S0",
///         Tags =
///         {
///             { "Acceptance", "Test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cognitive"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognitive.NewAccount(ctx, "example", &cognitive.AccountArgs{
/// 			Name:              pulumi.String("example-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.String("Face"),
/// 			SkuName:           pulumi.String("S0"),
/// 			Tags: pulumi.StringMap{
/// 				"Acceptance": pulumi.String("Test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_cognitive_account" "example" {
///   name                = "example-account"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   kind                = "Face"
///   sku_name            = "S0"
///   tags = {
///     "Acceptance" = "Test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.cognitive.Account;
/// import com.pulumi.azure.cognitive.AccountArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("Face")
///             .skuName("S0")
///             .tags(Map.of("Acceptance", "Test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:cognitive:Account
///     name: example
///     properties:
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: Face
///       skuName: S0
///       tags:
///         Acceptance: Test
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CognitiveServices` - 2026-03-01
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Cognitive Service Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/account:Account account1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.CognitiveServices/accounts/account1
/// ```
class Account extends pulumi.CustomResource {
  /// If `kind` is `TextAnalytics` this specifies the ID of the Search service.
  late final pulumi.Output<String?> customQuestionAnsweringSearchServiceId;
  /// If `kind` is `TextAnalytics` this specifies the key of the Search service.
  ///
  /// &gt; **Note:** `customQuestionAnsweringSearchServiceId` and `customQuestionAnsweringSearchServiceKey` are used for [Custom Question Answering, the renamed version of QnA Maker](https://docs.microsoft.com/azure/cognitive-services/qnamaker/custom-question-answering), while `qnaRuntimeEndpoint` is used for [the old version of QnA Maker](https://docs.microsoft.com/azure/cognitive-services/qnamaker/overview/overview)
  late final pulumi.Output<String?> customQuestionAnsweringSearchServiceKey;
  /// The subdomain name used for Entra ID token-based authentication. This attribute is required when `networkAcls` is specified. This attribute is also required when using the OpenAI service with libraries which assume the Azure OpenAI endpoint is a subdomain on `https://openai.azure.com/`, eg. `https://&lt;custom_subdomain_name&gt;.openai.azure.com/`. This can be specified during creation or added later, but once set changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If you do not specify a `customSubdomainName` then you will not be able to attach a Private Endpoint to the resource. Moreover, functionality that requires Entra ID authentication, including Agent service, will not be accessible.
  late final pulumi.Output<String?> customSubdomainName;
  /// A `customerManagedKey` block as documented below.
  late final pulumi.Output<AccountCustomerManagedKey?> customerManagedKey;
  /// Whether to enable the dynamic throttling for this Cognitive Service Account. This attribute cannot be set when the `kind` is `OpenAI` or `AIServices`.
  late final pulumi.Output<bool?> dynamicThrottlingEnabled;
  /// The endpoint used to connect to the Cognitive Service Account.
  late final pulumi.Output<String> endpoint;
  /// List of FQDNs allowed for the Cognitive Account.
  late final pulumi.Output<List<String>?> fqdns;
  /// An `identity` block as defined below.
  late final pulumi.Output<AccountIdentity?> identity;
  /// Specifies the type of Cognitive Service Account that should be created. Possible values are `Academic`, `AIServices`, `AnomalyDetector`, `Bing.Autosuggest`, `Bing.Autosuggest.v7`, `Bing.CustomSearch`, `Bing.Search`, `Bing.Search.v7`, `Bing.Speech`, `Bing.SpellCheck`, `Bing.SpellCheck.v7`, `CognitiveServices`, `ComputerVision`, `ContentModerator`, `ContentSafety`, `CustomSpeech`, `CustomVision.Prediction`, `CustomVision.Training`, `Emotion`, `Face`, `FormRecognizer`, `ImmersiveReader`, `LUIS`, `LUIS.Authoring`, `MetricsAdvisor`, `OpenAI`, `Personalizer`, `QnAMaker`, `Recommendations`, `SpeakerRecognition`, `Speech`, `SpeechServices`, `SpeechTranslation`, `TextAnalytics`, `TextTranslation` and `WebLM`. Changing this forces a new resource to be created except when upgrading the Cognitive Service Account from `OpenAI` to `AIServices` or rolling back from `AIServices` to `OpenAI`. More information on [upgrade and rollback scenario](https://learn.microsoft.com/en-us/azure/ai-foundry/how-to/upgrade-azure-openai?tabs=portal).
  ///
  /// &gt; **Note:** New Bing Search resources cannot be created as their APIs are moving from Cognitive Services Platform to new surface area under Microsoft.com. Starting from October 30, 2020, existing instances of Bing Search APIs provisioned via Cognitive Services will be continuously supported for next 3 years or till the end of respective Enterprise Agreement, whichever happens first.
  ///
  /// &gt; **Note:** You must create your first Face, Text Analytics, or Computer Vision resources from the Azure portal to review and acknowledge the terms and conditions. In Azure Portal, the checkbox to accept terms and conditions is only displayed when a US region is selected. More information on [Prerequisites](https://docs.microsoft.com/azure/cognitive-services/cognitive-services-apis-create-account-cli?tabs=windows#prerequisites).
  late final pulumi.Output<String> kind;
  /// Whether local authentication methods is enabled for the Cognitive Account. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The Azure AD Client ID (Application ID). This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> metricsAdvisorAadClientId;
  /// The Azure AD Tenant ID. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> metricsAdvisorAadTenantId;
  /// The super user of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> metricsAdvisorSuperUserName;
  /// The website name of Metrics Advisor. This attribute is only set when kind is `MetricsAdvisor`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This URL is mandatory if the `kind` is set to `QnAMaker`.
  late final pulumi.Output<String?> metricsAdvisorWebsiteName;
  /// Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `networkAcls` block as defined below. When this property is specified, `customSubdomainName` is also required to be set.
  late final pulumi.Output<AccountNetworkAcls?> networkAcls;
  /// A `networkInjection` block as defined below. Only applicable if the `kind` is set to `AIServices`.
  late final pulumi.Output<AccountNetworkInjection?> networkInjection;
  /// Whether outbound network access is restricted for the Cognitive Account. Defaults to `false`.
  late final pulumi.Output<bool?> outboundNetworkAccessRestricted;
  /// A primary access key which can be used to connect to the Cognitive Service Account.
  late final pulumi.Output<String> primaryAccessKey;
  /// Whether project management is enabled. Can only be set to `true` when `kind` is set to `AIServices`. Once enabled, disabling `projectManagementEnabled` forces a new resource to be created unless `kind` is set to `OpenAI`. Defaults to `false`.
  late final pulumi.Output<bool?> projectManagementEnabled;
  /// Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// A URL to link a QnAMaker cognitive account to a QnA runtime.
  late final pulumi.Output<String?> qnaRuntimeEndpoint;
  /// The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary access key which can be used to connect to the Cognitive Service Account.
  late final pulumi.Output<String> secondaryAccessKey;
  /// Specifies the SKU Name for this Cognitive Service Account. Possible values are `C2`, `C3`, `C4`, `D3`, `DC0`, `E0`, `F0`, `F1`, `P0`, `P1`, `P2`, `S`, `S0`, `S1`, `S2`, `S3`, `S4`, `S5` and `S6`.
  ///
  /// &gt; **Note:** SKU `DC0` is the commitment tier for Cognitive Services containers running in disconnected environments. You must obtain approval from Microsoft by submitting the [request form](https://aka.ms/csdisconnectedcontainers) first, before you can use this SKU. More information on [Purchase a commitment plan to use containers in disconnected environments](https://learn.microsoft.com/en-us/azure/cognitive-services/containers/disconnected-containers?tabs=stt#purchase-a-commitment-plan-to-use-containers-in-disconnected-environments).
  late final pulumi.Output<String> skuName;
  /// A `storage` block as defined below.
  late final pulumi.Output<List<AccountStorage>?> storages;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_cognitive_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['customQuestionAnsweringSearchServiceKey', 'primaryAccessKey', 'secondaryAccessKey'],
        ) {
    customQuestionAnsweringSearchServiceId = registerOutput<String?>('customQuestionAnsweringSearchServiceId');
    customQuestionAnsweringSearchServiceKey = registerOutput<String?>('customQuestionAnsweringSearchServiceKey', isSecret: true);
    customSubdomainName = registerOutput<String?>('customSubdomainName');
    customerManagedKey = registerOutput<AccountCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dynamicThrottlingEnabled = registerOutput<bool?>('dynamicThrottlingEnabled');
    endpoint = registerOutput<String>('endpoint');
    fqdns = registerOutput<List<String>?>('fqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    identity = registerOutput<AccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    metricsAdvisorAadClientId = registerOutput<String?>('metricsAdvisorAadClientId');
    metricsAdvisorAadTenantId = registerOutput<String?>('metricsAdvisorAadTenantId');
    metricsAdvisorSuperUserName = registerOutput<String?>('metricsAdvisorSuperUserName');
    metricsAdvisorWebsiteName = registerOutput<String?>('metricsAdvisorWebsiteName');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<AccountNetworkAcls?>('networkAcls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkInjection = registerOutput<AccountNetworkInjection?>('networkInjection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountNetworkInjection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outboundNetworkAccessRestricted = registerOutput<bool?>('outboundNetworkAccessRestricted');
    primaryAccessKey = registerOutput<String>('primaryAccessKey', isSecret: true);
    projectManagementEnabled = registerOutput<bool?>('projectManagementEnabled');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    qnaRuntimeEndpoint = registerOutput<String?>('qnaRuntimeEndpoint');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey', isSecret: true);
    skuName = registerOutput<String>('skuName');
    storages = registerOutput<List<AccountStorage>?>('storages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountStorage>(guardedValue, (value) => AccountStorage.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customQuestionAnsweringSearchServiceId = registerOutput<String?>('customQuestionAnsweringSearchServiceId');
    customQuestionAnsweringSearchServiceKey = registerOutput<String?>('customQuestionAnsweringSearchServiceKey', isSecret: true);
    customSubdomainName = registerOutput<String?>('customSubdomainName');
    customerManagedKey = registerOutput<AccountCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dynamicThrottlingEnabled = registerOutput<bool?>('dynamicThrottlingEnabled');
    endpoint = registerOutput<String>('endpoint');
    fqdns = registerOutput<List<String>?>('fqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    identity = registerOutput<AccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    metricsAdvisorAadClientId = registerOutput<String?>('metricsAdvisorAadClientId');
    metricsAdvisorAadTenantId = registerOutput<String?>('metricsAdvisorAadTenantId');
    metricsAdvisorSuperUserName = registerOutput<String?>('metricsAdvisorSuperUserName');
    metricsAdvisorWebsiteName = registerOutput<String?>('metricsAdvisorWebsiteName');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<AccountNetworkAcls?>('networkAcls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkInjection = registerOutput<AccountNetworkInjection?>('networkInjection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountNetworkInjection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outboundNetworkAccessRestricted = registerOutput<bool?>('outboundNetworkAccessRestricted');
    primaryAccessKey = registerOutput<String>('primaryAccessKey', isSecret: true);
    projectManagementEnabled = registerOutput<bool?>('projectManagementEnabled');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    qnaRuntimeEndpoint = registerOutput<String?>('qnaRuntimeEndpoint');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey', isSecret: true);
    skuName = registerOutput<String>('skuName');
    storages = registerOutput<List<AccountStorage>?>('storages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountStorage>(guardedValue, (value) => AccountStorage.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'azure:cognitive/account:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['customQuestionAnsweringSearchServiceKey', 'primaryAccessKey', 'secondaryAccessKey'],
        isResourceReference: true,
      ) {
    customQuestionAnsweringSearchServiceId = registerOutput<String?>('customQuestionAnsweringSearchServiceId');
    customQuestionAnsweringSearchServiceKey = registerOutput<String?>('customQuestionAnsweringSearchServiceKey', isSecret: true);
    customSubdomainName = registerOutput<String?>('customSubdomainName');
    customerManagedKey = registerOutput<AccountCustomerManagedKey?>('customerManagedKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dynamicThrottlingEnabled = registerOutput<bool?>('dynamicThrottlingEnabled');
    endpoint = registerOutput<String>('endpoint');
    fqdns = registerOutput<List<String>?>('fqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    identity = registerOutput<AccountIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    metricsAdvisorAadClientId = registerOutput<String?>('metricsAdvisorAadClientId');
    metricsAdvisorAadTenantId = registerOutput<String?>('metricsAdvisorAadTenantId');
    metricsAdvisorSuperUserName = registerOutput<String?>('metricsAdvisorSuperUserName');
    metricsAdvisorWebsiteName = registerOutput<String?>('metricsAdvisorWebsiteName');
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<AccountNetworkAcls?>('networkAcls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkInjection = registerOutput<AccountNetworkInjection?>('networkInjection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountNetworkInjection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    outboundNetworkAccessRestricted = registerOutput<bool?>('outboundNetworkAccessRestricted');
    primaryAccessKey = registerOutput<String>('primaryAccessKey', isSecret: true);
    projectManagementEnabled = registerOutput<bool?>('projectManagementEnabled');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    qnaRuntimeEndpoint = registerOutput<String?>('qnaRuntimeEndpoint');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey', isSecret: true);
    skuName = registerOutput<String>('skuName');
    storages = registerOutput<List<AccountStorage>?>('storages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountStorage>(guardedValue, (value) => AccountStorage.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
