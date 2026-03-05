import 'package:pulumi/pulumi.dart' as pulumi;
import 'variable_object_args.dart';
import 'variable_object_state.dart';

/// Manages an object variable in Azure Automation
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
/// const exampleVariableObject = new azure.automation.VariableObject("example", {
///     name: "tfex-example-var",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     value: JSON.stringify({
///         greeting: "Hello, Terraform Basic Test.",
///         language: "en",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
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
/// example_variable_object = azure.automation.VariableObject("example",
///     name="tfex-example-var",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     value=json.dumps({
///         "greeting": "Hello, Terraform Basic Test.",
///         "language": "en",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
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
///     var exampleVariableObject = new Azure.Automation.VariableObject("example", new()
///     {
///         Name = "tfex-example-var",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Value = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["greeting"] = "Hello, Terraform Basic Test.",
///             ["language"] = "en",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
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
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"greeting": "Hello, Terraform Basic Test.",
/// 			"language": "en",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = automation.NewVariableObject(ctx, "example", &automation.VariableObjectArgs{
/// 			Name:                  pulumi.String("tfex-example-var"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Value:                 pulumi.String(json0),
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
/// import com.pulumi.azure.automation.VariableObject;
/// import com.pulumi.azure.automation.VariableObjectArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var exampleVariableObject = new VariableObject("exampleVariableObject", VariableObjectArgs.builder()
///             .name("tfex-example-var")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .value(serializeJson(
///                 jsonObject(
///                     jsonProperty("greeting", "Hello, Terraform Basic Test."),
///                     jsonProperty("language", "en")
///                 )))
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
///   exampleVariableObject:
///     type: azure:automation:VariableObject
///     name: example
///     properties:
///       name: tfex-example-var
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       value:
///         fn::toJSON:
///           greeting: Hello, Terraform Basic Test.
///           language: en
/// ```
///
///
/// ## Import
///
/// Automation Object Variable can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/variableObject:VariableObject example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/tfex-example-rg/providers/Microsoft.Automation/automationAccounts/tfex-example-account/variables/tfex-example-var
/// ```
class VariableObject extends pulumi.CustomResource {
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
  /// The value of the Automation Variable as a `jsonencode()` string.
  late final pulumi.Output<String?> value;

  /// Creates a new [VariableObject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VariableObject]. {@macro pulumi_automation_variable_object_variable_object_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VariableObject(
    String name, {
    VariableObjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/variableObject:VariableObject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    encrypted = registerOutput<bool?>('encrypted');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    value = registerOutput<String?>('value');
  }

  /// Gets an existing [VariableObject] resource's state with the given [name] and [id].
  static VariableObject get(
    String name,
    pulumi.Input<String> id, {
    VariableObjectState? state,
  }) {
    return VariableObject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VariableObject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/variableObject:VariableObject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    encrypted = registerOutput<bool?>('encrypted');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    value = registerOutput<String?>('value');
  }
}
