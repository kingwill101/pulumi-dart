import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_args.dart';
import 'webhook_state.dart';

/// Manages an Automation Runbook's Webhook.
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
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "account1",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleRunBook = new azure.automation.RunBook("example", {
///     name: "Get-AzureVMTutorial",
///     location: example.location,
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     logVerbose: true,
///     logProgress: true,
///     description: "This is an example runbook",
///     runbookType: "PowerShellWorkflow",
///     publishContentLink: {
///         uri: "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/c4935ffb69246a6058eb24f54640f53f69d3ac9f/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1",
///     },
/// });
/// const exampleWebhook = new azure.automation.Webhook("example", {
///     name: "TestRunbook_webhook",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     expiryTime: "2021-12-31T00:00:00Z",
///     enabled: true,
///     runbookName: exampleRunBook.name,
///     parameters: {
///         input: "parameter",
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
/// example_account = azure.automation.Account("example",
///     name="account1",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_run_book = azure.automation.RunBook("example",
///     name="Get-AzureVMTutorial",
///     location=example.location,
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     log_verbose=True,
///     log_progress=True,
///     description="This is an example runbook",
///     runbook_type="PowerShellWorkflow",
///     publish_content_link={
///         "uri": "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/c4935ffb69246a6058eb24f54640f53f69d3ac9f/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1",
///     })
/// example_webhook = azure.automation.Webhook("example",
///     name="TestRunbook_webhook",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     expiry_time="2021-12-31T00:00:00Z",
///     enabled=True,
///     runbook_name=example_run_book.name,
///     parameters={
///         "input": "parameter",
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
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "account1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleRunBook = new Azure.Automation.RunBook("example", new()
///     {
///         Name = "Get-AzureVMTutorial",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         LogVerbose = true,
///         LogProgress = true,
///         Description = "This is an example runbook",
///         RunbookType = "PowerShellWorkflow",
///         PublishContentLink = new Azure.Automation.Inputs.RunBookPublishContentLinkArgs
///         {
///             Uri = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/c4935ffb69246a6058eb24f54640f53f69d3ac9f/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1",
///         },
///     });
///
///     var exampleWebhook = new Azure.Automation.Webhook("example", new()
///     {
///         Name = "TestRunbook_webhook",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         ExpiryTime = "2021-12-31T00:00:00Z",
///         Enabled = true,
///         RunbookName = exampleRunBook.Name,
///         Parameters =
///         {
///             { "input", "parameter" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
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
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("account1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRunBook, err := automation.NewRunBook(ctx, "example", &automation.RunBookArgs{
/// 			Name:                  pulumi.String("Get-AzureVMTutorial"),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			LogVerbose:            pulumi.Bool(true),
/// 			LogProgress:           pulumi.Bool(true),
/// 			Description:           pulumi.String("This is an example runbook"),
/// 			RunbookType:           pulumi.String("PowerShellWorkflow"),
/// 			PublishContentLink: &automation.RunBookPublishContentLinkArgs{
/// 				Uri: pulumi.String("https://raw.githubusercontent.com/Azure/azure-quickstart-templates/c4935ffb69246a6058eb24f54640f53f69d3ac9f/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewWebhook(ctx, "example", &automation.WebhookArgs{
/// 			Name:                  pulumi.String("TestRunbook_webhook"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			ExpiryTime:            pulumi.String("2021-12-31T00:00:00Z"),
/// 			Enabled:               pulumi.Bool(true),
/// 			RunbookName:           exampleRunBook.Name,
/// 			Parameters: pulumi.StringMap{
/// 				"input": pulumi.String("parameter"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
/// import com.pulumi.azure.automation.RunBook;
/// import com.pulumi.azure.automation.RunBookArgs;
/// import com.pulumi.azure.automation.inputs.RunBookPublishContentLinkArgs;
/// import com.pulumi.azure.automation.Webhook;
/// import com.pulumi.azure.automation.WebhookArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("account1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleRunBook = new RunBook("exampleRunBook", RunBookArgs.builder()
///             .name("Get-AzureVMTutorial")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .logVerbose(true)
///             .logProgress(true)
///             .description("This is an example runbook")
///             .runbookType("PowerShellWorkflow")
///             .publishContentLink(RunBookPublishContentLinkArgs.builder()
///                 .uri("https://raw.githubusercontent.com/Azure/azure-quickstart-templates/c4935ffb69246a6058eb24f54640f53f69d3ac9f/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1")
///                 .build())
///             .build());
///
///         var exampleWebhook = new Webhook("exampleWebhook", WebhookArgs.builder()
///             .name("TestRunbook_webhook")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .expiryTime("2021-12-31T00:00:00Z")
///             .enabled(true)
///             .runbookName(exampleRunBook.name())
///             .parameters(Map.of("input", "parameter"))
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
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: account1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleRunBook:
///     type: azure:automation:RunBook
///     name: example
///     properties:
///       name: Get-AzureVMTutorial
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       logVerbose: 'true'
///       logProgress: 'true'
///       description: This is an example runbook
///       runbookType: PowerShellWorkflow
///       publishContentLink:
///         uri: https://raw.githubusercontent.com/Azure/azure-quickstart-templates/c4935ffb69246a6058eb24f54640f53f69d3ac9f/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1
///   exampleWebhook:
///     type: azure:automation:Webhook
///     name: example
///     properties:
///       name: TestRunbook_webhook
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       expiryTime: 2021-12-31T00:00:00Z
///       enabled: true
///       runbookName: ${exampleRunBook.name}
///       parameters:
///         input: parameter
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2015-10-31
///
/// ## Import
///
/// Automation Webhooks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/webhook:Webhook TestRunbook_webhook /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/webHooks/TestRunbook_webhook
/// ```
class Webhook extends pulumi.CustomResource {
  /// The name of the automation account in which the Webhook is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// Controls if Webhook is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Timestamp when the webhook expires. Changing this forces a new resource to be created.
  late final pulumi.Output<String> expiryTime;
  /// Specifies the name of the Webhook. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Map of input parameters passed to runbook.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The name of the resource group in which the Webhook is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Name of the hybrid worker group the Webhook job will run on.
  late final pulumi.Output<String?> runOnWorkerGroup;
  /// Name of the Automation Runbook to execute by Webhook.
  late final pulumi.Output<String> runbookName;
  /// URI to initiate the webhook. Can be generated using [Generate URI API](https://docs.microsoft.com/rest/api/automation/webhook/generate-uri). By default, new URI is generated on each new resource creation. Changing this forces a new resource to be created.
  late final pulumi.Output<String> uri;

  /// Creates a new [Webhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Webhook]. {@macro pulumi_automation_webhook_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Webhook(
    String name, {
    WebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/webhook:Webhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    enabled = registerOutput<bool?>('enabled');
    expiryTime = registerOutput<String>('expiryTime');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    runOnWorkerGroup = registerOutput<String?>('runOnWorkerGroup');
    runbookName = registerOutput<String>('runbookName');
    uri = registerOutput<String>('uri');
  }

  /// Gets an existing [Webhook] resource's state with the given [name] and [id].
  static Webhook get(
    String name,
    pulumi.Input<String> id, {
    WebhookState? state,
  }) {
    return Webhook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Webhook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/webhook:Webhook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    enabled = registerOutput<bool?>('enabled');
    expiryTime = registerOutput<String>('expiryTime');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    runOnWorkerGroup = registerOutput<String?>('runOnWorkerGroup');
    runbookName = registerOutput<String>('runbookName');
    uri = registerOutput<String>('uri');
  }
}
