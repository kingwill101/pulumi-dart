import 'package:pulumi/pulumi.dart' as pulumi;
import 'bool_variable_args.dart';
import 'bool_variable_state.dart';

/// Manages a boolean variable in Azure Automation
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-example-rg",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "tfex-example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleBoolVariable = new azure.automation.BoolVariable("example", {
///     name: "tfex-example-var",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     value: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-example-rg",
///     location="West Europe")
/// example_account = azure.automation.Account("example",
///     name="tfex-example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_bool_variable = azure.automation.BoolVariable("example",
///     name="tfex-example-var",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     value=False)
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
///         Name = "tfex-example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "tfex-example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleBoolVariable = new Azure.Automation.BoolVariable("example", new()
///     {
///         Name = "tfex-example-var",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Value = false,
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
/// 			Name:     pulumi.String("tfex-example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("tfex-example-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewBoolVariable(ctx, "example", &automation.BoolVariableArgs{
/// 			Name:                  pulumi.String("tfex-example-var"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Value:                 pulumi.Bool(false),
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
///   name     = "tfex-example-rg"
///   location = "West Europe"
/// }
/// resource "azure_automation_account" "example" {
///   name                = "tfex-example-account"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Basic"
/// }
/// resource "azure_automation_boolvariable" "example" {
///   name                    = "tfex-example-var"
///   resource_group_name     = azure_core_resourcegroup.example.name
///   automation_account_name = azure_automation_account.example.name
///   value                   = false
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
/// import com.pulumi.azure.automation.BoolVariable;
/// import com.pulumi.azure.automation.BoolVariableArgs;
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
///             .name("tfex-example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("tfex-example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleBoolVariable = new BoolVariable("exampleBoolVariable", BoolVariableArgs.builder()
///             .name("tfex-example-var")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .value(false)
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
///       name: tfex-example-rg
///       location: West Europe
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: tfex-example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleBoolVariable:
///     type: azure:automation:BoolVariable
///     name: example
///     properties:
///       name: tfex-example-var
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       value: false
/// ```
///
///
/// ## Import
///
/// Automation Bool Variable can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/boolVariable:BoolVariable example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/tfex-example-rg/providers/Microsoft.Automation/automationAccounts/tfex-example-account/variables/tfex-example-var
/// ```
class BoolVariable extends pulumi.CustomResource {
  /// The name of the automation account in which the Variable is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// The description of the Automation Variable.
  late final pulumi.Output<String?> description;
  /// Specifies if the Automation Variable is encrypted. Defaults to `false`.
  late final pulumi.Output<bool?> encrypted;
  /// The name of the Automation Variable. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The value of the Automation Variable as a `boolean`.
  late final pulumi.Output<bool?> value;

  /// Creates a new [BoolVariable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BoolVariable]. {@macro pulumi_automation_bool_variable_bool_variable_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BoolVariable(
    String name, {
    BoolVariableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/boolVariable:BoolVariable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    encrypted = registerOutput<bool?>('encrypted');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    value = registerOutput<bool?>('value');
  }

  /// Gets an existing [BoolVariable] resource's state with the given [name] and [id].
  static BoolVariable get(
    String name,
    pulumi.Input<String> id, {
    BoolVariableState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BoolVariable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BoolVariable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/boolVariable:BoolVariable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    encrypted = registerOutput<bool?>('encrypted');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    value = registerOutput<bool?>('value');
  }

  /// Creates a typed reference to an existing [BoolVariable] resource.
  BoolVariable.reference(String urn)
    : super(
        'azure:automation/boolVariable:BoolVariable',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    encrypted = registerOutput<bool?>('encrypted');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    value = registerOutput<bool?>('value');
  }
}
