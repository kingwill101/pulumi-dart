import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_template_deployment_args.dart';
import 'resource_group_template_deployment_state.dart';

/// Manages a Resource Group Template Deployment.
///
/// &gt; **Note:** This resource will automatically attempt to delete resources deployed by the ARM Template when it is deleted. This behavior can be disabled in the provider `features` block by setting the `delete_nested_items_during_deletion` field to `false` within the `template_deployment` block.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const vnetName = "example-vnet";
/// const example = new azure.core.ResourceGroupTemplateDeployment("example", {
///     name: "example-deploy",
///     resourceGroupName: "example-group",
///     deploymentMode: "Incremental",
///     parametersContent: JSON.stringify({
///         vnetName: {
///             value: vnetName,
///         },
///     }),
///     templateContent: `{
///     \\"schema\\": \\"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\\",
///     \\"contentVersion\\": \\"1.0.0.0\\",
///     \\"parameters\\": {
///         \\"vnetName\\": {
///             \\"type\\": \\"string\\",
///             \\"metadata\\": {
///                 \\"description\\": \\"Name of the VNET\\"
///             }
///         }
///     },
///     \\"variables\\": {},
///     \\"resources\\": [
///         {
///             \\"type\\": \\"Microsoft.Network/virtualNetworks\\",
///             \\"apiVersion\\": \\"2020-05-01\\",
///             \\"name\\": \\"[parameters('vnetName')]\\",
///             \\"location\\": \\"[resourceGroup().location]\\",
///             \\"properties\\": {
///                 \\"addressSpace\\": {
///                     \\"addressPrefixes\\": [
///                         \\"10.0.0.0/16\\"
///                     ]
///                 }
///             }
///         }
///     ],
///     \\"outputs\\": {
///       \\"exampleOutput\\": {
///         \\"type\\": \\"string\\",
///         \\"value\\": \\"someoutput\\"
///       }
///     }
/// }
/// `,
/// });
/// export const armExampleOutput = std.jsondecodeOutput({
///     input: example.outputContent,
/// }).apply(invoke => invoke.result?.exampleOutput?.value);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// vnet_name = "example-vnet"
/// example = azure.core.ResourceGroupTemplateDeployment("example",
///     name="example-deploy",
///     resource_group_name="example-group",
///     deployment_mode="Incremental",
///     parameters_content=json.dumps({
///         "vnetName": {
///             "value": vnet_name,
///         },
///     }),
///     template_content="""{
///     \"$schema\": \"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\",
///     \"contentVersion\": \"1.0.0.0\",
///     \"parameters\": {
///         \"vnetName\": {
///             \"type\": \"string\",
///             \"metadata\": {
///                 \"description\": \"Name of the VNET\"
///             }
///         }
///     },
///     \"variables\": {},
///     \"resources\": [
///         {
///             \"type\": \"Microsoft.Network/virtualNetworks\",
///             \"apiVersion\": \"2020-05-01\",
///             \"name\": \"[parameters('vnetName')]\",
///             \"location\": \"[resourceGroup().location]\",
///             \"properties\": {
///                 \"addressSpace\": {
///                     \"addressPrefixes\": [
///                         \"10.0.0.0/16\"
///                     ]
///                 }
///             }
///         }
///     ],
///     \"outputs\": {
///       \"exampleOutput\": {
///         \"type\": \"string\",
///         \"value\": \"someoutput\"
///       }
///     }
/// }
/// """)
/// pulumi.export("armExampleOutput", std.jsondecode_output(input=example.output_content).apply(lambda invoke: invoke.result["exampleOutput"]["value"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vnetName = "example-vnet";
///
///     var example = new Azure.Core.ResourceGroupTemplateDeployment("example", new()
///     {
///         Name = "example-deploy",
///         ResourceGroupName = "example-group",
///         DeploymentMode = "Incremental",
///         ParametersContent = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["vnetName"] = new Dictionary<string, object?>
///             {
///                 ["value"] = vnetName,
///             },
///         }),
///         TemplateContent = @"{
///     \""$schema\"": \""https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\"",
///     \""contentVersion\"": \""1.0.0.0\"",
///     \""parameters\"": {
///         \""vnetName\"": {
///             \""type\"": \""string\"",
///             \""metadata\"": {
///                 \""description\"": \""Name of the VNET\""
///             }
///         }
///     },
///     \""variables\"": {},
///     \""resources\"": [
///         {
///             \""type\"": \""Microsoft.Network/virtualNetworks\"",
///             \""apiVersion\"": \""2020-05-01\"",
///             \""name\"": \""[parameters('vnetName')]\"",
///             \""location\"": \""[resourceGroup().location]\"",
///             \""properties\"": {
///                 \""addressSpace\"": {
///                     \""addressPrefixes\"": [
///                         \""10.0.0.0/16\""
///                     ]
///                 }
///             }
///         }
///     ],
///     \""outputs\"": {
///       \""exampleOutput\"": {
///         \""type\"": \""string\"",
///         \""value\"": \""someoutput\""
///       }
///     }
/// }
/// ",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armExampleOutput"] = Std.Jsondecode.Invoke(new()
///         {
///             Input = example.OutputContent,
///         }).Apply(invoke => invoke.Result?.ExampleOutput?.Value),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// vnetName := "example-vnet";
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "vnetName": map[string]interface{}{
/// "value": vnetName,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// example, err := core.NewResourceGroupTemplateDeployment(ctx, "example", &core.ResourceGroupTemplateDeploymentArgs{
/// Name: pulumi.String("example-deploy"),
/// ResourceGroupName: pulumi.String("example-group"),
/// DeploymentMode: pulumi.String("Incremental"),
/// ParametersContent: pulumi.String(json0),
/// TemplateContent: pulumi.String(`{
///     \"$schema\": \"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\",
///     \"contentVersion\": \"1.0.0.0\",
///     \"parameters\": {
///         \"vnetName\": {
///             \"type\": \"string\",
///             \"metadata\": {
///                 \"description\": \"Name of the VNET\"
///             }
///         }
///     },
///     \"variables\": {},
///     \"resources\": [
///         {
///             \"type\": \"Microsoft.Network/virtualNetworks\",
///             \"apiVersion\": \"2020-05-01\",
///             \"name\": \"[parameters('vnetName')]\",
///             \"location\": \"[resourceGroup().location]\",
///             \"properties\": {
///                 \"addressSpace\": {
///                     \"addressPrefixes\": [
///                         \"10.0.0.0/16\"
///                     ]
///                 }
///             }
///         }
///     ],
///     \"outputs\": {
///       \"exampleOutput\": {
///         \"type\": \"string\",
///         \"value\": \"someoutput\"
///       }
///     }
/// }
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// ctx.Export("armExampleOutput", std.JsondecodeOutput(ctx, std.JsondecodeOutputArgs{
/// Input: example.OutputContent,
/// }, nil).ApplyT(func(invoke std.JsondecodeResult) (*interface{}, error) {
/// return invoke.Result.ExampleOutput.Value, nil
/// }).(pulumi.Interface{}PtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroupTemplateDeployment;
/// import com.pulumi.azure.core.ResourceGroupTemplateDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
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
///         final var vnetName = "example-vnet";
///
///         var example = new ResourceGroupTemplateDeployment("example", ResourceGroupTemplateDeploymentArgs.builder()
///             .name("example-deploy")
///             .resourceGroupName("example-group")
///             .deploymentMode("Incremental")
///             .parametersContent(serializeJson(
///                 jsonObject(
///                     jsonProperty("vnetName", jsonObject(
///                         jsonProperty("value", vnetName)
///                     ))
///                 )))
///             .templateContent("""
/// {
///     \"$schema\": \"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\",
///     \"contentVersion\": \"1.0.0.0\",
///     \"parameters\": {
///         \"vnetName\": {
///             \"type\": \"string\",
///             \"metadata\": {
///                 \"description\": \"Name of the VNET\"
///             }
///         }
///     },
///     \"variables\": {},
///     \"resources\": [
///         {
///             \"type\": \"Microsoft.Network/virtualNetworks\",
///             \"apiVersion\": \"2020-05-01\",
///             \"name\": \"[parameters('vnetName')]\",
///             \"location\": \"[resourceGroup().location]\",
///             \"properties\": {
///                 \"addressSpace\": {
///                     \"addressPrefixes\": [
///                         \"10.0.0.0/16\"
///                     ]
///                 }
///             }
///         }
///     ],
///     \"outputs\": {
///       \"exampleOutput\": {
///         \"type\": \"string\",
///         \"value\": \"someoutput\"
///       }
///     }
/// }
///             """)
///             .build());
///
///         ctx.export("armExampleOutput", StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(example.outputContent())
///             .build()).applyValue(_invoke -> _invoke.result().exampleOutput().value()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroupTemplateDeployment
///     properties:
///       name: example-deploy
///       resourceGroupName: example-group
///       deploymentMode: Incremental
///       parametersContent:
///         fn::toJSON:
///           vnetName:
///             value: ${vnetName}
///       templateContent: |
///         {
///             \"$schema\": \"https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#\",
///             \"contentVersion\": \"1.0.0.0\",
///             \"parameters\": {
///                 \"vnetName\": {
///                     \"type\": \"string\",
///                     \"metadata\": {
///                         \"description\": \"Name of the VNET\"
///                     }
///                 }
///             },
///             \"variables\": {},
///             \"resources\": [
///                 {
///                     \"type\": \"Microsoft.Network/virtualNetworks\",
///                     \"apiVersion\": \"2020-05-01\",
///                     \"name\": \"[parameters('vnetName')]\",
///                     \"location\": \"[resourceGroup().location]\",
///                     \"properties\": {
///                         \"addressSpace\": {
///                             \"addressPrefixes\": [
///                                 \"10.0.0.0/16\"
///                             ]
///                         }
///                     }
///                 }
///             ],
///             \"outputs\": {
///               \"exampleOutput\": {
///                 \"type\": \"string\",
///                 \"value\": \"someoutput\"
///               }
///             }
///         }
/// variables:
///   vnetName: example-vnet
/// outputs:
///   armExampleOutput:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${example.outputContent}
///       return: result.exampleOutput.value
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getTemplateSpecVersion({
///     name: "myTemplateForResourceGroup",
///     resourceGroupName: "myResourceGroup",
///     version: "v3.4.0",
/// });
/// const exampleResourceGroupTemplateDeployment = new azure.core.ResourceGroupTemplateDeployment("example", {
///     name: "example-deploy",
///     resourceGroupName: "example-group",
///     deploymentMode: "Incremental",
///     templateSpecVersionId: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_template_spec_version(name="myTemplateForResourceGroup",
///     resource_group_name="myResourceGroup",
///     version="v3.4.0")
/// example_resource_group_template_deployment = azure.core.ResourceGroupTemplateDeployment("example",
///     name="example-deploy",
///     resource_group_name="example-group",
///     deployment_mode="Incremental",
///     template_spec_version_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetTemplateSpecVersion.Invoke(new()
///     {
///         Name = "myTemplateForResourceGroup",
///         ResourceGroupName = "myResourceGroup",
///         Version = "v3.4.0",
///     });
///
///     var exampleResourceGroupTemplateDeployment = new Azure.Core.ResourceGroupTemplateDeployment("example", new()
///     {
///         Name = "example-deploy",
///         ResourceGroupName = "example-group",
///         DeploymentMode = "Incremental",
///         TemplateSpecVersionId = example.Apply(getTemplateSpecVersionResult => getTemplateSpecVersionResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.GetTemplateSpecVersion(ctx, &core.GetTemplateSpecVersionArgs{
/// 			Name:              "myTemplateForResourceGroup",
/// 			ResourceGroupName: "myResourceGroup",
/// 			Version:           "v3.4.0",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.NewResourceGroupTemplateDeployment(ctx, "example", &core.ResourceGroupTemplateDeploymentArgs{
/// 			Name:                  pulumi.String("example-deploy"),
/// 			ResourceGroupName:     pulumi.String("example-group"),
/// 			DeploymentMode:        pulumi.String("Incremental"),
/// 			TemplateSpecVersionId: pulumi.String(example.Id),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetTemplateSpecVersionArgs;
/// import com.pulumi.azure.core.ResourceGroupTemplateDeployment;
/// import com.pulumi.azure.core.ResourceGroupTemplateDeploymentArgs;
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
///         final var example = CoreFunctions.getTemplateSpecVersion(GetTemplateSpecVersionArgs.builder()
///             .name("myTemplateForResourceGroup")
///             .resourceGroupName("myResourceGroup")
///             .version("v3.4.0")
///             .build());
///
///         var exampleResourceGroupTemplateDeployment = new ResourceGroupTemplateDeployment("exampleResourceGroupTemplateDeployment", ResourceGroupTemplateDeploymentArgs.builder()
///             .name("example-deploy")
///             .resourceGroupName("example-group")
///             .deploymentMode("Incremental")
///             .templateSpecVersionId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroupTemplateDeployment:
///     type: azure:core:ResourceGroupTemplateDeployment
///     name: example
///     properties:
///       name: example-deploy
///       resourceGroupName: example-group
///       deploymentMode: Incremental
///       templateSpecVersionId: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getTemplateSpecVersion
///       arguments:
///         name: myTemplateForResourceGroup
///         resourceGroupName: myResourceGroup
///         version: v3.4.0
/// ```
///
///
/// ## Import
///
/// Resource Group Template Deployments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:core/resourceGroupTemplateDeployment:ResourceGroupTemplateDeployment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Resources/deployments/template1
/// ```
class ResourceGroupTemplateDeployment extends pulumi.CustomResource {
  /// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  late final pulumi.Output<String?> debugLevel;

  /// The Deployment Mode for this Resource Group Template Deployment. Possible values are `Complete` (where resources in the Resource Group not specified in the ARM Template will be destroyed) and `Incremental` (where resources are additive only).
  ///
  /// &gt; **Note:** If `deployment_mode` is set to `Complete` then resources within this Resource Group which are not defined in the ARM Template will be deleted.
  late final pulumi.Output<String> deploymentMode;

  /// The name which should be used for this Resource Group Template Deployment. Changing this forces a new Resource Group Template Deployment to be created.
  late final pulumi.Output<String> name;

  /// The JSON Content of the Outputs of the ARM Template Deployment.
  late final pulumi.Output<String> outputContent;

  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  ///
  /// &gt; An example of how to pass variables into an ARM Template can be seen in the example.
  late final pulumi.Output<String> parametersContent;

  /// The name of the Resource Group where the Resource Group Template Deployment should exist. Changing this forces a new Resource Group Template Deployment to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the Resource Group Template Deployment.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `template_spec_version_id`.
  late final pulumi.Output<String> templateContent;

  /// The ID of the Template Spec Version to deploy. Cannot be specified with `template_content`.
  late final pulumi.Output<String?> templateSpecVersionId;

  /// Creates a new [ResourceGroupTemplateDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGroupTemplateDeployment]. {@macro pulumi_core_resource_group_template_deployment_resource_group_template_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGroupTemplateDeployment(
    String name, {
    ResourceGroupTemplateDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:core/resourceGroupTemplateDeployment:ResourceGroupTemplateDeployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    debugLevel = registerOutput<String?>('debugLevel');
    deploymentMode = registerOutput<String>('deploymentMode');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }

  /// Gets an existing [ResourceGroupTemplateDeployment] resource's state with the given [name] and [id].
  static ResourceGroupTemplateDeployment get(
    String name,
    pulumi.Input<String> id, {
    ResourceGroupTemplateDeploymentState? state,
  }) {
    return ResourceGroupTemplateDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceGroupTemplateDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:core/resourceGroupTemplateDeployment:ResourceGroupTemplateDeployment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    debugLevel = registerOutput<String?>('debugLevel');
    deploymentMode = registerOutput<String>('deploymentMode');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }
}
