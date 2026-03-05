import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_model.dart';
import 'deployment_sku.dart';
import 'deployment_state.dart';

/// Manages a Cognitive Services Account Deployment.
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
/// const exampleAccount = new azure.cognitive.Account("example", {
///     name: "example-ca",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "OpenAI",
///     skuName: "S0",
/// });
/// const exampleDeployment = new azure.cognitive.Deployment("example", {
///     name: "example-cd",
///     cognitiveAccountId: exampleAccount.id,
///     model: {
///         format: "OpenAI",
///         name: "text-curie-001",
///         version: "1",
///     },
///     sku: {
///         name: "Standard",
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
/// example_account = azure.cognitive.Account("example",
///     name="example-ca",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="OpenAI",
///     sku_name="S0")
/// example_deployment = azure.cognitive.Deployment("example",
///     name="example-cd",
///     cognitive_account_id=example_account.id,
///     model={
///         "format": "OpenAI",
///         "name": "text-curie-001",
///         "version": "1",
///     },
///     sku={
///         "name": "Standard",
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
///     var exampleAccount = new Azure.Cognitive.Account("example", new()
///     {
///         Name = "example-ca",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "OpenAI",
///         SkuName = "S0",
///     });
///
///     var exampleDeployment = new Azure.Cognitive.Deployment("example", new()
///     {
///         Name = "example-cd",
///         CognitiveAccountId = exampleAccount.Id,
///         Model = new Azure.Cognitive.Inputs.DeploymentModelArgs
///         {
///             Format = "OpenAI",
///             Name = "text-curie-001",
///             Version = "1",
///         },
///         Sku = new Azure.Cognitive.Inputs.DeploymentSkuArgs
///         {
///             Name = "Standard",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cognitive"
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
/// 		exampleAccount, err := cognitive.NewAccount(ctx, "example", &cognitive.AccountArgs{
/// 			Name:              pulumi.String("example-ca"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.String("OpenAI"),
/// 			SkuName:           pulumi.String("S0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognitive.NewDeployment(ctx, "example", &cognitive.DeploymentArgs{
/// 			Name:               pulumi.String("example-cd"),
/// 			CognitiveAccountId: exampleAccount.ID(),
/// 			Model: &cognitive.DeploymentModelArgs{
/// 				Format:  pulumi.String("OpenAI"),
/// 				Name:    pulumi.String("text-curie-001"),
/// 				Version: pulumi.String("1"),
/// 			},
/// 			Sku: &cognitive.DeploymentSkuArgs{
/// 				Name: pulumi.String("Standard"),
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
/// import com.pulumi.azure.cognitive.Account;
/// import com.pulumi.azure.cognitive.AccountArgs;
/// import com.pulumi.azure.cognitive.Deployment;
/// import com.pulumi.azure.cognitive.DeploymentArgs;
/// import com.pulumi.azure.cognitive.inputs.DeploymentModelArgs;
/// import com.pulumi.azure.cognitive.inputs.DeploymentSkuArgs;
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
///             .name("example-ca")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("OpenAI")
///             .skuName("S0")
///             .build());
///
///         var exampleDeployment = new Deployment("exampleDeployment", DeploymentArgs.builder()
///             .name("example-cd")
///             .cognitiveAccountId(exampleAccount.id())
///             .model(DeploymentModelArgs.builder()
///                 .format("OpenAI")
///                 .name("text-curie-001")
///                 .version("1")
///                 .build())
///             .sku(DeploymentSkuArgs.builder()
///                 .name("Standard")
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
///     type: azure:cognitive:Account
///     name: example
///     properties:
///       name: example-ca
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: OpenAI
///       skuName: S0
///   exampleDeployment:
///     type: azure:cognitive:Deployment
///     name: example
///     properties:
///       name: example-cd
///       cognitiveAccountId: ${exampleAccount.id}
///       model:
///         format: OpenAI
///         name: text-curie-001
///         version: '1'
///       sku:
///         name: Standard
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CognitiveServices` - 2025-06-01
///
/// ## Import
///
/// Cognitive Services Account Deployment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/deployment:Deployment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.CognitiveServices/accounts/account1/deployments/deployment1
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cognitiveAccountId;
  /// Whether dynamic throttling is enabled.
  late final pulumi.Output<bool?> dynamicThrottlingEnabled;
  /// A `model` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<DeploymentModel> model;
  /// The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of RAI policy.
  late final pulumi.Output<String?> raiPolicyName;
  /// A `sku` block as defined below.
  late final pulumi.Output<DeploymentSku> sku;
  /// Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`.
  late final pulumi.Output<String?> versionUpgradeOption;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_cognitive_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    dynamicThrottlingEnabled = registerOutput<bool?>('dynamicThrottlingEnabled');
    model = registerOutput<DeploymentModel>('model', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentModel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    raiPolicyName = registerOutput<String?>('raiPolicyName');
    sku = registerOutput<DeploymentSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    versionUpgradeOption = registerOutput<String?>('versionUpgradeOption');
  }

  /// Gets an existing [DeploymentType] resource's state with the given [name] and [id].
  static DeploymentType get(
    String name,
    pulumi.Input<String> id, {
    DeploymentState? state,
  }) {
    return DeploymentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeploymentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    dynamicThrottlingEnabled = registerOutput<bool?>('dynamicThrottlingEnabled');
    model = registerOutput<DeploymentModel>('model', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentModel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    raiPolicyName = registerOutput<String?>('raiPolicyName');
    sku = registerOutput<DeploymentSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    versionUpgradeOption = registerOutput<String?>('versionUpgradeOption');
  }
}
