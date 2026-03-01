import 'package:pulumi/pulumi.dart' as pulumi;
import 'python3_package_args.dart';
import 'python3_package_state.dart';

/// Manages a Automation Python3 Package.
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
///     location: "%[2]s",
/// });
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "accexample",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const examplePython3Package = new azure.automation.Python3Package("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     contentUri: "https://pypi.org/packages/source/r/requests/requests-2.31.0.tar.gz",
///     contentVersion: "2.31.0",
///     hashAlgorithm: "sha256",
///     hashValue: "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1",
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
///     location="%[2]s")
/// example_account = azure.automation.Account("example",
///     name="accexample",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_python3_package = azure.automation.Python3Package("example",
///     name="example",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     content_uri="https://pypi.org/packages/source/r/requests/requests-2.31.0.tar.gz",
///     content_version="2.31.0",
///     hash_algorithm="sha256",
///     hash_value="942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1",
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
///         Location = "%[2]s",
///     });
///
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "accexample",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var examplePython3Package = new Azure.Automation.Python3Package("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         ContentUri = "https://pypi.org/packages/source/r/requests/requests-2.31.0.tar.gz",
///         ContentVersion = "2.31.0",
///         HashAlgorithm = "sha256",
///         HashValue = "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1",
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
/// 			Location: pulumi.String("%[2]s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("accexample"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewPython3Package(ctx, "example", &automation.Python3PackageArgs{
/// 			Name:                  pulumi.String("example"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			ContentUri:            pulumi.String("https://pypi.org/packages/source/r/requests/requests-2.31.0.tar.gz"),
/// 			ContentVersion:        pulumi.String("2.31.0"),
/// 			HashAlgorithm:         pulumi.String("sha256"),
/// 			HashValue:             pulumi.String("942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"),
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
/// import com.pulumi.azure.automation.Python3Package;
/// import com.pulumi.azure.automation.Python3PackageArgs;
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
///             .location("%[2]s")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("accexample")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var examplePython3Package = new Python3Package("examplePython3Package", Python3PackageArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .contentUri("https://pypi.org/packages/source/r/requests/requests-2.31.0.tar.gz")
///             .contentVersion("2.31.0")
///             .hashAlgorithm("sha256")
///             .hashValue("942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1")
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
///       location: '%[2]s'
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: accexample
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   examplePython3Package:
///     type: azure:automation:Python3Package
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       contentUri: https://pypi.org/packages/source/r/requests/requests-2.31.0.tar.gz
///       contentVersion: 2.31.0
///       hashAlgorithm: sha256
///       hashValue: 942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1
///       tags:
///         key: foo
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23
///
/// ## Import
///
/// Automation Python3 Packages can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/python3Package:Python3Package example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/python3Packages/pkg
/// ```
class Python3Package extends pulumi.CustomResource {
  /// The name of the automation account in which the Python3 Package is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The URL of the python package. Changing this forces a new Automation Python3 Package to be created.
  late final pulumi.Output<String> contentUri;
  /// Specify the version of the python3 package. The value should meet the system.version class format like `1.1.1`. Changing this forces a new Automation Python3 Package to be created.
  late final pulumi.Output<String?> contentVersion;
  /// Specify the hash algorithm used to hash the content of the python3 package. Changing this forces a new Automation Python3 Package to be created.
  late final pulumi.Output<String?> hashAlgorithm;
  /// Specity the hash value of the content. Changing this forces a new Automation Python3 Package to be created.
  late final pulumi.Output<String?> hashValue;
  /// The name which should be used for this Automation Python3 Package. Changing this forces a new Automation Python3 Package to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Python3 Package is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Automation Python3 Package.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Python3Package].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Python3Package]. {@macro pulumi_automation_python3_package_python3_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Python3Package(
    String name, {
    Python3PackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/python3Package:Python3Package',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automationAccountName = registerOutput<String>('automationAccountName');
    this.contentUri = registerOutput<String>('contentUri');
    this.contentVersion = registerOutput<String?>('contentVersion');
    this.hashAlgorithm = registerOutput<String?>('hashAlgorithm');
    this.hashValue = registerOutput<String?>('hashValue');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Python3Package] resource's state with the given [name] and [id].
  static Python3Package get(
    String name,
    pulumi.Input<String> id, {
    Python3PackageState? state,
  }) {
    return Python3Package._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Python3Package._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/python3Package:Python3Package',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automationAccountName = registerOutput<String>('automationAccountName');
    this.contentUri = registerOutput<String>('contentUri');
    this.contentVersion = registerOutput<String?>('contentVersion');
    this.hashAlgorithm = registerOutput<String?>('hashAlgorithm');
    this.hashValue = registerOutput<String?>('hashValue');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
