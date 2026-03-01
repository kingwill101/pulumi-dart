import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_args.dart';
import 'entry_bigquery_date_sharded_spec.dart';
import 'entry_bigquery_table_spec.dart';
import 'entry_gcs_fileset_spec.dart';
import 'entry_state.dart';

/// > **Warning:** `gcp.datacatalog.Entry` is deprecated and will be removed in a future major release. Data Catalog is deprecated and will be discontinued on January 30, 2026. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// Entry Metadata. A Data Catalog Entry resource represents another resource in Google Cloud Platform
/// (such as a BigQuery dataset or a Pub/Sub topic) or outside of Google Cloud Platform. Clients can use
/// the linkedResource field in the Entry resource to refer to the original resource ID of the source system.
///
/// An Entry resource contains resource details, such as its schema. An Entry can also be used to attach
/// flexible metadata, such as a Tag.
///
///
/// To get more information about Entry, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Entry Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const entryGroup = new gcp.datacatalog.EntryGroup("entry_group", {entryGroupId: "my_group"});
/// const basicEntry = new gcp.datacatalog.Entry("basic_entry", {
///     entryGroup: entryGroup.id,
///     entryId: "my_entry",
///     userSpecifiedType: "my_custom_type",
///     userSpecifiedSystem: "SomethingExternal",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// entry_group = gcp.datacatalog.EntryGroup("entry_group", entry_group_id="my_group")
/// basic_entry = gcp.datacatalog.Entry("basic_entry",
///     entry_group=entry_group.id,
///     entry_id="my_entry",
///     user_specified_type="my_custom_type",
///     user_specified_system="SomethingExternal")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var entryGroup = new Gcp.DataCatalog.EntryGroup("entry_group", new()
///     {
///         EntryGroupId = "my_group",
///     });
///
///     var basicEntry = new Gcp.DataCatalog.Entry("basic_entry", new()
///     {
///         EntryGroup = entryGroup.Id,
///         EntryId = "my_entry",
///         UserSpecifiedType = "my_custom_type",
///         UserSpecifiedSystem = "SomethingExternal",
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
/// 		entryGroup, err := datacatalog.NewEntryGroup(ctx, "entry_group", &datacatalog.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("my_group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewEntry(ctx, "basic_entry", &datacatalog.EntryArgs{
/// 			EntryGroup:          entryGroup.ID(),
/// 			EntryId:             pulumi.String("my_entry"),
/// 			UserSpecifiedType:   pulumi.String("my_custom_type"),
/// 			UserSpecifiedSystem: pulumi.String("SomethingExternal"),
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
/// import com.pulumi.gcp.datacatalog.Entry;
/// import com.pulumi.gcp.datacatalog.EntryArgs;
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
///         var entryGroup = new EntryGroup("entryGroup", EntryGroupArgs.builder()
///             .entryGroupId("my_group")
///             .build());
///
///         var basicEntry = new Entry("basicEntry", EntryArgs.builder()
///             .entryGroup(entryGroup.id())
///             .entryId("my_entry")
///             .userSpecifiedType("my_custom_type")
///             .userSpecifiedSystem("SomethingExternal")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicEntry:
///     type: gcp:datacatalog:Entry
///     name: basic_entry
///     properties:
///       entryGroup: ${entryGroup.id}
///       entryId: my_entry
///       userSpecifiedType: my_custom_type
///       userSpecifiedSystem: SomethingExternal
///   entryGroup:
///     type: gcp:datacatalog:EntryGroup
///     name: entry_group
///     properties:
///       entryGroupId: my_group
/// ```
///
/// ### Data Catalog Entry Fileset
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const entryGroup = new gcp.datacatalog.EntryGroup("entry_group", {entryGroupId: "my_group"});
/// const basicEntry = new gcp.datacatalog.Entry("basic_entry", {
///     entryGroup: entryGroup.id,
///     entryId: "my_entry",
///     type: "FILESET",
///     gcsFilesetSpec: {
///         filePatterns: ["gs://fake_bucket/dir/*"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// entry_group = gcp.datacatalog.EntryGroup("entry_group", entry_group_id="my_group")
/// basic_entry = gcp.datacatalog.Entry("basic_entry",
///     entry_group=entry_group.id,
///     entry_id="my_entry",
///     type="FILESET",
///     gcs_fileset_spec={
///         "file_patterns": ["gs://fake_bucket/dir/*"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var entryGroup = new Gcp.DataCatalog.EntryGroup("entry_group", new()
///     {
///         EntryGroupId = "my_group",
///     });
///
///     var basicEntry = new Gcp.DataCatalog.Entry("basic_entry", new()
///     {
///         EntryGroup = entryGroup.Id,
///         EntryId = "my_entry",
///         Type = "FILESET",
///         GcsFilesetSpec = new Gcp.DataCatalog.Inputs.EntryGcsFilesetSpecArgs
///         {
///             FilePatterns = new[]
///             {
///                 "gs://fake_bucket/dir/*",
///             },
///         },
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
/// 		entryGroup, err := datacatalog.NewEntryGroup(ctx, "entry_group", &datacatalog.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("my_group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewEntry(ctx, "basic_entry", &datacatalog.EntryArgs{
/// 			EntryGroup: entryGroup.ID(),
/// 			EntryId:    pulumi.String("my_entry"),
/// 			Type:       pulumi.String("FILESET"),
/// 			GcsFilesetSpec: &datacatalog.EntryGcsFilesetSpecArgs{
/// 				FilePatterns: pulumi.StringArray{
/// 					pulumi.String("gs://fake_bucket/dir/*"),
/// 				},
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
/// import com.pulumi.gcp.datacatalog.EntryGroup;
/// import com.pulumi.gcp.datacatalog.EntryGroupArgs;
/// import com.pulumi.gcp.datacatalog.Entry;
/// import com.pulumi.gcp.datacatalog.EntryArgs;
/// import com.pulumi.gcp.datacatalog.inputs.EntryGcsFilesetSpecArgs;
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
///         var entryGroup = new EntryGroup("entryGroup", EntryGroupArgs.builder()
///             .entryGroupId("my_group")
///             .build());
///
///         var basicEntry = new Entry("basicEntry", EntryArgs.builder()
///             .entryGroup(entryGroup.id())
///             .entryId("my_entry")
///             .type("FILESET")
///             .gcsFilesetSpec(EntryGcsFilesetSpecArgs.builder()
///                 .filePatterns("gs://fake_bucket/dir/*")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicEntry:
///     type: gcp:datacatalog:Entry
///     name: basic_entry
///     properties:
///       entryGroup: ${entryGroup.id}
///       entryId: my_entry
///       type: FILESET
///       gcsFilesetSpec:
///         filePatterns:
///           - gs://fake_bucket/dir/*
///   entryGroup:
///     type: gcp:datacatalog:EntryGroup
///     name: entry_group
///     properties:
///       entryGroupId: my_group
/// ```
///
/// ### Data Catalog Entry Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const entryGroup = new gcp.datacatalog.EntryGroup("entry_group", {entryGroupId: "my_group"});
/// const basicEntry = new gcp.datacatalog.Entry("basic_entry", {
///     entryGroup: entryGroup.id,
///     entryId: "my_entry",
///     userSpecifiedType: "my_user_specified_type",
///     userSpecifiedSystem: "Something_custom",
///     linkedResource: "my/linked/resource",
///     displayName: "my custom type entry",
///     description: "a custom type entry for a user specified system",
///     schema: `{
///   \\"columns\\": [
///     {
///       \\"column\\": \\"first_name\\",
///       \\"description\\": \\"First name\\",
///       \\"mode\\": \\"REQUIRED\\",
///       \\"type\\": \\"STRING\\"
///     },
///     {
///       \\"column\\": \\"last_name\\",
///       \\"description\\": \\"Last name\\",
///       \\"mode\\": \\"REQUIRED\\",
///       \\"type\\": \\"STRING\\"
///     },
///     {
///       \\"column\\": \\"address\\",
///       \\"description\\": \\"Address\\",
///       \\"mode\\": \\"REPEATED\\",
///       \\"subcolumns\\": [
///         {
///           \\"column\\": \\"city\\",
///           \\"description\\": \\"City\\",
///           \\"mode\\": \\"NULLABLE\\",
///           \\"type\\": \\"STRING\\"
///         },
///         {
///           \\"column\\": \\"state\\",
///           \\"description\\": \\"State\\",
///           \\"mode\\": \\"NULLABLE\\",
///           \\"type\\": \\"STRING\\"
///         }
///       ],
///       \\"type\\": \\"RECORD\\"
///     }
///   ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// entry_group = gcp.datacatalog.EntryGroup("entry_group", entry_group_id="my_group")
/// basic_entry = gcp.datacatalog.Entry("basic_entry",
///     entry_group=entry_group.id,
///     entry_id="my_entry",
///     user_specified_type="my_user_specified_type",
///     user_specified_system="Something_custom",
///     linked_resource="my/linked/resource",
///     display_name="my custom type entry",
///     description="a custom type entry for a user specified system",
///     schema="""{
///   \"columns\": [
///     {
///       \"column\": \"first_name\",
///       \"description\": \"First name\",
///       \"mode\": \"REQUIRED\",
///       \"type\": \"STRING\"
///     },
///     {
///       \"column\": \"last_name\",
///       \"description\": \"Last name\",
///       \"mode\": \"REQUIRED\",
///       \"type\": \"STRING\"
///     },
///     {
///       \"column\": \"address\",
///       \"description\": \"Address\",
///       \"mode\": \"REPEATED\",
///       \"subcolumns\": [
///         {
///           \"column\": \"city\",
///           \"description\": \"City\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\"
///         },
///         {
///           \"column\": \"state\",
///           \"description\": \"State\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\"
///         }
///       ],
///       \"type\": \"RECORD\"
///     }
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var entryGroup = new Gcp.DataCatalog.EntryGroup("entry_group", new()
///     {
///         EntryGroupId = "my_group",
///     });
///
///     var basicEntry = new Gcp.DataCatalog.Entry("basic_entry", new()
///     {
///         EntryGroup = entryGroup.Id,
///         EntryId = "my_entry",
///         UserSpecifiedType = "my_user_specified_type",
///         UserSpecifiedSystem = "Something_custom",
///         LinkedResource = "my/linked/resource",
///         DisplayName = "my custom type entry",
///         Description = "a custom type entry for a user specified system",
///         Schema = @"{
///   \""columns\"": [
///     {
///       \""column\"": \""first_name\"",
///       \""description\"": \""First name\"",
///       \""mode\"": \""REQUIRED\"",
///       \""type\"": \""STRING\""
///     },
///     {
///       \""column\"": \""last_name\"",
///       \""description\"": \""Last name\"",
///       \""mode\"": \""REQUIRED\"",
///       \""type\"": \""STRING\""
///     },
///     {
///       \""column\"": \""address\"",
///       \""description\"": \""Address\"",
///       \""mode\"": \""REPEATED\"",
///       \""subcolumns\"": [
///         {
///           \""column\"": \""city\"",
///           \""description\"": \""City\"",
///           \""mode\"": \""NULLABLE\"",
///           \""type\"": \""STRING\""
///         },
///         {
///           \""column\"": \""state\"",
///           \""description\"": \""State\"",
///           \""mode\"": \""NULLABLE\"",
///           \""type\"": \""STRING\""
///         }
///       ],
///       \""type\"": \""RECORD\""
///     }
///   ]
/// }
/// ",
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
/// 		entryGroup, err := datacatalog.NewEntryGroup(ctx, "entry_group", &datacatalog.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("my_group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewEntry(ctx, "basic_entry", &datacatalog.EntryArgs{
/// 			EntryGroup:          entryGroup.ID(),
/// 			EntryId:             pulumi.String("my_entry"),
/// 			UserSpecifiedType:   pulumi.String("my_user_specified_type"),
/// 			UserSpecifiedSystem: pulumi.String("Something_custom"),
/// 			LinkedResource:      pulumi.String("my/linked/resource"),
/// 			DisplayName:         pulumi.String("my custom type entry"),
/// 			Description:         pulumi.String("a custom type entry for a user specified system"),
/// 			Schema: pulumi.String(`{
///   \"columns\": [
///     {
///       \"column\": \"first_name\",
///       \"description\": \"First name\",
///       \"mode\": \"REQUIRED\",
///       \"type\": \"STRING\"
///     },
///     {
///       \"column\": \"last_name\",
///       \"description\": \"Last name\",
///       \"mode\": \"REQUIRED\",
///       \"type\": \"STRING\"
///     },
///     {
///       \"column\": \"address\",
///       \"description\": \"Address\",
///       \"mode\": \"REPEATED\",
///       \"subcolumns\": [
///         {
///           \"column\": \"city\",
///           \"description\": \"City\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\"
///         },
///         {
///           \"column\": \"state\",
///           \"description\": \"State\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\"
///         }
///       ],
///       \"type\": \"RECORD\"
///     }
///   ]
/// }
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
/// import com.pulumi.gcp.datacatalog.EntryGroup;
/// import com.pulumi.gcp.datacatalog.EntryGroupArgs;
/// import com.pulumi.gcp.datacatalog.Entry;
/// import com.pulumi.gcp.datacatalog.EntryArgs;
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
///         var entryGroup = new EntryGroup("entryGroup", EntryGroupArgs.builder()
///             .entryGroupId("my_group")
///             .build());
///
///         var basicEntry = new Entry("basicEntry", EntryArgs.builder()
///             .entryGroup(entryGroup.id())
///             .entryId("my_entry")
///             .userSpecifiedType("my_user_specified_type")
///             .userSpecifiedSystem("Something_custom")
///             .linkedResource("my/linked/resource")
///             .displayName("my custom type entry")
///             .description("a custom type entry for a user specified system")
///             .schema("""
/// {
///   \"columns\": [
///     {
///       \"column\": \"first_name\",
///       \"description\": \"First name\",
///       \"mode\": \"REQUIRED\",
///       \"type\": \"STRING\"
///     },
///     {
///       \"column\": \"last_name\",
///       \"description\": \"Last name\",
///       \"mode\": \"REQUIRED\",
///       \"type\": \"STRING\"
///     },
///     {
///       \"column\": \"address\",
///       \"description\": \"Address\",
///       \"mode\": \"REPEATED\",
///       \"subcolumns\": [
///         {
///           \"column\": \"city\",
///           \"description\": \"City\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\"
///         },
///         {
///           \"column\": \"state\",
///           \"description\": \"State\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\"
///         }
///       ],
///       \"type\": \"RECORD\"
///     }
///   ]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicEntry:
///     type: gcp:datacatalog:Entry
///     name: basic_entry
///     properties:
///       entryGroup: ${entryGroup.id}
///       entryId: my_entry
///       userSpecifiedType: my_user_specified_type
///       userSpecifiedSystem: Something_custom
///       linkedResource: my/linked/resource
///       displayName: my custom type entry
///       description: a custom type entry for a user specified system
///       schema: |
///         {
///           \"columns\": [
///             {
///               \"column\": \"first_name\",
///               \"description\": \"First name\",
///               \"mode\": \"REQUIRED\",
///               \"type\": \"STRING\"
///             },
///             {
///               \"column\": \"last_name\",
///               \"description\": \"Last name\",
///               \"mode\": \"REQUIRED\",
///               \"type\": \"STRING\"
///             },
///             {
///               \"column\": \"address\",
///               \"description\": \"Address\",
///               \"mode\": \"REPEATED\",
///               \"subcolumns\": [
///                 {
///                   \"column\": \"city\",
///                   \"description\": \"City\",
///                   \"mode\": \"NULLABLE\",
///                   \"type\": \"STRING\"
///                 },
///                 {
///                   \"column\": \"state\",
///                   \"description\": \"State\",
///                   \"mode\": \"NULLABLE\",
///                   \"type\": \"STRING\"
///                 }
///               ],
///               \"type\": \"RECORD\"
///             }
///           ]
///         }
///   entryGroup:
///     type: gcp:datacatalog:EntryGroup
///     name: entry_group
///     properties:
///       entryGroupId: my_group
/// ```
///
///
/// ## Import
///
/// Entry can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Entry can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/entry:Entry default {{name}}
/// ```
class Entry extends pulumi.CustomResource {
  /// Specification for a group of BigQuery tables with name pattern [prefix]YYYYMMDD.
  /// Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  /// Structure is documented below.
  late final pulumi.Output<List<EntryBigqueryDateShardedSpec>> bigqueryDateShardedSpecs;
  /// Specification that applies to a BigQuery table. This is only valid on entries of type TABLE.
  /// Structure is documented below.
  late final pulumi.Output<List<EntryBigqueryTableSpec>> bigqueryTableSpecs;
  /// Entry description, which can consist of several sentences or paragraphs that describe entry contents.
  late final pulumi.Output<String?> description;
  /// Display information such as title and description. A short name to identify the entry,
  /// for example, "Analytics Data - Jan 2011".
  late final pulumi.Output<String?> displayName;
  /// The name of the entry group this entry is in.
  late final pulumi.Output<String> entryGroup;
  /// The id of the entry to create.
  late final pulumi.Output<String> entryId;
  /// Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  /// Structure is documented below.
  late final pulumi.Output<EntryGcsFilesetSpec?> gcsFilesetSpec;
  /// This field indicates the entry's source system that Data Catalog integrates with, such as BigQuery or Pub/Sub.
  late final pulumi.Output<String> integratedSystem;
  /// The resource this metadata entry refers to.
  /// For Google Cloud Platform resources, linkedResource is the full name of the resource.
  /// For example, the linkedResource for a table resource from BigQuery is:
  /// //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId
  /// Output only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,
  /// this field is optional and defaults to an empty string.
  late final pulumi.Output<String> linkedResource;
  /// The Data Catalog resource name of the entry in URL format.
  /// Example: projects/{project_id}/locations/{location}/entryGroups/{entryGroupId}/entries/{entryId}.
  /// Note that this Entry and its child resources may not actually be stored in the location in this name.
  late final pulumi.Output<String> name;
  /// Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema
  /// attached to it. See
  /// https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema
  /// for what fields this schema can contain.
  late final pulumi.Output<String?> schema;
  /// The type of the entry. Only used for Entries with types in the EntryType enum.
  /// Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType.
  /// Possible values are: `FILESET`.
  late final pulumi.Output<String?> type;
  /// This field indicates the entry's source system that Data Catalog does not integrate with.
  /// userSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,
  /// and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  late final pulumi.Output<String?> userSpecifiedSystem;
  /// Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.
  /// When creating an entry, users should check the enum values first, if nothing matches the entry
  /// to be created, then provide a custom value, for example "my_special_type".
  /// userSpecifiedType strings must begin with a letter or underscore and can only contain letters,
  /// numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  late final pulumi.Output<String?> userSpecifiedType;

  /// Creates a new [Entry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Entry]. {@macro pulumi_datacatalog_entry_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Entry(
    String name, {
    EntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/entry:Entry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigqueryDateShardedSpecs = registerOutput<List<EntryBigqueryDateShardedSpec>>('bigqueryDateShardedSpecs');
    this.bigqueryTableSpecs = registerOutput<List<EntryBigqueryTableSpec>>('bigqueryTableSpecs');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.entryGroup = registerOutput<String>('entryGroup');
    this.entryId = registerOutput<String>('entryId');
    this.gcsFilesetSpec = registerOutput<EntryGcsFilesetSpec?>('gcsFilesetSpec');
    this.integratedSystem = registerOutput<String>('integratedSystem');
    this.linkedResource = registerOutput<String>('linkedResource');
    this.name = registerOutput<String>('name');
    this.schema = registerOutput<String?>('schema');
    this.type = registerOutput<String?>('type');
    this.userSpecifiedSystem = registerOutput<String?>('userSpecifiedSystem');
    this.userSpecifiedType = registerOutput<String?>('userSpecifiedType');
  }

  /// Gets an existing [Entry] resource's state with the given [name] and [id].
  static Entry get(
    String name,
    pulumi.Input<String> id, {
    EntryState? state,
  }) {
    return Entry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Entry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/entry:Entry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigqueryDateShardedSpecs = registerOutput<List<EntryBigqueryDateShardedSpec>>('bigqueryDateShardedSpecs');
    this.bigqueryTableSpecs = registerOutput<List<EntryBigqueryTableSpec>>('bigqueryTableSpecs');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.entryGroup = registerOutput<String>('entryGroup');
    this.entryId = registerOutput<String>('entryId');
    this.gcsFilesetSpec = registerOutput<EntryGcsFilesetSpec?>('gcsFilesetSpec');
    this.integratedSystem = registerOutput<String>('integratedSystem');
    this.linkedResource = registerOutput<String>('linkedResource');
    this.name = registerOutput<String>('name');
    this.schema = registerOutput<String?>('schema');
    this.type = registerOutput<String?>('type');
    this.userSpecifiedSystem = registerOutput<String?>('userSpecifiedSystem');
    this.userSpecifiedType = registerOutput<String?>('userSpecifiedType');
  }
}
