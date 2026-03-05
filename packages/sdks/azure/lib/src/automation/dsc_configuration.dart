import 'package:pulumi/pulumi.dart' as pulumi;
import 'dsc_configuration_args.dart';
import 'dsc_configuration_state.dart';

/// Manages a Automation DSC Configuration.
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
/// const exampleDscConfiguration = new azure.automation.DscConfiguration("example", {
///     name: "test",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     location: example.location,
///     contentEmbedded: "configuration test {}",
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
/// example_dsc_configuration = azure.automation.DscConfiguration("example",
///     name="test",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     location=example.location,
///     content_embedded="configuration test {}")
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
///     var exampleDscConfiguration = new Azure.Automation.DscConfiguration("example", new()
///     {
///         Name = "test",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Location = example.Location,
///         ContentEmbedded = "configuration test {}",
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
/// 		_, err = automation.NewDscConfiguration(ctx, "example", &automation.DscConfigurationArgs{
/// 			Name:                  pulumi.String("test"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Location:              example.Location,
/// 			ContentEmbedded:       pulumi.String("configuration test {}"),
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
/// import com.pulumi.azure.automation.DscConfiguration;
/// import com.pulumi.azure.automation.DscConfigurationArgs;
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
///         var exampleDscConfiguration = new DscConfiguration("exampleDscConfiguration", DscConfigurationArgs.builder()
///             .name("test")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .location(example.location())
///             .contentEmbedded("configuration test {}")
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
///   exampleDscConfiguration:
///     type: azure:automation:DscConfiguration
///     name: example
///     properties:
///       name: test
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       location: ${example.location}
///       contentEmbedded: configuration test {}
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
/// Automation DSC Configuration's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/dscConfiguration:DscConfiguration configuration1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/configurations/configuration1
/// ```
class DscConfiguration extends pulumi.CustomResource {
  /// The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The PowerShell DSC Configuration script.
  late final pulumi.Output<String> contentEmbedded;
  /// Description to go with DSC Configuration.
  late final pulumi.Output<String?> description;
  /// Must be the same location as the Automation Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Verbose log option.
  late final pulumi.Output<bool?> logVerbose;
  /// Specifies the name of the DSC Configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  late final pulumi.Output<String> state;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DscConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DscConfiguration]. {@macro pulumi_automation_dsc_configuration_dsc_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DscConfiguration(
    String name, {
    DscConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/dscConfiguration:DscConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    contentEmbedded = registerOutput<String>('contentEmbedded');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    logVerbose = registerOutput<bool?>('logVerbose');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [DscConfiguration] resource's state with the given [name] and [id].
  static DscConfiguration get(
    String name,
    pulumi.Input<String> id, {
    DscConfigurationState? state,
  }) {
    return DscConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DscConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/dscConfiguration:DscConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    contentEmbedded = registerOutput<String>('contentEmbedded');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    logVerbose = registerOutput<bool?>('logVerbose');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
