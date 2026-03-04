import 'package:pulumi/pulumi.dart' as pulumi;
import 'watcher_args.dart';
import 'watcher_state.dart';

/// Manages an Automation Wacher.
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
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleHybridRunbookWorkerGroup = new azure.automation.HybridRunbookWorkerGroup("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
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
/// const exampleWatcher = new azure.automation.Watcher("example", {
///     name: "example",
///     automationAccountId: exampleAccount.id,
///     location: "West Europe",
///     scriptName: exampleRunBook.name,
///     scriptRunOn: exampleHybridRunbookWorkerGroup.name,
///     description: "example-watcher desc",
///     executionFrequencyInSeconds: 42,
///     tags: {
///         foo: "bar",
///     },
///     scriptParameters: {
///         foo: "bar",
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
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_hybrid_runbook_worker_group = azure.automation.HybridRunbookWorkerGroup("example",
///     name="example",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name)
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
/// example_watcher = azure.automation.Watcher("example",
///     name="example",
///     automation_account_id=example_account.id,
///     location="West Europe",
///     script_name=example_run_book.name,
///     script_run_on=example_hybrid_runbook_worker_group.name,
///     description="example-watcher desc",
///     execution_frequency_in_seconds=42,
///     tags={
///         "foo": "bar",
///     },
///     script_parameters={
///         "foo": "bar",
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
///         Name = "example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleHybridRunbookWorkerGroup = new Azure.Automation.HybridRunbookWorkerGroup("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
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
///     var exampleWatcher = new Azure.Automation.Watcher("example", new()
///     {
///         Name = "example",
///         AutomationAccountId = exampleAccount.Id,
///         Location = "West Europe",
///         ScriptName = exampleRunBook.Name,
///         ScriptRunOn = exampleHybridRunbookWorkerGroup.Name,
///         Description = "example-watcher desc",
///         ExecutionFrequencyInSeconds = 42,
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///         ScriptParameters =
///         {
///             { "foo", "bar" },
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
/// 			Name:              pulumi.String("example-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHybridRunbookWorkerGroup, err := automation.NewHybridRunbookWorkerGroup(ctx, "example", &automation.HybridRunbookWorkerGroupArgs{
/// 			Name:                  pulumi.String("example"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
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
/// 		_, err = automation.NewWatcher(ctx, "example", &automation.WatcherArgs{
/// 			Name:                        pulumi.String("example"),
/// 			AutomationAccountId:         exampleAccount.ID(),
/// 			Location:                    pulumi.String("West Europe"),
/// 			ScriptName:                  exampleRunBook.Name,
/// 			ScriptRunOn:                 exampleHybridRunbookWorkerGroup.Name,
/// 			Description:                 pulumi.String("example-watcher desc"),
/// 			ExecutionFrequencyInSeconds: pulumi.Int(42),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			ScriptParameters: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.azure.automation.HybridRunbookWorkerGroup;
/// import com.pulumi.azure.automation.HybridRunbookWorkerGroupArgs;
/// import com.pulumi.azure.automation.RunBook;
/// import com.pulumi.azure.automation.RunBookArgs;
/// import com.pulumi.azure.automation.inputs.RunBookPublishContentLinkArgs;
/// import com.pulumi.azure.automation.Watcher;
/// import com.pulumi.azure.automation.WatcherArgs;
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
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleHybridRunbookWorkerGroup = new HybridRunbookWorkerGroup("exampleHybridRunbookWorkerGroup", HybridRunbookWorkerGroupArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
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
///         var exampleWatcher = new Watcher("exampleWatcher", WatcherArgs.builder()
///             .name("example")
///             .automationAccountId(exampleAccount.id())
///             .location("West Europe")
///             .scriptName(exampleRunBook.name())
///             .scriptRunOn(exampleHybridRunbookWorkerGroup.name())
///             .description("example-watcher desc")
///             .executionFrequencyInSeconds(42)
///             .tags(Map.of("foo", "bar"))
///             .scriptParameters(Map.of("foo", "bar"))
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
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleHybridRunbookWorkerGroup:
///     type: azure:automation:HybridRunbookWorkerGroup
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
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
///   exampleWatcher:
///     type: azure:automation:Watcher
///     name: example
///     properties:
///       name: example
///       automationAccountId: ${exampleAccount.id}
///       location: West Europe
///       scriptName: ${exampleRunBook.name}
///       scriptRunOn: ${exampleHybridRunbookWorkerGroup.name}
///       description: example-watcher desc
///       executionFrequencyInSeconds: 42
///       tags:
///         foo: bar
///       scriptParameters:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2020-01-13-preview
///
/// ## Import
///
/// Automation Watchers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/watcher:Watcher example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/watchers/watch1
/// ```
class Watcher extends pulumi.CustomResource {
  /// The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  late final pulumi.Output<String> automationAccountId;

  /// A description of this Automation Watcher.
  late final pulumi.Output<String?> description;

  /// A string of etag assigned to this Automation Watcher.
  late final pulumi.Output<String?> etag;

  /// Specify the frequency at which the watcher is invoked.
  late final pulumi.Output<int> executionFrequencyInSeconds;

  /// The Azure Region where the Automation Watcher should exist. Changing this forces a new Automation Watcher to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Automation Watcher. Changing this forces a new Automation Watcher to be created.
  late final pulumi.Output<String> name;

  /// Specify the name of an existing runbook this watcher is attached to. Changing this forces a new Automation to be created.
  late final pulumi.Output<String> scriptName;

  /// Specifies a list of key-vaule parameters. Changing this forces a new Automation watcher to be created.
  late final pulumi.Output<Map<String, String>?> scriptParameters;

  /// Specify the name of the Hybrid work group the watcher will run on.
  late final pulumi.Output<String> scriptRunOn;

  /// The current status of the Automation Watcher.
  late final pulumi.Output<String> status;

  /// A mapping of tags which should be assigned to the Automation Watcher.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Watcher].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Watcher]. {@macro pulumi_automation_watcher_watcher_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Watcher(
    String name, {
    WatcherArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:automation/watcher:Watcher',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automationAccountId = registerOutput<String>('automationAccountId');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    executionFrequencyInSeconds = registerOutput<int>(
      'executionFrequencyInSeconds',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    scriptName = registerOutput<String>('scriptName');
    scriptParameters = registerOutput<Map<String, String>?>('scriptParameters');
    scriptRunOn = registerOutput<String>('scriptRunOn');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Watcher] resource's state with the given [name] and [id].
  static Watcher get(
    String name,
    pulumi.Input<String> id, {
    WatcherState? state,
  }) {
    return Watcher._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Watcher._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:automation/watcher:Watcher',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automationAccountId = registerOutput<String>('automationAccountId');
    description = registerOutput<String?>('description');
    etag = registerOutput<String?>('etag');
    executionFrequencyInSeconds = registerOutput<int>(
      'executionFrequencyInSeconds',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    scriptName = registerOutput<String>('scriptName');
    scriptParameters = registerOutput<Map<String, String>?>('scriptParameters');
    scriptRunOn = registerOutput<String>('scriptRunOn');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
