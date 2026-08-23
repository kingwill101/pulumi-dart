import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_book_args.dart';
import 'run_book_draft.dart';
import 'run_book_publish_content_link.dart';
import 'run_book_state.dart';

/// Manages a Automation Runbook.
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
/// 		_, err = automation.NewRunBook(ctx, "example", &automation.RunBookArgs{
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
/// resource "azure_automation_account" "example" {
///   name                = "account1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Basic"
/// }
/// resource "azure_automation_runbook" "example" {
///   name                    = "Get-AzureVMTutorial"
///   location                = azure_core_resourcegroup.example.location
///   resource_group_name     = azure_core_resourcegroup.example.name
///   automation_account_name = azure_automation_account.example.name
///   log_verbose             = "true"
///   log_progress            = "true"
///   description             = "This is an example runbook"
///   runbook_type            = "PowerShellWorkflow"
///   publish_content_link = {
///     uri = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/c4935ffb69246a6058eb24f54640f53f69d3ac9f/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1"
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
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
/// import com.pulumi.azure.automation.RunBook;
/// import com.pulumi.azure.automation.RunBookArgs;
/// import com.pulumi.azure.automation.inputs.RunBookPublishContentLinkArgs;
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
/// ```
///
///
/// ## Import
///
/// Automation Runbooks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/runBook:RunBook Get-AzureVMTutorial /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/runbooks/Get-AzureVMTutorial
/// ```
class RunBook extends pulumi.CustomResource {
  /// The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The desired content of the runbook.
  ///
  /// &gt; **Note:** The Azure API requires a `publishContentLink` to be supplied even when specifying your own `content`.
  late final pulumi.Output<String> content;
  /// A description for the runbook.
  late final pulumi.Output<String?> description;
  /// A `draft` block as defined below.
  late final pulumi.Output<RunBookDraft?> draft;
  /// One or more `jobSchedule` block as defined below.
  ///
  /// &gt; **Note:** AzureRM provides a stand-alone azure.automation.JobSchedule and this inlined `jobSchedule` property to manage the job schedules. At this time you should choose one of them to manage the job schedule resources.
  late final pulumi.Output<List<Map<String, dynamic>>> jobSchedules;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the activity-level tracing options of the runbook, available only for Graphical runbooks. Possible values are `0` for None, `9` for Basic, and `15` for Detailed. Must turn on Verbose logging in order to see the tracing.
  late final pulumi.Output<int?> logActivityTraceLevel;
  /// Progress log option.
  late final pulumi.Output<bool> logProgress;
  /// Verbose log option.
  late final pulumi.Output<bool> logVerbose;
  /// Specifies the name of the Runbook. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One `publishContentLink` block as defined below.
  late final pulumi.Output<RunBookPublishContentLink?> publishContentLink;
  /// The name of the resource group in which the Runbook is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The type of the runbook - can be either `Graph`, `GraphPowerShell`, `GraphPowerShellWorkflow`, `PowerShellWorkflow`, `PowerShell`, `PowerShell72`, `Python`, `Python3`, `Python2` or `Script`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> runbookType;
  /// The runtime environment name for the runbook.
  ///
  /// &gt; **Note:** The `runbookType` must be set to a value that supports runtime environments, such as `PowerShell` or `Python`.
  late final pulumi.Output<String?> runtimeEnvironmentName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [RunBook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RunBook]. {@macro pulumi_automation_run_book_run_book_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RunBook(
    String name, {
    RunBookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/runBook:RunBook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    content = registerOutput<String>('content');
    description = registerOutput<String?>('description');
    draft = registerOutput<RunBookDraft?>('draft', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunBookDraft.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobSchedules = registerOutput<List<Map<String, dynamic>>>('jobSchedules');
    location = registerOutput<String>('location');
    logActivityTraceLevel = registerOutput<int?>('logActivityTraceLevel');
    logProgress = registerOutput<bool>('logProgress');
    logVerbose = registerOutput<bool>('logVerbose');
    this.name = registerOutput<String>('name');
    publishContentLink = registerOutput<RunBookPublishContentLink?>('publishContentLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunBookPublishContentLink.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    runbookType = registerOutput<String>('runbookType');
    runtimeEnvironmentName = registerOutput<String?>('runtimeEnvironmentName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [RunBook] resource's state with the given [name] and [id].
  static RunBook get(
    String name,
    pulumi.Input<String> id, {
    RunBookState? state,
  }) {
    return RunBook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RunBook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/runBook:RunBook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    content = registerOutput<String>('content');
    description = registerOutput<String?>('description');
    draft = registerOutput<RunBookDraft?>('draft', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunBookDraft.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobSchedules = registerOutput<List<Map<String, dynamic>>>('jobSchedules');
    location = registerOutput<String>('location');
    logActivityTraceLevel = registerOutput<int?>('logActivityTraceLevel');
    logProgress = registerOutput<bool>('logProgress');
    logVerbose = registerOutput<bool>('logVerbose');
    this.name = registerOutput<String>('name');
    publishContentLink = registerOutput<RunBookPublishContentLink?>('publishContentLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunBookPublishContentLink.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    runbookType = registerOutput<String>('runbookType');
    runtimeEnvironmentName = registerOutput<String?>('runtimeEnvironmentName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
