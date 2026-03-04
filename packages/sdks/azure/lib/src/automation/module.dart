import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_args.dart';
import 'module_module_link.dart';
import 'module_state.dart';

/// Manages a Automation Module.
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
/// const exampleModule = new azure.automation.Module("example", {
///     name: "xActiveDirectory",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     moduleLink: {
///         uri: "https://devopsgallerystorage.blob.core.windows.net/packages/xactivedirectory.2.19.0.nupkg",
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
/// example_module = azure.automation.Module("example",
///     name="xActiveDirectory",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     module_link={
///         "uri": "https://devopsgallerystorage.blob.core.windows.net/packages/xactivedirectory.2.19.0.nupkg",
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
///     var exampleModule = new Azure.Automation.Module("example", new()
///     {
///         Name = "xActiveDirectory",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         ModuleLink = new Azure.Automation.Inputs.ModuleModuleLinkArgs
///         {
///             Uri = "https://devopsgallerystorage.blob.core.windows.net/packages/xactivedirectory.2.19.0.nupkg",
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
/// 		_, err = automation.NewModule(ctx, "example", &automation.ModuleArgs{
/// 			Name:                  pulumi.String("xActiveDirectory"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			ModuleLink: &automation.ModuleModuleLinkArgs{
/// 				Uri: pulumi.String("https://devopsgallerystorage.blob.core.windows.net/packages/xactivedirectory.2.19.0.nupkg"),
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
/// import com.pulumi.azure.automation.Module;
/// import com.pulumi.azure.automation.ModuleArgs;
/// import com.pulumi.azure.automation.inputs.ModuleModuleLinkArgs;
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
///         var exampleModule = new Module("exampleModule", ModuleArgs.builder()
///             .name("xActiveDirectory")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .moduleLink(ModuleModuleLinkArgs.builder()
///                 .uri("https://devopsgallerystorage.blob.core.windows.net/packages/xactivedirectory.2.19.0.nupkg")
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
///   exampleModule:
///     type: azure:automation:Module
///     name: example
///     properties:
///       name: xActiveDirectory
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       moduleLink:
///         uri: https://devopsgallerystorage.blob.core.windows.net/packages/xactivedirectory.2.19.0.nupkg
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
/// Automation Modules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/module:Module module1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/modules/module1
/// ```
class Module extends pulumi.CustomResource {
  /// The name of the automation account in which the Module is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;

  /// A `module_link` block as defined below.
  late final pulumi.Output<ModuleModuleLink> moduleLink;

  /// Specifies the name of the Module. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which the Module is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [Module].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Module]. {@macro pulumi_automation_module_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Module(String name, {ModuleArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:automation/module:Module',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    moduleLink = registerOutput<ModuleModuleLink>('moduleLink');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [Module] resource's state with the given [name] and [id].
  static Module get(
    String name,
    pulumi.Input<String> id, {
    ModuleState? state,
  }) {
    return Module._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Module._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:automation/module:Module',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    moduleLink = registerOutput<ModuleModuleLink>('moduleLink');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
