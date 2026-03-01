import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_args.dart';
import 'entity_type_entity.dart';
import 'entity_type_state.dart';

/// Represents an entity type. Entity types serve as a tool for extracting parameter values from natural language queries.
///
///
/// To get more information about EntityType, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent.entityTypes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Entity Type Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicAgent = new gcp.diagflow.Agent("basic_agent", {
///     displayName: "example_agent",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
/// });
/// const basicEntityType = new gcp.diagflow.EntityType("basic_entity_type", {
///     displayName: "basic-entity-type",
///     kind: "KIND_MAP",
///     entities: [
///         {
///             value: "value1",
///             synonyms: [
///                 "synonym1",
///                 "synonym2",
///             ],
///         },
///         {
///             value: "value2",
///             synonyms: [
///                 "synonym3",
///                 "synonym4",
///             ],
///         },
///     ],
/// }, {
///     dependsOn: [basicAgent],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_agent = gcp.diagflow.Agent("basic_agent",
///     display_name="example_agent",
///     default_language_code="en",
///     time_zone="America/New_York")
/// basic_entity_type = gcp.diagflow.EntityType("basic_entity_type",
///     display_name="basic-entity-type",
///     kind="KIND_MAP",
///     entities=[
///         {
///             "value": "value1",
///             "synonyms": [
///                 "synonym1",
///                 "synonym2",
///             ],
///         },
///         {
///             "value": "value2",
///             "synonyms": [
///                 "synonym3",
///                 "synonym4",
///             ],
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[basic_agent]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicAgent = new Gcp.Diagflow.Agent("basic_agent", new()
///     {
///         DisplayName = "example_agent",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///     });
///
///     var basicEntityType = new Gcp.Diagflow.EntityType("basic_entity_type", new()
///     {
///         DisplayName = "basic-entity-type",
///         Kind = "KIND_MAP",
///         Entities = new[]
///         {
///             new Gcp.Diagflow.Inputs.EntityTypeEntityArgs
///             {
///                 Value = "value1",
///                 Synonyms = new[]
///                 {
///                     "synonym1",
///                     "synonym2",
///                 },
///             },
///             new Gcp.Diagflow.Inputs.EntityTypeEntityArgs
///             {
///                 Value = "value2",
///                 Synonyms = new[]
///                 {
///                     "synonym3",
///                     "synonym4",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             basicAgent,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicAgent, err := diagflow.NewAgent(ctx, "basic_agent", &diagflow.AgentArgs{
/// 			DisplayName:         pulumi.String("example_agent"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewEntityType(ctx, "basic_entity_type", &diagflow.EntityTypeArgs{
/// 			DisplayName: pulumi.String("basic-entity-type"),
/// 			Kind:        pulumi.String("KIND_MAP"),
/// 			Entities: diagflow.EntityTypeEntityArray{
/// 				&diagflow.EntityTypeEntityArgs{
/// 					Value: pulumi.String("value1"),
/// 					Synonyms: pulumi.StringArray{
/// 						pulumi.String("synonym1"),
/// 						pulumi.String("synonym2"),
/// 					},
/// 				},
/// 				&diagflow.EntityTypeEntityArgs{
/// 					Value: pulumi.String("value2"),
/// 					Synonyms: pulumi.StringArray{
/// 						pulumi.String("synonym3"),
/// 						pulumi.String("synonym4"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			basicAgent,
/// 		}))
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
/// import com.pulumi.gcp.diagflow.Agent;
/// import com.pulumi.gcp.diagflow.AgentArgs;
/// import com.pulumi.gcp.diagflow.EntityType;
/// import com.pulumi.gcp.diagflow.EntityTypeArgs;
/// import com.pulumi.gcp.diagflow.inputs.EntityTypeEntityArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var basicAgent = new Agent("basicAgent", AgentArgs.builder()
///             .displayName("example_agent")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .build());
///
///         var basicEntityType = new EntityType("basicEntityType", EntityTypeArgs.builder()
///             .displayName("basic-entity-type")
///             .kind("KIND_MAP")
///             .entities(
///                 EntityTypeEntityArgs.builder()
///                     .value("value1")
///                     .synonyms(
///                         "synonym1",
///                         "synonym2")
///                     .build(),
///                 EntityTypeEntityArgs.builder()
///                     .value("value2")
///                     .synonyms(
///                         "synonym3",
///                         "synonym4")
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(basicAgent)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicAgent:
///     type: gcp:diagflow:Agent
///     name: basic_agent
///     properties:
///       displayName: example_agent
///       defaultLanguageCode: en
///       timeZone: America/New_York
///   basicEntityType:
///     type: gcp:diagflow:EntityType
///     name: basic_entity_type
///     properties:
///       displayName: basic-entity-type
///       kind: KIND_MAP
///       entities:
///         - value: value1
///           synonyms:
///             - synonym1
///             - synonym2
///         - value: value2
///           synonyms:
///             - synonym3
///             - synonym4
///     options:
///       dependsOn:
///         - ${basicAgent}
/// ```
///
///
/// ## Import
///
/// EntityType can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, EntityType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/entityType:EntityType default {{name}}
/// ```
class EntityType extends pulumi.CustomResource {
  /// The name of this entity type to be displayed on the console.
  late final pulumi.Output<String> displayName;
  /// Enables fuzzy entity extraction during classification.
  late final pulumi.Output<bool?> enableFuzzyExtraction;
  /// The collection of entity entries associated with the entity type.
  /// Structure is documented below.
  late final pulumi.Output<List<EntityTypeEntity>?> entities;
  /// Indicates the kind of entity type.
  /// * KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.
  /// * KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity
  /// types can contain references to other entity types (with or without aliases).
  /// * KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values.
  /// Possible values are: `KIND_MAP`, `KIND_LIST`, `KIND_REGEXP`.
  late final pulumi.Output<String> kind;
  /// The unique identifier of the entity type.
  /// Format: projects/<Project ID>/agent/entityTypes/<Entity type ID>.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [EntityType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntityType]. {@macro pulumi_diagflow_entity_type_entity_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntityType(
    String name, {
    EntityTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/entityType:EntityType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.enableFuzzyExtraction = registerOutput<bool?>('enableFuzzyExtraction');
    this.entities = registerOutput<List<EntityTypeEntity>?>('entities');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }

  /// Gets an existing [EntityType] resource's state with the given [name] and [id].
  static EntityType get(
    String name,
    pulumi.Input<String> id, {
    EntityTypeState? state,
  }) {
    return EntityType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EntityType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/entityType:EntityType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.enableFuzzyExtraction = registerOutput<bool?>('enableFuzzyExtraction');
    this.entities = registerOutput<List<EntityTypeEntity>?>('entities');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
