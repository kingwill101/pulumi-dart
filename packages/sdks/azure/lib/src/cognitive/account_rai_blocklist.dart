import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_rai_blocklist_args.dart';
import 'account_rai_blocklist_state.dart';

/// Manages a Microsoft Foundry "Guardrails + Controls" blocklist. Microsoft Foundry was previously known as "Cognitive Account".
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
///     location: "Brazil South",
/// });
/// const exampleAccount = new azure.cognitive.Account("example", {
///     name: "example-ca",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "OpenAI",
///     skuName: "S0",
/// });
/// const exampleAccountRaiBlocklist = new azure.cognitive.AccountRaiBlocklist("example", {
///     name: "example-crb",
///     cognitiveAccountId: exampleAccount.id,
///     description: "Azure OpenAI Rai Blocklist",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="Brazil South")
/// example_account = azure.cognitive.Account("example",
///     name="example-ca",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="OpenAI",
///     sku_name="S0")
/// example_account_rai_blocklist = azure.cognitive.AccountRaiBlocklist("example",
///     name="example-crb",
///     cognitive_account_id=example_account.id,
///     description="Azure OpenAI Rai Blocklist")
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
///         Location = "Brazil South",
///     });
///
///     var exampleAccount = new Azure.Cognitive.Account("example", new()
///     {
///         Name = "example-ca",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "OpenAI",
///         SkuName = "S0",
///     });
///
///     var exampleAccountRaiBlocklist = new Azure.Cognitive.AccountRaiBlocklist("example", new()
///     {
///         Name = "example-crb",
///         CognitiveAccountId = exampleAccount.Id,
///         Description = "Azure OpenAI Rai Blocklist",
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
/// 			Location: pulumi.String("Brazil South"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := cognitive.NewAccount(ctx, "example", &cognitive.AccountArgs{
/// 			Name:              pulumi.String("example-ca"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.String("OpenAI"),
/// 			SkuName:           pulumi.String("S0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognitive.NewAccountRaiBlocklist(ctx, "example", &cognitive.AccountRaiBlocklistArgs{
/// 			Name:               pulumi.String("example-crb"),
/// 			CognitiveAccountId: exampleAccount.ID(),
/// 			Description:        pulumi.String("Azure OpenAI Rai Blocklist"),
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
///   location = "Brazil South"
/// }
/// resource "azure_cognitive_account" "example" {
///   name                = "example-ca"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   kind                = "OpenAI"
///   sku_name            = "S0"
/// }
/// resource "azure_cognitive_accountraiblocklist" "example" {
///   name                 = "example-crb"
///   cognitive_account_id = azure_cognitive_account.example.id
///   description          = "Azure OpenAI Rai Blocklist"
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
/// import com.pulumi.azure.cognitive.AccountRaiBlocklist;
/// import com.pulumi.azure.cognitive.AccountRaiBlocklistArgs;
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
///             .location("Brazil South")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-ca")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("OpenAI")
///             .skuName("S0")
///             .build());
///
///         var exampleAccountRaiBlocklist = new AccountRaiBlocklist("exampleAccountRaiBlocklist", AccountRaiBlocklistArgs.builder()
///             .name("example-crb")
///             .cognitiveAccountId(exampleAccount.id())
///             .description("Azure OpenAI Rai Blocklist")
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
///       location: Brazil South
///   exampleAccount:
///     type: azure:cognitive:Account
///     name: example
///     properties:
///       name: example-ca
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: OpenAI
///       skuName: S0
///   exampleAccountRaiBlocklist:
///     type: azure:cognitive:AccountRaiBlocklist
///     name: example
///     properties:
///       name: example-crb
///       cognitiveAccountId: ${exampleAccount.id}
///       description: Azure OpenAI Rai Blocklist
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
/// Cognitive Account Rai Blocklist can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/accountRaiBlocklist:AccountRaiBlocklist example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.CognitiveServices/accounts/account1/raiBlocklists/raiblocklist1
/// ```
class AccountRaiBlocklist extends pulumi.CustomResource {
  /// The ID of the Cognitive Services Account. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  late final pulumi.Output<String> cognitiveAccountId;
  /// A short description for the Cognitive Account Rai Blocklist.
  late final pulumi.Output<String?> description;
  /// The name of the Cognitive Account Rai Blocklist. Changing this forces a new Cognitive Account Rai Blocklist to be created.
  late final pulumi.Output<String> name;
  /// A mapping of tags assigned to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AccountRaiBlocklist].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountRaiBlocklist]. {@macro pulumi_cognitive_account_rai_blocklist_account_rai_blocklist_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountRaiBlocklist(
    String name, {
    AccountRaiBlocklistArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountRaiBlocklist:AccountRaiBlocklist',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AccountRaiBlocklist] resource's state with the given [name] and [id].
  static AccountRaiBlocklist get(
    String name,
    pulumi.Input<String> id, {
    AccountRaiBlocklistState? state,
  }) {
    return AccountRaiBlocklist._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountRaiBlocklist._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountRaiBlocklist:AccountRaiBlocklist',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
