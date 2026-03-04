import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_group_args.dart';
import 'entry_group_state.dart';

/// &gt; **Warning:** `gcp.datacatalog.EntryGroup` is deprecated and will be removed in a future major release. Use `gcp.dataplex.EntryGroup` instead. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// An EntryGroup resource represents a logical grouping of zero or more Data Catalog Entry resources.
///
///
/// To get more information about EntryGroup, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Entry Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicEntryGroup = new gcp.datacatalog.EntryGroup("basic_entry_group", {entryGroupId: "my_group"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_entry_group = gcp.datacatalog.EntryGroup("basic_entry_group", entry_group_id="my_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicEntryGroup = new Gcp.DataCatalog.EntryGroup("basic_entry_group", new()
///     {
///         EntryGroupId = "my_group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.NewEntryGroup(ctx, "basic_entry_group", &datacatalog.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("my_group"),
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
/// import com.pulumi.gcp.datacatalog.EntryGroup;
/// import com.pulumi.gcp.datacatalog.EntryGroupArgs;
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
///         var basicEntryGroup = new EntryGroup("basicEntryGroup", EntryGroupArgs.builder()
///             .entryGroupId("my_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicEntryGroup:
///     type: gcp:datacatalog:EntryGroup
///     name: basic_entry_group
///     properties:
///       entryGroupId: my_group
/// ```
///
/// ### Data Catalog Entry Group Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicEntryGroup = new gcp.datacatalog.EntryGroup("basic_entry_group", {
///     entryGroupId: "my_group",
///     displayName: "entry group",
///     description: "example entry group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_entry_group = gcp.datacatalog.EntryGroup("basic_entry_group",
///     entry_group_id="my_group",
///     display_name="entry group",
///     description="example entry group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicEntryGroup = new Gcp.DataCatalog.EntryGroup("basic_entry_group", new()
///     {
///         EntryGroupId = "my_group",
///         DisplayName = "entry group",
///         Description = "example entry group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.NewEntryGroup(ctx, "basic_entry_group", &datacatalog.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("my_group"),
/// 			DisplayName:  pulumi.String("entry group"),
/// 			Description:  pulumi.String("example entry group"),
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
/// import com.pulumi.gcp.datacatalog.EntryGroup;
/// import com.pulumi.gcp.datacatalog.EntryGroupArgs;
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
///         var basicEntryGroup = new EntryGroup("basicEntryGroup", EntryGroupArgs.builder()
///             .entryGroupId("my_group")
///             .displayName("entry group")
///             .description("example entry group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicEntryGroup:
///     type: gcp:datacatalog:EntryGroup
///     name: basic_entry_group
///     properties:
///       entryGroupId: my_group
///       displayName: entry group
///       description: example entry group
/// ```
///
///
/// ## Import
///
/// EntryGroup can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, EntryGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/entryGroup:EntryGroup default {{name}}
/// ```
class EntryGroup extends pulumi.CustomResource {
  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  late final pulumi.Output<String?> description;

  /// A short name to identify the entry group, for example, "analytics data - jan 2011".
  late final pulumi.Output<String?> displayName;

  /// The id of the entry group to create. The id must begin with a letter or underscore,
  /// contain only English letters, numbers and underscores, and be at most 64 characters.
  late final pulumi.Output<String> entryGroupId;

  /// The resource name of the entry group in URL format. Example: projects/{project}/locations/{location}/entryGroups/{entryGroupId}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// EntryGroup location region.
  late final pulumi.Output<String> region;

  /// Creates a new [EntryGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntryGroup]. {@macro pulumi_datacatalog_entry_group_entry_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntryGroup(
    String name, {
    EntryGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:datacatalog/entryGroup:EntryGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    entryGroupId = registerOutput<String>('entryGroupId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [EntryGroup] resource's state with the given [name] and [id].
  static EntryGroup get(
    String name,
    pulumi.Input<String> id, {
    EntryGroupState? state,
  }) {
    return EntryGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EntryGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:datacatalog/entryGroup:EntryGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    entryGroupId = registerOutput<String>('entryGroupId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
