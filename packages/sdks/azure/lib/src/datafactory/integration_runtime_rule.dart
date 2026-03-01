import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_rule_args.dart';
import 'integration_runtime_rule_state.dart';

/// Manages a Data Factory Azure Integration Runtime.
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
/// const exampleIntegrationRuntimeRule = new azure.datafactory.IntegrationRuntimeRule("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     location: example.location,
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
/// example_integration_runtime_rule = azure.datafactory.IntegrationRuntimeRule("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     location=example.location)
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
///     var exampleIntegrationRuntimeRule = new Azure.DataFactory.IntegrationRuntimeRule("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         Location = example.Location,
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
/// 		_, err = datafactory.NewIntegrationRuntimeRule(ctx, "example", &datafactory.IntegrationRuntimeRuleArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Location:      example.Location,
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.IntegrationRuntimeRule;
/// import com.pulumi.azure.datafactory.IntegrationRuntimeRuleArgs;
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
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleIntegrationRuntimeRule = new IntegrationRuntimeRule("exampleIntegrationRuntimeRule", IntegrationRuntimeRuleArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .location(example.location())
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
///   exampleIntegrationRuntimeRule:
///     type: azure:datafactory:IntegrationRuntimeRule
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factory Azure Integration Runtimes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/integrationRuntimeRule:IntegrationRuntimeRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/integrationRuntimes/example
/// ```
class IntegrationRuntimeRule extends pulumi.CustomResource {
  /// Cluster will not be recycled and it will be used in next data flow activity run until TTL (time to live) is reached if this is set as `false`. Defaults to `true`.
  late final pulumi.Output<bool?> cleanupEnabled;
  /// Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`.
  late final pulumi.Output<String?> computeType;
  /// Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`.
  late final pulumi.Output<int?> coreCount;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataFactoryId;
  /// Integration runtime description.
  late final pulumi.Output<String?> description;
  /// Specifies the supported Azure location where the resource exists. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Managed Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`.
  late final pulumi.Output<int?> timeToLiveMin;
  /// Is Integration Runtime compute provisioned within Managed Virtual Network? Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> virtualNetworkEnabled;

  /// Creates a new [IntegrationRuntimeRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationRuntimeRule]. {@macro pulumi_datafactory_integration_runtime_rule_integration_runtime_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationRuntimeRule(
    String name, {
    IntegrationRuntimeRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/integrationRuntimeRule:IntegrationRuntimeRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cleanupEnabled = registerOutput<bool?>('cleanupEnabled');
    this.computeType = registerOutput<String?>('computeType');
    this.coreCount = registerOutput<int?>('coreCount');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.timeToLiveMin = registerOutput<int?>('timeToLiveMin');
    this.virtualNetworkEnabled = registerOutput<bool?>('virtualNetworkEnabled');
  }

  /// Gets an existing [IntegrationRuntimeRule] resource's state with the given [name] and [id].
  static IntegrationRuntimeRule get(
    String name,
    pulumi.Input<String> id, {
    IntegrationRuntimeRuleState? state,
  }) {
    return IntegrationRuntimeRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationRuntimeRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/integrationRuntimeRule:IntegrationRuntimeRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cleanupEnabled = registerOutput<bool?>('cleanupEnabled');
    this.computeType = registerOutput<String?>('computeType');
    this.coreCount = registerOutput<int?>('coreCount');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.timeToLiveMin = registerOutput<int?>('timeToLiveMin');
    this.virtualNetworkEnabled = registerOutput<bool?>('virtualNetworkEnabled');
  }
}
