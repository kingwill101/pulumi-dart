import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_environment_args.dart';
import 'runtime_environment_state.dart';

/// Manages an Automation Runtime Environment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "westeurope",
/// });
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleRuntimeEnvironment = new azure.automation.RuntimeEnvironment("example", {
///     name: "powershell_environment_custom_config",
///     automationAccountId: exampleAccount.id,
///     runtimeLanguage: "PowerShell",
///     runtimeVersion: "7.2",
///     location: example.location,
///     description: "example description",
///     runtimeDefaultPackages: {
///         az: "11.2.0",
///         "azure cli": "2.56.0",
///     },
///     tags: {
///         key: "foo",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="westeurope")
/// example_account = azure.automation.Account("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_runtime_environment = azure.automation.RuntimeEnvironment("example",
///     name="powershell_environment_custom_config",
///     automation_account_id=example_account.id,
///     runtime_language="PowerShell",
///     runtime_version="7.2",
///     location=example.location,
///     description="example description",
///     runtime_default_packages={
///         "az": "11.2.0",
///         "azure cli": "2.56.0",
///     },
///     tags={
///         "key": "foo",
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
///         Name = "rg-example",
///         Location = "westeurope",
///     });
///
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleRuntimeEnvironment = new Azure.Automation.RuntimeEnvironment("example", new()
///     {
///         Name = "powershell_environment_custom_config",
///         AutomationAccountId = exampleAccount.Id,
///         RuntimeLanguage = "PowerShell",
///         RuntimeVersion = "7.2",
///         Location = example.Location,
///         Description = "example description",
///         RuntimeDefaultPackages =
///         {
///             { "az", "11.2.0" },
///             { "azure cli", "2.56.0" },
///         },
///         Tags =
///         {
///             { "key", "foo" },
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
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewRuntimeEnvironment(ctx, "example", &automation.RuntimeEnvironmentArgs{
/// 			Name:                pulumi.String("powershell_environment_custom_config"),
/// 			AutomationAccountId: exampleAccount.ID(),
/// 			RuntimeLanguage:     pulumi.String("PowerShell"),
/// 			RuntimeVersion:      pulumi.String("7.2"),
/// 			Location:            example.Location,
/// 			Description:         pulumi.String("example description"),
/// 			RuntimeDefaultPackages: pulumi.StringMap{
/// 				"az":        pulumi.String("11.2.0"),
/// 				"azure cli": pulumi.String("2.56.0"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("foo"),
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
/// import com.pulumi.azure.automation.RuntimeEnvironment;
/// import com.pulumi.azure.automation.RuntimeEnvironmentArgs;
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
///             .name("rg-example")
///             .location("westeurope")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleRuntimeEnvironment = new RuntimeEnvironment("exampleRuntimeEnvironment", RuntimeEnvironmentArgs.builder()
///             .name("powershell_environment_custom_config")
///             .automationAccountId(exampleAccount.id())
///             .runtimeLanguage("PowerShell")
///             .runtimeVersion("7.2")
///             .location(example.location())
///             .description("example description")
///             .runtimeDefaultPackages(Map.ofEntries(
///                 Map.entry("az", "11.2.0"),
///                 Map.entry("azure cli", "2.56.0")
///             ))
///             .tags(Map.of("key", "foo"))
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
///       name: rg-example
///       location: westeurope
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleRuntimeEnvironment:
///     type: azure:automation:RuntimeEnvironment
///     name: example
///     properties:
///       name: powershell_environment_custom_config
///       automationAccountId: ${exampleAccount.id}
///       runtimeLanguage: PowerShell
///       runtimeVersion: '7.2'
///       location: ${example.location}
///       description: example description
///       runtimeDefaultPackages:
///         az: 11.2.0
///         azure cli: 2.56.0
///       tags:
///         key: foo
/// ```
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
/// Automation Runtime Environments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/runtimeEnvironment:RuntimeEnvironment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/runtimeEnvironments/env1
/// ```
class RuntimeEnvironment extends pulumi.CustomResource {
  /// The ID of the automation account in which the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountId;
  /// A description of the Automation Runtime Environment.
  late final pulumi.Output<String?> description;
  /// The location where the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name for the Automation Runtime Environment. Changing this forces a new Automation Runtime Environment to be created.
  late final pulumi.Output<String> name;
  /// A mapping of default packages to be installed in the Automation Runtime Environment. The default packages can only be used with PowerShell runtime environments. Removing packages will force a new Automation Runtime Environment, adding new packages will update the existing Automation Runtime Environment.
  late final pulumi.Output<Map<String, String>?> runtimeDefaultPackages;
  /// The programming language used by the Automation Runtime Environment. Possible values are `Python` and `PowerShell`. Changing this forces a new Automation Runtime Environment to be created.
  late final pulumi.Output<String> runtimeLanguage;
  /// The version of the runtime environment. Changing this forces a new Automation Runtime Environment to be created.
  late final pulumi.Output<String> runtimeVersion;
  /// A mapping of tags which should be assigned to the Automation Runtime Environment.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [RuntimeEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeEnvironment]. {@macro pulumi_automation_runtime_environment_runtime_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeEnvironment(
    String name, {
    RuntimeEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/runtimeEnvironment:RuntimeEnvironment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountId = registerOutput<String>('automationAccountId');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    runtimeDefaultPackages = registerOutput<Map<String, String>?>('runtimeDefaultPackages');
    runtimeLanguage = registerOutput<String>('runtimeLanguage');
    runtimeVersion = registerOutput<String>('runtimeVersion');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [RuntimeEnvironment] resource's state with the given [name] and [id].
  static RuntimeEnvironment get(
    String name,
    pulumi.Input<String> id, {
    RuntimeEnvironmentState? state,
  }) {
    return RuntimeEnvironment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RuntimeEnvironment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/runtimeEnvironment:RuntimeEnvironment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountId = registerOutput<String>('automationAccountId');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    runtimeDefaultPackages = registerOutput<Map<String, String>?>('runtimeDefaultPackages');
    runtimeLanguage = registerOutput<String>('runtimeLanguage');
    runtimeVersion = registerOutput<String>('runtimeVersion');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
