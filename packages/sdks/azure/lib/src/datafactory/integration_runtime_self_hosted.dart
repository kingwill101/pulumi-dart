import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_self_hosted_args.dart';
import 'integration_runtime_self_hosted_state.dart';

/// Manages a Data Factory Self-hosted Integration Runtime.
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
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleIntegrationRuntimeSelfHosted = new azure.datafactory.IntegrationRuntimeSelfHosted("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_integration_runtime_self_hosted = azure.datafactory.IntegrationRuntimeSelfHosted("example",
///     name="example",
///     data_factory_id=example_factory.id)
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
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleIntegrationRuntimeSelfHosted = new Azure.DataFactory.IntegrationRuntimeSelfHosted("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
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
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewIntegrationRuntimeSelfHosted(ctx, "example", &datafactory.IntegrationRuntimeSelfHostedArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_datafactory_factory" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_datafactory_integrationruntimeselfhosted" "example" {
///   name            = "example"
///   data_factory_id = azure_datafactory_factory.example.id
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.IntegrationRuntimeSelfHosted;
/// import com.pulumi.azure.datafactory.IntegrationRuntimeSelfHostedArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleIntegrationRuntimeSelfHosted = new IntegrationRuntimeSelfHosted("exampleIntegrationRuntimeSelfHosted", IntegrationRuntimeSelfHostedArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
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
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleIntegrationRuntimeSelfHosted:
///     type: azure:datafactory:IntegrationRuntimeSelfHosted
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factories can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/integrationRuntimeSelfHosted:IntegrationRuntimeSelfHosted example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/integrationRuntimes/example
/// ```
class IntegrationRuntimeSelfHosted extends pulumi.CustomResource {
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// Integration runtime description.
  late final pulumi.Output<String?> description;
  /// The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created.
  late final pulumi.Output<String> name;
  /// The primary integration runtime authentication key.
  late final pulumi.Output<String> primaryAuthorizationKey;
  /// A `rbacAuthorization` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<Map<String, dynamic>>?> rbacAuthorizations;
  /// The secondary integration runtime authentication key.
  late final pulumi.Output<String> secondaryAuthorizationKey;
  /// Specifies whether enable interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  late final pulumi.Output<bool?> selfContainedInteractiveAuthoringEnabled;

  /// Creates a new [IntegrationRuntimeSelfHosted].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationRuntimeSelfHosted]. {@macro pulumi_datafactory_integration_runtime_self_hosted_integration_runtime_self_hosted_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationRuntimeSelfHosted(
    String name, {
    IntegrationRuntimeSelfHostedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/integrationRuntimeSelfHosted:IntegrationRuntimeSelfHosted',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    primaryAuthorizationKey = registerOutput<String>('primaryAuthorizationKey');
    rbacAuthorizations = registerOutput<List<Map<String, dynamic>>?>('rbacAuthorizations');
    secondaryAuthorizationKey = registerOutput<String>('secondaryAuthorizationKey');
    selfContainedInteractiveAuthoringEnabled = registerOutput<bool?>('selfContainedInteractiveAuthoringEnabled');
  }

  /// Gets an existing [IntegrationRuntimeSelfHosted] resource's state with the given [name] and [id].
  static IntegrationRuntimeSelfHosted get(
    String name,
    pulumi.Input<String> id, {
    IntegrationRuntimeSelfHostedState? state,
  }) {
    return IntegrationRuntimeSelfHosted._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationRuntimeSelfHosted._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/integrationRuntimeSelfHosted:IntegrationRuntimeSelfHosted',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    primaryAuthorizationKey = registerOutput<String>('primaryAuthorizationKey');
    rbacAuthorizations = registerOutput<List<Map<String, dynamic>>?>('rbacAuthorizations');
    secondaryAuthorizationKey = registerOutput<String>('secondaryAuthorizationKey');
    selfContainedInteractiveAuthoringEnabled = registerOutput<bool?>('selfContainedInteractiveAuthoringEnabled');
  }
}
