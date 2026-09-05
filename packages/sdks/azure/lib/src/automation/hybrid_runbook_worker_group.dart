import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_runbook_worker_group_args.dart';
import 'hybrid_runbook_worker_group_state.dart';

/// Manages a Automation Hybrid Runbook Worker Group.
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
/// 		_, err = automation.NewHybridRunbookWorkerGroup(ctx, "example", &automation.HybridRunbookWorkerGroupArgs{
/// 			Name:                  pulumi.String("example"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
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
///   name                = "example-account"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Basic"
/// }
/// resource "azure_automation_hybridrunbookworkergroup" "example" {
///   name                    = "example"
///   resource_group_name     = azure_core_resourcegroup.example.name
///   automation_account_name = azure_automation_account.example.name
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
///             .skuName("Basic")
///             .build());
///
///         var exampleHybridRunbookWorkerGroup = new HybridRunbookWorkerGroup("exampleHybridRunbookWorkerGroup", HybridRunbookWorkerGroupArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
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
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23
///
/// ## Import
///
/// Automations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/hybridRunbookWorkerGroup:HybridRunbookWorkerGroup example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/hybridRunbookWorkerGroups/grp1
/// ```
class HybridRunbookWorkerGroup extends pulumi.CustomResource {
  /// The name of the Automation Account in which the Runbook Worker Group is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The name of resource type `azure.automation.Credential` to use for hybrid worker.
  late final pulumi.Output<String?> credentialName;
  /// The name which should be used for this Automation Account Runbook Worker Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [HybridRunbookWorkerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridRunbookWorkerGroup]. {@macro pulumi_automation_hybrid_runbook_worker_group_hybrid_runbook_worker_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridRunbookWorkerGroup(
    String name, {
    HybridRunbookWorkerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/hybridRunbookWorkerGroup:HybridRunbookWorkerGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    credentialName = registerOutput<String?>('credentialName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [HybridRunbookWorkerGroup] resource's state with the given [name] and [id].
  static HybridRunbookWorkerGroup get(
    String name,
    pulumi.Input<String> id, {
    HybridRunbookWorkerGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HybridRunbookWorkerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HybridRunbookWorkerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/hybridRunbookWorkerGroup:HybridRunbookWorkerGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    credentialName = registerOutput<String?>('credentialName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Creates a typed reference to an existing [HybridRunbookWorkerGroup] resource.
  HybridRunbookWorkerGroup.reference(String urn)
    : super(
        'azure:automation/hybridRunbookWorkerGroup:HybridRunbookWorkerGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    credentialName = registerOutput<String?>('credentialName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
