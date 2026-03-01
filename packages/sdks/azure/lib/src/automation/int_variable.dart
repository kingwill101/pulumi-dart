import 'package:pulumi/pulumi.dart' as pulumi;
import 'int_variable_args.dart';
import 'int_variable_state.dart';

/// Manages a integer variable in Azure Automation
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
/// const exampleIntVariable = new azure.automation.IntVariable("example", {
///     name: "tfex-example-var",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     value: 1234,
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
/// example_int_variable = azure.automation.IntVariable("example",
///     name="tfex-example-var",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     value=1234)
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
///     var exampleIntVariable = new Azure.Automation.IntVariable("example", new()
///     {
///         Name = "tfex-example-var",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Value = 1234,
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
/// 		_, err = automation.NewIntVariable(ctx, "example", &automation.IntVariableArgs{
/// 			Name:                  pulumi.String("tfex-example-var"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Value:                 pulumi.Int(1234),
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
/// import com.pulumi.azure.automation.IntVariable;
/// import com.pulumi.azure.automation.IntVariableArgs;
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
///         var exampleIntVariable = new IntVariable("exampleIntVariable", IntVariableArgs.builder()
///             .name("tfex-example-var")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .value(1234)
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
///   exampleIntVariable:
///     type: azure:automation:IntVariable
///     name: example
///     properties:
///       name: tfex-example-var
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       value: 1234
/// ```
///
///
/// ## Import
///
/// Automation Int Variable can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/intVariable:IntVariable example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/tfex-example-rg/providers/Microsoft.Automation/automationAccounts/tfex-example-account/variables/tfex-example-var
/// ```
class IntVariable extends pulumi.CustomResource {
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
  /// The value of the Automation Variable as a `integer`.
  late final pulumi.Output<int?> value;

  /// Creates a new [IntVariable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntVariable]. {@macro pulumi_automation_int_variable_int_variable_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntVariable(
    String name, {
    IntVariableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/intVariable:IntVariable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automationAccountName = registerOutput<String>('automationAccountName');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.value = registerOutput<int?>('value');
  }

  /// Gets an existing [IntVariable] resource's state with the given [name] and [id].
  static IntVariable get(
    String name,
    pulumi.Input<String> id, {
    IntVariableState? state,
  }) {
    return IntVariable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntVariable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/intVariable:IntVariable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.automationAccountName = registerOutput<String>('automationAccountName');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.value = registerOutput<int?>('value');
  }
}
