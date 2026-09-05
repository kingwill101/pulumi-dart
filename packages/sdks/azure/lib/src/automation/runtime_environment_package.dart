import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_environment_package_args.dart';
import 'runtime_environment_package_state.dart';

/// Manages a Package within an Automation Runtime Environment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource-group",
///     location: "westeurope",
/// });
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleRuntimeEnvironment = new azure.automation.RuntimeEnvironment("example", {
///     name: "example-runtime-env",
///     automationAccountId: exampleAccount.id,
///     runtimeLanguage: "PowerShell",
///     runtimeVersion: "7.2",
///     location: example.location,
/// });
/// const exampleRuntimeEnvironmentPackage = new azure.automation.RuntimeEnvironmentPackage("example", {
///     name: "example-package",
///     automationRuntimeEnvironmentId: exampleRuntimeEnvironment.id,
///     contentUri: "https://www.powershellgallery.com/api/v2/package/example-package/1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource-group",
///     location="westeurope")
/// example_account = azure.automation.Account("example",
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_runtime_environment = azure.automation.RuntimeEnvironment("example",
///     name="example-runtime-env",
///     automation_account_id=example_account.id,
///     runtime_language="PowerShell",
///     runtime_version="7.2",
///     location=example.location)
/// example_runtime_environment_package = azure.automation.RuntimeEnvironmentPackage("example",
///     name="example-package",
///     automation_runtime_environment_id=example_runtime_environment.id,
///     content_uri="https://www.powershellgallery.com/api/v2/package/example-package/1.0.0")
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
///         Name = "example-resource-group",
///         Location = "westeurope",
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
///     var exampleRuntimeEnvironment = new Azure.Automation.RuntimeEnvironment("example", new()
///     {
///         Name = "example-runtime-env",
///         AutomationAccountId = exampleAccount.Id,
///         RuntimeLanguage = "PowerShell",
///         RuntimeVersion = "7.2",
///         Location = example.Location,
///     });
///
///     var exampleRuntimeEnvironmentPackage = new Azure.Automation.RuntimeEnvironmentPackage("example", new()
///     {
///         Name = "example-package",
///         AutomationRuntimeEnvironmentId = exampleRuntimeEnvironment.Id,
///         ContentUri = "https://www.powershellgallery.com/api/v2/package/example-package/1.0.0",
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
/// 			Name:     pulumi.String("example-resource-group"),
/// 			Location: pulumi.String("westeurope"),
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
/// 		exampleRuntimeEnvironment, err := automation.NewRuntimeEnvironment(ctx, "example", &automation.RuntimeEnvironmentArgs{
/// 			Name:                pulumi.String("example-runtime-env"),
/// 			AutomationAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			RuntimeLanguage:     pulumi.String("PowerShell"),
/// 			RuntimeVersion:      pulumi.String("7.2"),
/// 			Location:            example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewRuntimeEnvironmentPackage(ctx, "example", &automation.RuntimeEnvironmentPackageArgs{
/// 			Name:                           pulumi.String("example-package"),
/// 			AutomationRuntimeEnvironmentId: exampleRuntimeEnvironment.ID().ToIDOutput().ToStringOutput(),
/// 			ContentUri:                     pulumi.String("https://www.powershellgallery.com/api/v2/package/example-package/1.0.0"),
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
///   name     = "example-resource-group"
///   location = "westeurope"
/// }
/// resource "azure_automation_account" "example" {
///   name                = "example-account"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Basic"
/// }
/// resource "azure_automation_runtimeenvironment" "example" {
///   name                  = "example-runtime-env"
///   automation_account_id = azure_automation_account.example.id
///   runtime_language      = "PowerShell"
///   runtime_version       = "7.2"
///   location              = azure_core_resourcegroup.example.location
/// }
/// resource "azure_automation_runtimeenvironmentpackage" "example" {
///   name                              = "example-package"
///   automation_runtime_environment_id = azure_automation_runtimeenvironment.example.id
///   content_uri                       = "https://www.powershellgallery.com/api/v2/package/example-package/1.0.0"
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
/// import com.pulumi.azure.automation.RuntimeEnvironmentPackage;
/// import com.pulumi.azure.automation.RuntimeEnvironmentPackageArgs;
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
///             .name("example-resource-group")
///             .location("westeurope")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleRuntimeEnvironment = new RuntimeEnvironment("exampleRuntimeEnvironment", RuntimeEnvironmentArgs.builder()
///             .name("example-runtime-env")
///             .automationAccountId(exampleAccount.id())
///             .runtimeLanguage("PowerShell")
///             .runtimeVersion("7.2")
///             .location(example.location())
///             .build());
///
///         var exampleRuntimeEnvironmentPackage = new RuntimeEnvironmentPackage("exampleRuntimeEnvironmentPackage", RuntimeEnvironmentPackageArgs.builder()
///             .name("example-package")
///             .automationRuntimeEnvironmentId(exampleRuntimeEnvironment.id())
///             .contentUri("https://www.powershellgallery.com/api/v2/package/example-package/1.0.0")
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
///       name: example-resource-group
///       location: westeurope
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleRuntimeEnvironment:
///     type: azure:automation:RuntimeEnvironment
///     name: example
///     properties:
///       name: example-runtime-env
///       automationAccountId: ${exampleAccount.id}
///       runtimeLanguage: PowerShell
///       runtimeVersion: '7.2'
///       location: ${example.location}
///   exampleRuntimeEnvironmentPackage:
///     type: azure:automation:RuntimeEnvironmentPackage
///     name: example
///     properties:
///       name: example-package
///       automationRuntimeEnvironmentId: ${exampleRuntimeEnvironment.id}
///       contentUri: https://www.powershellgallery.com/api/v2/package/example-package/1.0.0
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
/// An Automation Runtime Environment Package can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/runtimeEnvironmentPackage:RuntimeEnvironmentPackage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Automation/automationAccounts/automationAccount1/runtimeEnvironments/runtimeEnvironment1/packages/package1
/// ```
class RuntimeEnvironmentPackage extends pulumi.CustomResource {
  /// The ID of the Automation Runtime Environment in which to create this package. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationRuntimeEnvironmentId;
  /// The HTTPS URI of the package content. Changing this forces a new resource to be created.
  late final pulumi.Output<String> contentUri;
  /// The version of the package content. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `contentVersion` must be a version string with 2 to 4 segments (e.g. `1.0`, `1.0.0`, or `1.0.0.0`).
  late final pulumi.Output<String?> contentVersion;
  /// Whether this is a default package.
  late final pulumi.Output<bool> default_;
  /// The hash algorithm used to hash the content. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The argument `hashAlgorithm` is required when `hashValue` is specified.
  late final pulumi.Output<String?> hashAlgorithm;
  /// The hash value of the content. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The argument `hashValue` is required when `hashAlgorithm` is specified.
  late final pulumi.Output<String?> hashValue;
  /// The name of the package. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The size of the package in bytes.
  late final pulumi.Output<int> sizeInBytes;
  /// The version of the package as reported by the platform.
  late final pulumi.Output<String> version;

  /// Creates a new [RuntimeEnvironmentPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeEnvironmentPackage]. {@macro pulumi_automation_runtime_environment_package_runtime_environment_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeEnvironmentPackage(
    String name, {
    RuntimeEnvironmentPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/runtimeEnvironmentPackage:RuntimeEnvironmentPackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    automationRuntimeEnvironmentId = registerOutput<String>('automationRuntimeEnvironmentId');
    contentUri = registerOutput<String>('contentUri');
    contentVersion = registerOutput<String?>('contentVersion');
    default_ = registerOutput<bool>('default');
    hashAlgorithm = registerOutput<String?>('hashAlgorithm');
    hashValue = registerOutput<String?>('hashValue');
    this.name = registerOutput<String>('name');
    sizeInBytes = registerOutput<int>('sizeInBytes');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [RuntimeEnvironmentPackage] resource's state with the given [name] and [id].
  static RuntimeEnvironmentPackage get(
    String name,
    pulumi.Input<String> id, {
    RuntimeEnvironmentPackageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RuntimeEnvironmentPackage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RuntimeEnvironmentPackage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/runtimeEnvironmentPackage:RuntimeEnvironmentPackage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationRuntimeEnvironmentId = registerOutput<String>('automationRuntimeEnvironmentId');
    contentUri = registerOutput<String>('contentUri');
    contentVersion = registerOutput<String?>('contentVersion');
    default_ = registerOutput<bool>('default');
    hashAlgorithm = registerOutput<String?>('hashAlgorithm');
    hashValue = registerOutput<String?>('hashValue');
    this.name = registerOutput<String>('name');
    sizeInBytes = registerOutput<int>('sizeInBytes');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [RuntimeEnvironmentPackage] resource.
  RuntimeEnvironmentPackage.reference(String urn)
    : super(
        'azure:automation/runtimeEnvironmentPackage:RuntimeEnvironmentPackage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    automationRuntimeEnvironmentId = registerOutput<String>('automationRuntimeEnvironmentId');
    contentUri = registerOutput<String>('contentUri');
    contentVersion = registerOutput<String?>('contentVersion');
    default_ = registerOutput<bool>('default');
    hashAlgorithm = registerOutput<String?>('hashAlgorithm');
    hashValue = registerOutput<String?>('hashValue');
    this.name = registerOutput<String>('name');
    sizeInBytes = registerOutput<int>('sizeInBytes');
    version = registerOutput<String>('version');
  }
}
