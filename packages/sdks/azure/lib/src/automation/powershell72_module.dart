import 'package:pulumi/pulumi.dart' as pulumi;
import 'powershell72_module_args.dart';
import 'powershell72_module_module_link.dart';
import 'powershell72_module_state.dart';

/// Manages a Automation Powershell 7.2 Module.
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
/// const examplePowershell72Module = new azure.automation.Powershell72Module("example", {
///     name: "xActiveDirectory",
///     automationAccountId: exampleAccount.id,
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
/// example_powershell72_module = azure.automation.Powershell72Module("example",
///     name="xActiveDirectory",
///     automation_account_id=example_account.id,
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
///     var examplePowershell72Module = new Azure.Automation.Powershell72Module("example", new()
///     {
///         Name = "xActiveDirectory",
///         AutomationAccountId = exampleAccount.Id,
///         ModuleLink = new Azure.Automation.Inputs.Powershell72ModuleModuleLinkArgs
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
/// 		_, err = automation.NewPowershell72Module(ctx, "example", &automation.Powershell72ModuleArgs{
/// 			Name:                pulumi.String("xActiveDirectory"),
/// 			AutomationAccountId: exampleAccount.ID(),
/// 			ModuleLink: &automation.Powershell72ModuleModuleLinkArgs{
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
/// import com.pulumi.azure.automation.Powershell72Module;
/// import com.pulumi.azure.automation.Powershell72ModuleArgs;
/// import com.pulumi.azure.automation.inputs.Powershell72ModuleModuleLinkArgs;
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
///         var examplePowershell72Module = new Powershell72Module("examplePowershell72Module", Powershell72ModuleArgs.builder()
///             .name("xActiveDirectory")
///             .automationAccountId(exampleAccount.id())
///             .moduleLink(Powershell72ModuleModuleLinkArgs.builder()
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
///   examplePowershell72Module:
///     type: azure:automation:Powershell72Module
///     name: example
///     properties:
///       name: xActiveDirectory
///       automationAccountId: ${exampleAccount.id}
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
/// * `Microsoft.Automation` - 2023-11-01
///
/// ## Import
///
/// Automation Modules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/powershell72Module:Powershell72Module module1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/powerShell72Modules/module1
/// ```
class Powershell72Module extends pulumi.CustomResource {
  /// The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  late final pulumi.Output<String> automationAccountId;

  /// A `module_link` block as defined below.
  late final pulumi.Output<Powershell72ModuleModuleLink> moduleLink;

  /// Specifies the name of the Module. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Powershell72Module].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Powershell72Module]. {@macro pulumi_automation_powershell72_module_powershell72_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Powershell72Module(
    String name, {
    Powershell72ModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:automation/powershell72Module:Powershell72Module',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automationAccountId = registerOutput<String>('automationAccountId');
    moduleLink = registerOutput<Powershell72ModuleModuleLink>(
      'moduleLink',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Powershell72ModuleModuleLink.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Powershell72Module] resource's state with the given [name] and [id].
  static Powershell72Module get(
    String name,
    pulumi.Input<String> id, {
    Powershell72ModuleState? state,
  }) {
    return Powershell72Module._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Powershell72Module._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:automation/powershell72Module:Powershell72Module',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automationAccountId = registerOutput<String>('automationAccountId');
    moduleLink = registerOutput<Powershell72ModuleModuleLink>(
      'moduleLink',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Powershell72ModuleModuleLink.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
