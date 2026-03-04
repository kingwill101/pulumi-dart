import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_args.dart';
import 'pipeline_state.dart';

/// Manages a Pipeline inside a Azure Data Factory.
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
/// const examplePipeline = new azure.datafactory.Pipeline("example", {
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
/// example_pipeline = azure.datafactory.Pipeline("example",
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
///     var examplePipeline = new Azure.DataFactory.Pipeline("example", new()
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
/// 		_, err = datafactory.NewPipeline(ctx, "example", &datafactory.PipelineArgs{
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
/// import com.pulumi.azure.datafactory.Pipeline;
/// import com.pulumi.azure.datafactory.PipelineArgs;
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
///         var examplePipeline = new Pipeline("examplePipeline", PipelineArgs.builder()
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
///   examplePipeline:
///     type: azure:datafactory:Pipeline
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
/// ```
///
///
///
/// ### With Activities
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = new azure.datafactory.Pipeline("test", {
///     name: "example",
///     dataFactoryId: testAzurermDataFactory.id,
///     variables: {
///         bob: "item1",
///     },
///     activitiesJson: `[
///     {
///         \\"name\\": \\"Append variable1\\",
///         \\"type\\": \\"AppendVariable\\",
///         \\"dependsOn\\": [],
///         \\"userProperties\\": [],
///         \\"typeProperties\\": {
///           \\"variableName\\": \\"bob\\",
///           \\"value\\": \\"something\\"
///         }
///     }
/// ]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.datafactory.Pipeline("test",
///     name="example",
///     data_factory_id=test_azurerm_data_factory["id"],
///     variables={
///         "bob": "item1",
///     },
///     activities_json="""[
///     {
///         \"name\": \"Append variable1\",
///         \"type\": \"AppendVariable\",
///         \"dependsOn\": [],
///         \"userProperties\": [],
///         \"typeProperties\": {
///           \"variableName\": \"bob\",
///           \"value\": \"something\"
///         }
///     }
/// ]
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Azure.DataFactory.Pipeline("test", new()
///     {
///         Name = "example",
///         DataFactoryId = testAzurermDataFactory.Id,
///         Variables =
///         {
///             { "bob", "item1" },
///         },
///         ActivitiesJson = @"[
///     {
///         \""name\"": \""Append variable1\"",
///         \""type\"": \""AppendVariable\"",
///         \""dependsOn\"": [],
///         \""userProperties\"": [],
///         \""typeProperties\"": {
///           \""variableName\"": \""bob\"",
///           \""value\"": \""something\""
///         }
///     }
/// ]
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewPipeline(ctx, "test", &datafactory.PipelineArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: pulumi.Any(testAzurermDataFactory.Id),
/// 			Variables: pulumi.StringMap{
/// 				"bob": pulumi.String("item1"),
/// 			},
/// 			ActivitiesJson: pulumi.String(`[
///     {
///         \"name\": \"Append variable1\",
///         \"type\": \"AppendVariable\",
///         \"dependsOn\": [],
///         \"userProperties\": [],
///         \"typeProperties\": {
///           \"variableName\": \"bob\",
///           \"value\": \"something\"
///         }
///     }
/// ]
/// `),
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
/// import com.pulumi.azure.datafactory.Pipeline;
/// import com.pulumi.azure.datafactory.PipelineArgs;
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
///         var test = new Pipeline("test", PipelineArgs.builder()
///             .name("example")
///             .dataFactoryId(testAzurermDataFactory.id())
///             .variables(Map.of("bob", "item1"))
///             .activitiesJson("""
/// [
///     {
///         \"name\": \"Append variable1\",
///         \"type\": \"AppendVariable\",
///         \"dependsOn\": [],
///         \"userProperties\": [],
///         \"typeProperties\": {
///           \"variableName\": \"bob\",
///           \"value\": \"something\"
///         }
///     }
/// ]
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: azure:datafactory:Pipeline
///     properties:
///       name: example
///       dataFactoryId: ${testAzurermDataFactory.id}
///       variables:
///         bob: item1
///       activitiesJson: |
///         [
///             {
///                 \"name\": \"Append variable1\",
///                 \"type\": \"AppendVariable\",
///                 \"dependsOn\": [],
///                 \"userProperties\": [],
///                 \"typeProperties\": {
///                   \"variableName\": \"bob\",
///                   \"value\": \"something\"
///                 }
///             }
///         ]
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
/// Data Factory Pipeline's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/pipeline:Pipeline example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/pipelines/example
/// ```
class Pipeline extends pulumi.CustomResource {
  /// A JSON object that contains the activities that will be associated with the Data Factory Pipeline.
  late final pulumi.Output<String?> activitiesJson;

  /// List of tags that can be used for describing the Data Factory Pipeline.
  late final pulumi.Output<List<String>?> annotations;

  /// The max number of concurrent runs for the Data Factory Pipeline. Must be between `1` and `50`.
  late final pulumi.Output<int?> concurrency;

  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;

  /// The description for the Data Factory Pipeline.
  late final pulumi.Output<String?> description;

  /// The folder that this Pipeline is in. If not specified, the Pipeline will appear at the root level.
  late final pulumi.Output<String?> folder;

  /// The TimeSpan value after which an Azure Monitoring Metric is fired.
  late final pulumi.Output<String?> moniterMetricsAfterDuration;

  /// Specifies the name of the Data Factory Pipeline. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;

  /// A map of parameters to associate with the Data Factory Pipeline.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// A map of variables to associate with the Data Factory Pipeline.
  late final pulumi.Output<Map<String, String>?> variables;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_datafactory_pipeline_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/pipeline:Pipeline',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activitiesJson = registerOutput<String?>('activitiesJson');
    annotations = registerOutput<List<String>?>('annotations');
    concurrency = registerOutput<int?>('concurrency');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    moniterMetricsAfterDuration = registerOutput<String?>(
      'moniterMetricsAfterDuration',
    );
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    variables = registerOutput<Map<String, String>?>('variables');
  }

  /// Gets an existing [Pipeline] resource's state with the given [name] and [id].
  static Pipeline get(
    String name,
    pulumi.Input<String> id, {
    PipelineState? state,
  }) {
    return Pipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Pipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/pipeline:Pipeline',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activitiesJson = registerOutput<String?>('activitiesJson');
    annotations = registerOutput<List<String>?>('annotations');
    concurrency = registerOutput<int?>('concurrency');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    moniterMetricsAfterDuration = registerOutput<String?>(
      'moniterMetricsAfterDuration',
    );
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    variables = registerOutput<Map<String, String>?>('variables');
  }
}
