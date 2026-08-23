import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_rai_policy_args.dart';
import 'account_rai_policy_state.dart';

/// Manages a Cognitive Services Account RAI Policy.
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
///     location: "East US",
/// });
/// const exampleAccount = new azure.cognitive.Account("example", {
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "OpenAI",
///     skuName: "S0",
/// });
/// const exampleAccountRaiPolicy = new azure.cognitive.AccountRaiPolicy("example", {
///     name: "example-rai-policy",
///     cognitiveAccountId: exampleAccount.id,
///     basePolicyName: "Microsoft.Default",
///     contentFilters: [{
///         name: "Hate",
///         filterEnabled: true,
///         blockEnabled: true,
///         severityThreshold: "High",
///         source: "Prompt",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="East US")
/// example_account = azure.cognitive.Account("example",
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="OpenAI",
///     sku_name="S0")
/// example_account_rai_policy = azure.cognitive.AccountRaiPolicy("example",
///     name="example-rai-policy",
///     cognitive_account_id=example_account.id,
///     base_policy_name="Microsoft.Default",
///     content_filters=[{
///         "name": "Hate",
///         "filter_enabled": True,
///         "block_enabled": True,
///         "severity_threshold": "High",
///         "source": "Prompt",
///     }])
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
///         Location = "East US",
///     });
///
///     var exampleAccount = new Azure.Cognitive.Account("example", new()
///     {
///         Name = "example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "OpenAI",
///         SkuName = "S0",
///     });
///
///     var exampleAccountRaiPolicy = new Azure.Cognitive.AccountRaiPolicy("example", new()
///     {
///         Name = "example-rai-policy",
///         CognitiveAccountId = exampleAccount.Id,
///         BasePolicyName = "Microsoft.Default",
///         ContentFilters = new[]
///         {
///             new Azure.Cognitive.Inputs.AccountRaiPolicyContentFilterArgs
///             {
///                 Name = "Hate",
///                 FilterEnabled = true,
///                 BlockEnabled = true,
///                 SeverityThreshold = "High",
///                 Source = "Prompt",
///             },
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
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := cognitive.NewAccount(ctx, "example", &cognitive.AccountArgs{
/// 			Name:              pulumi.String("example-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.String("OpenAI"),
/// 			SkuName:           pulumi.String("S0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognitive.NewAccountRaiPolicy(ctx, "example", &cognitive.AccountRaiPolicyArgs{
/// 			Name:               pulumi.String("example-rai-policy"),
/// 			CognitiveAccountId: exampleAccount.ID(),
/// 			BasePolicyName:     pulumi.String("Microsoft.Default"),
/// 			ContentFilters: cognitive.AccountRaiPolicyContentFilterArray{
/// 				&cognitive.AccountRaiPolicyContentFilterArgs{
/// 					Name:              pulumi.String("Hate"),
/// 					FilterEnabled:     pulumi.Bool(true),
/// 					BlockEnabled:      pulumi.Bool(true),
/// 					SeverityThreshold: pulumi.String("High"),
/// 					Source:            pulumi.String("Prompt"),
/// 				},
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
///   location = "East US"
/// }
/// resource "azure_cognitive_account" "example" {
///   name                = "example-account"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   kind                = "OpenAI"
///   sku_name            = "S0"
/// }
/// resource "azure_cognitive_accountraipolicy" "example" {
///   name                 = "example-rai-policy"
///   cognitive_account_id = azure_cognitive_account.example.id
///   base_policy_name     = "Microsoft.Default"
///   content_filters {
///     name               = "Hate"
///     filter_enabled     = true
///     block_enabled      = true
///     severity_threshold = "High"
///     source             = "Prompt"
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
/// import com.pulumi.azure.cognitive.AccountRaiPolicy;
/// import com.pulumi.azure.cognitive.AccountRaiPolicyArgs;
/// import com.pulumi.azure.cognitive.inputs.AccountRaiPolicyContentFilterArgs;
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
///             .location("East US")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("OpenAI")
///             .skuName("S0")
///             .build());
///
///         var exampleAccountRaiPolicy = new AccountRaiPolicy("exampleAccountRaiPolicy", AccountRaiPolicyArgs.builder()
///             .name("example-rai-policy")
///             .cognitiveAccountId(exampleAccount.id())
///             .basePolicyName("Microsoft.Default")
///             .contentFilters(AccountRaiPolicyContentFilterArgs.builder()
///                 .name("Hate")
///                 .filterEnabled(true)
///                 .blockEnabled(true)
///                 .severityThreshold("High")
///                 .source("Prompt")
///                 .build())
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
///       location: East US
///   exampleAccount:
///     type: azure:cognitive:Account
///     name: example
///     properties:
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: OpenAI
///       skuName: S0
///   exampleAccountRaiPolicy:
///     type: azure:cognitive:AccountRaiPolicy
///     name: example
///     properties:
///       name: example-rai-policy
///       cognitiveAccountId: ${exampleAccount.id}
///       basePolicyName: Microsoft.Default
///       contentFilters:
///         - name: Hate
///           filterEnabled: true
///           blockEnabled: true
///           severityThreshold: High
///           source: Prompt
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
/// ## Import
///
/// Cognitive Service Account RAI Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/accountRaiPolicy:AccountRaiPolicy policy1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.CognitiveServices/accounts/account1/raiPolicies/policy1
/// ```
class AccountRaiPolicy extends pulumi.CustomResource {
  /// The name of the base policy to use for this RAI Policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> basePolicyName;
  /// The ID of the Cognitive Service Account to which this RAI Policy should be associated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cognitiveAccountId;
  /// A `contentFilter` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> contentFilters;
  /// The mode of the RAI Policy. Possible values are `Default`, `Deferred`, `Blocking` or `Asynchronous_filter`.
  late final pulumi.Output<String?> mode;
  /// The name of the Cognitive Service Account RAI Policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AccountRaiPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountRaiPolicy]. {@macro pulumi_cognitive_account_rai_policy_account_rai_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountRaiPolicy(
    String name, {
    AccountRaiPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountRaiPolicy:AccountRaiPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    basePolicyName = registerOutput<String>('basePolicyName');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    contentFilters = registerOutput<List<Map<String, dynamic>>>('contentFilters');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AccountRaiPolicy] resource's state with the given [name] and [id].
  static AccountRaiPolicy get(
    String name,
    pulumi.Input<String> id, {
    AccountRaiPolicyState? state,
  }) {
    return AccountRaiPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountRaiPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountRaiPolicy:AccountRaiPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    basePolicyName = registerOutput<String>('basePolicyName');
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    contentFilters = registerOutput<List<Map<String, dynamic>>>('contentFilters');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
