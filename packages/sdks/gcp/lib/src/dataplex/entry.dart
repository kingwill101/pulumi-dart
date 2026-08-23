import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_args.dart';
import 'entry_entry_source.dart';
import 'entry_state.dart';

/// An entry represents a data asset for which you capture metadata, such as a BigQuery table.
/// The primary constituents of an entry are aspects, which provide thematically coherent information.
/// Examples include a table's schema, sensitive data protection profile, data quality information, or a simple tag.
///
/// **Important Considerations:**
///
/// * There is a limit of 99 aspects per entry.
/// * The entry resource has to use project numbers and not project IDs. Therefore, if
/// a dependency was already provisioned using project ID, it needs to be referenced explicitly as a resource name
/// containing the project number.
///
///
/// To get more information about Entry, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.entryGroups.entries)
/// * How-to Guides
/// * [Manage entries and ingest custom sources](https://cloud.google.com/dataplex/docs/ingest-custom-sources)
///
/// ## Example Usage
///
/// ### Dataplex Entry Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const entry_group_basic = new gcp.dataplex.EntryGroup("entry-group-basic", {
///     entryGroupId: "entry-group-basic",
///     project: "1111111111111",
///     location: "us-central1",
/// });
/// const entry_type_basic = new gcp.dataplex.EntryType("entry-type-basic", {
///     entryTypeId: "entry-type-basic",
///     project: "1111111111111",
///     location: "us-central1",
/// });
/// const testBasic = new gcp.dataplex.Entry("test_basic", {
///     entryGroupId: entry_group_basic.entryGroupId,
///     project: "1111111111111",
///     location: "us-central1",
///     entryId: "entry-basic",
///     entryType: entry_type_basic.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// entry_group_basic = gcp.dataplex.EntryGroup("entry-group-basic",
///     entry_group_id="entry-group-basic",
///     project="1111111111111",
///     location="us-central1")
/// entry_type_basic = gcp.dataplex.EntryType("entry-type-basic",
///     entry_type_id="entry-type-basic",
///     project="1111111111111",
///     location="us-central1")
/// test_basic = gcp.dataplex.Entry("test_basic",
///     entry_group_id=entry_group_basic.entry_group_id,
///     project="1111111111111",
///     location="us-central1",
///     entry_id="entry-basic",
///     entry_type=entry_type_basic.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var entry_group_basic = new Gcp.DataPlex.EntryGroup("entry-group-basic", new()
///     {
///         EntryGroupId = "entry-group-basic",
///         Project = "1111111111111",
///         Location = "us-central1",
///     });
///
///     var entry_type_basic = new Gcp.DataPlex.EntryType("entry-type-basic", new()
///     {
///         EntryTypeId = "entry-type-basic",
///         Project = "1111111111111",
///         Location = "us-central1",
///     });
///
///     var testBasic = new Gcp.DataPlex.Entry("test_basic", new()
///     {
///         EntryGroupId = entry_group_basic.EntryGroupId,
///         Project = "1111111111111",
///         Location = "us-central1",
///         EntryId = "entry-basic",
///         EntryType = entry_type_basic.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		entry_group_basic, err := dataplex.NewEntryGroup(ctx, "entry-group-basic", &dataplex.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("entry-group-basic"),
/// 			Project:      pulumi.String("1111111111111"),
/// 			Location:     pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		entry_type_basic, err := dataplex.NewEntryType(ctx, "entry-type-basic", &dataplex.EntryTypeArgs{
/// 			EntryTypeId: pulumi.String("entry-type-basic"),
/// 			Project:     pulumi.String("1111111111111"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewEntry(ctx, "test_basic", &dataplex.EntryArgs{
/// 			EntryGroupId: entry_group_basic.EntryGroupId,
/// 			Project:      pulumi.String("1111111111111"),
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryId:      pulumi.String("entry-basic"),
/// 			EntryType:    entry_type_basic.Name,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_dataplex_entrygroup" "entry-group-basic" {
///   entry_group_id = "entry-group-basic"
///   project        = "1111111111111"
///   location       = "us-central1"
/// }
/// resource "gcp_dataplex_entrytype" "entry-type-basic" {
///   entry_type_id = "entry-type-basic"
///   project       = "1111111111111"
///   location      = "us-central1"
/// }
/// resource "gcp_dataplex_entry" "test_basic" {
///   entry_group_id = gcp_dataplex_entrygroup.entry-group-basic.entry_group_id
///   project        = "1111111111111"
///   location       = "us-central1"
///   entry_id       = "entry-basic"
///   entry_type     = gcp_dataplex_entrytype.entry-type-basic.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
/// import com.pulumi.gcp.dataplex.EntryType;
/// import com.pulumi.gcp.dataplex.EntryTypeArgs;
/// import com.pulumi.gcp.dataplex.Entry;
/// import com.pulumi.gcp.dataplex.EntryArgs;
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
///         var entry_group_basic = new EntryGroup("entry-group-basic", EntryGroupArgs.builder()
///             .entryGroupId("entry-group-basic")
///             .project("1111111111111")
///             .location("us-central1")
///             .build());
///
///         var entry_type_basic = new EntryType("entry-type-basic", EntryTypeArgs.builder()
///             .entryTypeId("entry-type-basic")
///             .project("1111111111111")
///             .location("us-central1")
///             .build());
///
///         var testBasic = new Entry("testBasic", EntryArgs.builder()
///             .entryGroupId(entry_group_basic.entryGroupId())
///             .project("1111111111111")
///             .location("us-central1")
///             .entryId("entry-basic")
///             .entryType(entry_type_basic.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   entry-group-basic:
///     type: gcp:dataplex:EntryGroup
///     properties:
///       entryGroupId: entry-group-basic
///       project: '1111111111111'
///       location: us-central1
///   entry-type-basic:
///     type: gcp:dataplex:EntryType
///     properties:
///       entryTypeId: entry-type-basic
///       project: '1111111111111'
///       location: us-central1
///   testBasic:
///     type: gcp:dataplex:Entry
///     name: test_basic
///     properties:
///       entryGroupId: ${["entry-group-basic"].entryGroupId}
///       project: '1111111111111'
///       location: us-central1
///       entryId: entry-basic
///       entryType: ${["entry-type-basic"].name}
/// ```
///
/// ### Dataplex Entry Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const aspect_type_full_one = new gcp.dataplex.AspectType("aspect-type-full-one", {
///     aspectTypeId: "aspect-type-full-one",
///     location: "us-central1",
///     project: "1111111111111",
///     metadataTemplate: `{
///   \\"name\\": \\"tf-test-template\\",
///   \\"type\\": \\"record\\",
///   \\"recordFields\\": [
///     {
///       \\"name\\": \\"type\\",
///       \\"type\\": \\"enum\\",
///       \\"annotations\\": {
///         \\"displayName\\": \\"Type\\",
///         \\"description\\": \\"Specifies the type of view represented by the entry.\\"
///       },
///       \\"index\\": 1,
///       \\"constraints\\": {
///         \\"required\\": true
///       },
///       \\"enumValues\\": [
///         {
///           \\"name\\": \\"VIEW\\",
///           \\"index\\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `,
/// });
/// const aspect_type_full_two = new gcp.dataplex.AspectType("aspect-type-full-two", {
///     aspectTypeId: "aspect-type-full-two",
///     location: "us-central1",
///     project: "1111111111111",
///     metadataTemplate: `{
///   \\"name\\": \\"tf-test-template\\",
///   \\"type\\": \\"record\\",
///   \\"recordFields\\": [
///     {
///       \\"name\\": \\"story\\",
///       \\"type\\": \\"enum\\",
///       \\"annotations\\": {
///         \\"displayName\\": \\"Story\\",
///         \\"description\\": \\"Specifies the story of an entry.\\"
///       },
///       \\"index\\": 1,
///       \\"constraints\\": {
///         \\"required\\": true
///       },
///       \\"enumValues\\": [
///         {
///           \\"name\\": \\"SEQUENCE\\",
///           \\"index\\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `,
/// });
/// const entry_group_full = new gcp.dataplex.EntryGroup("entry-group-full", {
///     entryGroupId: "entry-group-full",
///     project: "1111111111111",
///     location: "us-central1",
/// });
/// const entry_type_full = new gcp.dataplex.EntryType("entry-type-full", {
///     entryTypeId: "entry-type-full",
///     project: "1111111111111",
///     location: "us-central1",
///     requiredAspects: [{
///         type: aspect_type_full_one.name,
///     }],
/// });
/// const testEntryFull = new gcp.dataplex.Entry("test_entry_full", {
///     entryGroupId: entry_group_full.entryGroupId,
///     project: "1111111111111",
///     location: "us-central1",
///     entryId: "entry-full/has/slashes",
///     entryType: entry_type_full.name,
///     fullyQualifiedName: "bigquery:1111111111111.test-dataset",
///     parentEntry: "projects/1111111111111/locations/us-central1/entryGroups/entry-group-full/entries/some-other-entry",
///     entrySource: {
///         resource: "bigquery:1111111111111.test-dataset",
///         system: "System III",
///         platform: "BigQuery",
///         displayName: "Human readable name",
///         description: "Description from source system",
///         labels: {
///             "some-label": "some-value",
///         },
///         ancestors: [
///             {
///                 name: "ancestor-one",
///                 type: "type-one",
///             },
///             {
///                 name: "ancestor-two",
///                 type: "type-two",
///             },
///         ],
///         createTime: "2023-08-03T19:19:00.094Z",
///         updateTime: "2023-08-03T20:19:00.094Z",
///     },
///     aspects: [
///         {
///             aspectKey: "1111111111111.us-central1.aspect-type-full-one",
///             aspect: {
///                 data: "          {\\\"type\\\": \\\"VIEW\\\"    }\n",
///             },
///         },
///         {
///             aspectKey: "1111111111111.us-central1.aspect-type-full-two",
///             aspect: {
///                 data: "          {\\\"story\\\": \\\"SEQUENCE\\\"    }\n",
///             },
///         },
///     ],
/// }, {
///     dependsOn: [
///         aspect_type_full_two,
///         aspect_type_full_one,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// aspect_type_full_one = gcp.dataplex.AspectType("aspect-type-full-one",
///     aspect_type_id="aspect-type-full-one",
///     location="us-central1",
///     project="1111111111111",
///     metadata_template="""{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"type\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Type\",
///         \"description\": \"Specifies the type of view represented by the entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"VIEW\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// """)
/// aspect_type_full_two = gcp.dataplex.AspectType("aspect-type-full-two",
///     aspect_type_id="aspect-type-full-two",
///     location="us-central1",
///     project="1111111111111",
///     metadata_template="""{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"story\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Story\",
///         \"description\": \"Specifies the story of an entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"SEQUENCE\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// """)
/// entry_group_full = gcp.dataplex.EntryGroup("entry-group-full",
///     entry_group_id="entry-group-full",
///     project="1111111111111",
///     location="us-central1")
/// entry_type_full = gcp.dataplex.EntryType("entry-type-full",
///     entry_type_id="entry-type-full",
///     project="1111111111111",
///     location="us-central1",
///     required_aspects=[{
///         "type": aspect_type_full_one.name,
///     }])
/// test_entry_full = gcp.dataplex.Entry("test_entry_full",
///     entry_group_id=entry_group_full.entry_group_id,
///     project="1111111111111",
///     location="us-central1",
///     entry_id="entry-full/has/slashes",
///     entry_type=entry_type_full.name,
///     fully_qualified_name="bigquery:1111111111111.test-dataset",
///     parent_entry="projects/1111111111111/locations/us-central1/entryGroups/entry-group-full/entries/some-other-entry",
///     entry_source={
///         "resource": "bigquery:1111111111111.test-dataset",
///         "system": "System III",
///         "platform": "BigQuery",
///         "display_name": "Human readable name",
///         "description": "Description from source system",
///         "labels": {
///             "some-label": "some-value",
///         },
///         "ancestors": [
///             {
///                 "name": "ancestor-one",
///                 "type": "type-one",
///             },
///             {
///                 "name": "ancestor-two",
///                 "type": "type-two",
///             },
///         ],
///         "create_time": "2023-08-03T19:19:00.094Z",
///         "update_time": "2023-08-03T20:19:00.094Z",
///     },
///     aspects=[
///         {
///             "aspect_key": "1111111111111.us-central1.aspect-type-full-one",
///             "aspect": {
///                 "data": "          {\\\"type\\\": \\\"VIEW\\\"    }\n",
///             },
///         },
///         {
///             "aspect_key": "1111111111111.us-central1.aspect-type-full-two",
///             "aspect": {
///                 "data": "          {\\\"story\\\": \\\"SEQUENCE\\\"    }\n",
///             },
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[
///             aspect_type_full_two,
///             aspect_type_full_one,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var aspect_type_full_one = new Gcp.DataPlex.AspectType("aspect-type-full-one", new()
///     {
///         AspectTypeId = "aspect-type-full-one",
///         Location = "us-central1",
///         Project = "1111111111111",
///         MetadataTemplate = @"{
///   \""name\"": \""tf-test-template\"",
///   \""type\"": \""record\"",
///   \""recordFields\"": [
///     {
///       \""name\"": \""type\"",
///       \""type\"": \""enum\"",
///       \""annotations\"": {
///         \""displayName\"": \""Type\"",
///         \""description\"": \""Specifies the type of view represented by the entry.\""
///       },
///       \""index\"": 1,
///       \""constraints\"": {
///         \""required\"": true
///       },
///       \""enumValues\"": [
///         {
///           \""name\"": \""VIEW\"",
///           \""index\"": 1
///         }
///       ]
///     }
///   ]
/// }
/// ",
///     });
///
///     var aspect_type_full_two = new Gcp.DataPlex.AspectType("aspect-type-full-two", new()
///     {
///         AspectTypeId = "aspect-type-full-two",
///         Location = "us-central1",
///         Project = "1111111111111",
///         MetadataTemplate = @"{
///   \""name\"": \""tf-test-template\"",
///   \""type\"": \""record\"",
///   \""recordFields\"": [
///     {
///       \""name\"": \""story\"",
///       \""type\"": \""enum\"",
///       \""annotations\"": {
///         \""displayName\"": \""Story\"",
///         \""description\"": \""Specifies the story of an entry.\""
///       },
///       \""index\"": 1,
///       \""constraints\"": {
///         \""required\"": true
///       },
///       \""enumValues\"": [
///         {
///           \""name\"": \""SEQUENCE\"",
///           \""index\"": 1
///         }
///       ]
///     }
///   ]
/// }
/// ",
///     });
///
///     var entry_group_full = new Gcp.DataPlex.EntryGroup("entry-group-full", new()
///     {
///         EntryGroupId = "entry-group-full",
///         Project = "1111111111111",
///         Location = "us-central1",
///     });
///
///     var entry_type_full = new Gcp.DataPlex.EntryType("entry-type-full", new()
///     {
///         EntryTypeId = "entry-type-full",
///         Project = "1111111111111",
///         Location = "us-central1",
///         RequiredAspects = new[]
///         {
///             new Gcp.DataPlex.Inputs.EntryTypeRequiredAspectArgs
///             {
///                 Type = aspect_type_full_one.Name,
///             },
///         },
///     });
///
///     var testEntryFull = new Gcp.DataPlex.Entry("test_entry_full", new()
///     {
///         EntryGroupId = entry_group_full.EntryGroupId,
///         Project = "1111111111111",
///         Location = "us-central1",
///         EntryId = "entry-full/has/slashes",
///         EntryType = entry_type_full.Name,
///         FullyQualifiedName = "bigquery:1111111111111.test-dataset",
///         ParentEntry = "projects/1111111111111/locations/us-central1/entryGroups/entry-group-full/entries/some-other-entry",
///         EntrySource = new Gcp.DataPlex.Inputs.EntryEntrySourceArgs
///         {
///             Resource = "bigquery:1111111111111.test-dataset",
///             System = "System III",
///             Platform = "BigQuery",
///             DisplayName = "Human readable name",
///             Description = "Description from source system",
///             Labels =
///             {
///                 { "some-label", "some-value" },
///             },
///             Ancestors = new[]
///             {
///                 new Gcp.DataPlex.Inputs.EntryEntrySourceAncestorArgs
///                 {
///                     Name = "ancestor-one",
///                     Type = "type-one",
///                 },
///                 new Gcp.DataPlex.Inputs.EntryEntrySourceAncestorArgs
///                 {
///                     Name = "ancestor-two",
///                     Type = "type-two",
///                 },
///             },
///             CreateTime = "2023-08-03T19:19:00.094Z",
///             UpdateTime = "2023-08-03T20:19:00.094Z",
///         },
///         Aspects = new[]
///         {
///             new Gcp.DataPlex.Inputs.EntryAspectArgs
///             {
///                 AspectKey = "1111111111111.us-central1.aspect-type-full-one",
///                 Aspect = new Gcp.DataPlex.Inputs.EntryAspectAspectArgs
///                 {
///                     Data = @"          {\""type\"": \""VIEW\""    }
/// ",
///                 },
///             },
///             new Gcp.DataPlex.Inputs.EntryAspectArgs
///             {
///                 AspectKey = "1111111111111.us-central1.aspect-type-full-two",
///                 Aspect = new Gcp.DataPlex.Inputs.EntryAspectAspectArgs
///                 {
///                     Data = @"          {\""story\"": \""SEQUENCE\""    }
/// ",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             aspect_type_full_two,
///             aspect_type_full_one,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		aspect_type_full_one, err := dataplex.NewAspectType(ctx, "aspect-type-full-one", &dataplex.AspectTypeArgs{
/// 			AspectTypeId: pulumi.String("aspect-type-full-one"),
/// 			Location:     pulumi.String("us-central1"),
/// 			Project:      pulumi.String("1111111111111"),
/// 			MetadataTemplate: pulumi.String(`{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"type\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Type\",
///         \"description\": \"Specifies the type of view represented by the entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"VIEW\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		aspect_type_full_two, err := dataplex.NewAspectType(ctx, "aspect-type-full-two", &dataplex.AspectTypeArgs{
/// 			AspectTypeId: pulumi.String("aspect-type-full-two"),
/// 			Location:     pulumi.String("us-central1"),
/// 			Project:      pulumi.String("1111111111111"),
/// 			MetadataTemplate: pulumi.String(`{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"story\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Story\",
///         \"description\": \"Specifies the story of an entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"SEQUENCE\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		entry_group_full, err := dataplex.NewEntryGroup(ctx, "entry-group-full", &dataplex.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("entry-group-full"),
/// 			Project:      pulumi.String("1111111111111"),
/// 			Location:     pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		entry_type_full, err := dataplex.NewEntryType(ctx, "entry-type-full", &dataplex.EntryTypeArgs{
/// 			EntryTypeId: pulumi.String("entry-type-full"),
/// 			Project:     pulumi.String("1111111111111"),
/// 			Location:    pulumi.String("us-central1"),
/// 			RequiredAspects: dataplex.EntryTypeRequiredAspectArray{
/// 				&dataplex.EntryTypeRequiredAspectArgs{
/// 					Type: aspect_type_full_one.Name,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewEntry(ctx, "test_entry_full", &dataplex.EntryArgs{
/// 			EntryGroupId:       entry_group_full.EntryGroupId,
/// 			Project:            pulumi.String("1111111111111"),
/// 			Location:           pulumi.String("us-central1"),
/// 			EntryId:            pulumi.String("entry-full/has/slashes"),
/// 			EntryType:          entry_type_full.Name,
/// 			FullyQualifiedName: pulumi.String("bigquery:1111111111111.test-dataset"),
/// 			ParentEntry:        pulumi.String("projects/1111111111111/locations/us-central1/entryGroups/entry-group-full/entries/some-other-entry"),
/// 			EntrySource: &dataplex.EntryEntrySourceArgs{
/// 				Resource:    pulumi.String("bigquery:1111111111111.test-dataset"),
/// 				System:      pulumi.String("System III"),
/// 				Platform:    pulumi.String("BigQuery"),
/// 				DisplayName: pulumi.String("Human readable name"),
/// 				Description: pulumi.String("Description from source system"),
/// 				Labels: pulumi.StringMap{
/// 					"some-label": pulumi.String("some-value"),
/// 				},
/// 				Ancestors: dataplex.EntryEntrySourceAncestorArray{
/// 					&dataplex.EntryEntrySourceAncestorArgs{
/// 						Name: pulumi.String("ancestor-one"),
/// 						Type: pulumi.String("type-one"),
/// 					},
/// 					&dataplex.EntryEntrySourceAncestorArgs{
/// 						Name: pulumi.String("ancestor-two"),
/// 						Type: pulumi.String("type-two"),
/// 					},
/// 				},
/// 				CreateTime: pulumi.String("2023-08-03T19:19:00.094Z"),
/// 				UpdateTime: pulumi.String("2023-08-03T20:19:00.094Z"),
/// 			},
/// 			Aspects: dataplex.EntryAspectArray{
/// 				&dataplex.EntryAspectArgs{
/// 					AspectKey: pulumi.String("1111111111111.us-central1.aspect-type-full-one"),
/// 					Aspect: &dataplex.EntryAspectAspectArgs{
/// 						Data: pulumi.String("          {\\\"type\\\": \\\"VIEW\\\"    }\n"),
/// 					},
/// 				},
/// 				&dataplex.EntryAspectArgs{
/// 					AspectKey: pulumi.String("1111111111111.us-central1.aspect-type-full-two"),
/// 					Aspect: &dataplex.EntryAspectAspectArgs{
/// 						Data: pulumi.String("          {\\\"story\\\": \\\"SEQUENCE\\\"    }\n"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			aspect_type_full_two,
/// 			aspect_type_full_one,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_dataplex_aspecttype" "aspect-type-full-one" {
///   aspect_type_id    = "aspect-type-full-one"
///   location          = "us-central1"
///   project           = "1111111111111"
///   metadata_template = "{\n  \\\"name\\\": \\\"tf-test-template\\\",\n  \\\"type\\\": \\\"record\\\",\n  \\\"recordFields\\\": [\n    {\n      \\\"name\\\": \\\"type\\\",\n      \\\"type\\\": \\\"enum\\\",\n      \\\"annotations\\\": {\n        \\\"displayName\\\": \\\"Type\\\",\n        \\\"description\\\": \\\"Specifies the type of view represented by the entry.\\\"\n      },\n      \\\"index\\\": 1,\n      \\\"constraints\\\": {\n        \\\"required\\\": true\n      },\n      \\\"enumValues\\\": [\n        {\n          \\\"name\\\": \\\"VIEW\\\",\n          \\\"index\\\": 1\n        }\n      ]\n    }\n  ]\n}\n"
/// }
/// resource "gcp_dataplex_aspecttype" "aspect-type-full-two" {
///   aspect_type_id    = "aspect-type-full-two"
///   location          = "us-central1"
///   project           = "1111111111111"
///   metadata_template = "{\n  \\\"name\\\": \\\"tf-test-template\\\",\n  \\\"type\\\": \\\"record\\\",\n  \\\"recordFields\\\": [\n    {\n      \\\"name\\\": \\\"story\\\",\n      \\\"type\\\": \\\"enum\\\",\n      \\\"annotations\\\": {\n        \\\"displayName\\\": \\\"Story\\\",\n        \\\"description\\\": \\\"Specifies the story of an entry.\\\"\n      },\n      \\\"index\\\": 1,\n      \\\"constraints\\\": {\n        \\\"required\\\": true\n      },\n      \\\"enumValues\\\": [\n        {\n          \\\"name\\\": \\\"SEQUENCE\\\",\n          \\\"index\\\": 1\n        }\n      ]\n    }\n  ]\n}\n"
/// }
/// resource "gcp_dataplex_entrygroup" "entry-group-full" {
///   entry_group_id = "entry-group-full"
///   project        = "1111111111111"
///   location       = "us-central1"
/// }
/// resource "gcp_dataplex_entrytype" "entry-type-full" {
///   entry_type_id = "entry-type-full"
///   project       = "1111111111111"
///   location      = "us-central1"
///   required_aspects {
///     type = gcp_dataplex_aspecttype.aspect-type-full-one.name
///   }
/// }
/// resource "gcp_dataplex_entry" "test_entry_full" {
///   depends_on           = [gcp_dataplex_aspecttype.aspect-type-full-two, gcp_dataplex_aspecttype.aspect-type-full-one]
///   entry_group_id       = gcp_dataplex_entrygroup.entry-group-full.entry_group_id
///   project              = "1111111111111"
///   location             = "us-central1"
///   entry_id             = "entry-full/has/slashes"
///   entry_type           = gcp_dataplex_entrytype.entry-type-full.name
///   fully_qualified_name = "bigquery:1111111111111.test-dataset"
///   parent_entry         = "projects/1111111111111/locations/us-central1/entryGroups/entry-group-full/entries/some-other-entry"
///   entry_source = {
///     resource     = "bigquery:1111111111111.test-dataset"
///     system       = "System III"
///     platform     = "BigQuery"
///     display_name = "Human readable name"
///     description  = "Description from source system"
///     labels = {
///       "some-label" = "some-value"
///     }
///     ancestors = [{
///       "name" = "ancestor-one"
///       "type" = "type-one"
///       }, {
///       "name" = "ancestor-two"
///       "type" = "type-two"
///     }]
///     create_time = "2023-08-03T19:19:00.094Z"
///     update_time = "2023-08-03T20:19:00.094Z"
///   }
///   aspects {
///     aspect_key = "1111111111111.us-central1.aspect-type-full-one"
///     aspect = {
///       data = "          {\\\"type\\\": \\\"VIEW\\\"    }\n"
///     }
///   }
///   aspects {
///     aspect_key = "1111111111111.us-central1.aspect-type-full-two"
///     aspect = {
///       data = "          {\\\"story\\\": \\\"SEQUENCE\\\"    }\n"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.AspectType;
/// import com.pulumi.gcp.dataplex.AspectTypeArgs;
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
/// import com.pulumi.gcp.dataplex.EntryType;
/// import com.pulumi.gcp.dataplex.EntryTypeArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryTypeRequiredAspectArgs;
/// import com.pulumi.gcp.dataplex.Entry;
/// import com.pulumi.gcp.dataplex.EntryArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryEntrySourceArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryEntrySourceAncestorArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectAspectArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var aspect_type_full_one = new AspectType("aspect-type-full-one", AspectTypeArgs.builder()
///             .aspectTypeId("aspect-type-full-one")
///             .location("us-central1")
///             .project("1111111111111")
///             .metadataTemplate("""
/// {
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"type\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Type\",
///         \"description\": \"Specifies the type of view represented by the entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"VIEW\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
///             """)
///             .build());
///
///         var aspect_type_full_two = new AspectType("aspect-type-full-two", AspectTypeArgs.builder()
///             .aspectTypeId("aspect-type-full-two")
///             .location("us-central1")
///             .project("1111111111111")
///             .metadataTemplate("""
/// {
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"story\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Story\",
///         \"description\": \"Specifies the story of an entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"SEQUENCE\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
///             """)
///             .build());
///
///         var entry_group_full = new EntryGroup("entry-group-full", EntryGroupArgs.builder()
///             .entryGroupId("entry-group-full")
///             .project("1111111111111")
///             .location("us-central1")
///             .build());
///
///         var entry_type_full = new EntryType("entry-type-full", EntryTypeArgs.builder()
///             .entryTypeId("entry-type-full")
///             .project("1111111111111")
///             .location("us-central1")
///             .requiredAspects(EntryTypeRequiredAspectArgs.builder()
///                 .type(aspect_type_full_one.name())
///                 .build())
///             .build());
///
///         var testEntryFull = new Entry("testEntryFull", EntryArgs.builder()
///             .entryGroupId(entry_group_full.entryGroupId())
///             .project("1111111111111")
///             .location("us-central1")
///             .entryId("entry-full/has/slashes")
///             .entryType(entry_type_full.name())
///             .fullyQualifiedName("bigquery:1111111111111.test-dataset")
///             .parentEntry("projects/1111111111111/locations/us-central1/entryGroups/entry-group-full/entries/some-other-entry")
///             .entrySource(EntryEntrySourceArgs.builder()
///                 .resource("bigquery:1111111111111.test-dataset")
///                 .system("System III")
///                 .platform("BigQuery")
///                 .displayName("Human readable name")
///                 .description("Description from source system")
///                 .labels(Map.of("some-label", "some-value"))
///                 .ancestors(
///                     EntryEntrySourceAncestorArgs.builder()
///                         .name("ancestor-one")
///                         .type("type-one")
///                         .build(),
///                     EntryEntrySourceAncestorArgs.builder()
///                         .name("ancestor-two")
///                         .type("type-two")
///                         .build())
///                 .createTime("2023-08-03T19:19:00.094Z")
///                 .updateTime("2023-08-03T20:19:00.094Z")
///                 .build())
///             .aspects(
///                 EntryAspectArgs.builder()
///                     .aspectKey("1111111111111.us-central1.aspect-type-full-one")
///                     .aspect(EntryAspectAspectArgs.builder()
///                         .data("""
///           {\"type\": \"VIEW\"    }
///                         """)
///                         .build())
///                     .build(),
///                 EntryAspectArgs.builder()
///                     .aspectKey("1111111111111.us-central1.aspect-type-full-two")
///                     .aspect(EntryAspectAspectArgs.builder()
///                         .data("""
///           {\"story\": \"SEQUENCE\"    }
///                         """)
///                         .build())
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     aspect_type_full_two,
///                     aspect_type_full_one)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   aspect-type-full-one:
///     type: gcp:dataplex:AspectType
///     properties:
///       aspectTypeId: aspect-type-full-one
///       location: us-central1
///       project: '1111111111111'
///       metadataTemplate: |
///         {
///           \"name\": \"tf-test-template\",
///           \"type\": \"record\",
///           \"recordFields\": [
///             {
///               \"name\": \"type\",
///               \"type\": \"enum\",
///               \"annotations\": {
///                 \"displayName\": \"Type\",
///                 \"description\": \"Specifies the type of view represented by the entry.\"
///               },
///               \"index\": 1,
///               \"constraints\": {
///                 \"required\": true
///               },
///               \"enumValues\": [
///                 {
///                   \"name\": \"VIEW\",
///                   \"index\": 1
///                 }
///               ]
///             }
///           ]
///         }
///   aspect-type-full-two:
///     type: gcp:dataplex:AspectType
///     properties:
///       aspectTypeId: aspect-type-full-two
///       location: us-central1
///       project: '1111111111111'
///       metadataTemplate: |
///         {
///           \"name\": \"tf-test-template\",
///           \"type\": \"record\",
///           \"recordFields\": [
///             {
///               \"name\": \"story\",
///               \"type\": \"enum\",
///               \"annotations\": {
///                 \"displayName\": \"Story\",
///                 \"description\": \"Specifies the story of an entry.\"
///               },
///               \"index\": 1,
///               \"constraints\": {
///                 \"required\": true
///               },
///               \"enumValues\": [
///                 {
///                   \"name\": \"SEQUENCE\",
///                   \"index\": 1
///                 }
///               ]
///             }
///           ]
///         }
///   entry-group-full:
///     type: gcp:dataplex:EntryGroup
///     properties:
///       entryGroupId: entry-group-full
///       project: '1111111111111'
///       location: us-central1
///   entry-type-full:
///     type: gcp:dataplex:EntryType
///     properties:
///       entryTypeId: entry-type-full
///       project: '1111111111111'
///       location: us-central1
///       requiredAspects:
///         - type: ${["aspect-type-full-one"].name}
///   testEntryFull:
///     type: gcp:dataplex:Entry
///     name: test_entry_full
///     properties:
///       entryGroupId: ${["entry-group-full"].entryGroupId}
///       project: '1111111111111'
///       location: us-central1
///       entryId: entry-full/has/slashes
///       entryType: ${["entry-type-full"].name}
///       fullyQualifiedName: bigquery:1111111111111.test-dataset
///       parentEntry: projects/1111111111111/locations/us-central1/entryGroups/entry-group-full/entries/some-other-entry
///       entrySource:
///         resource: bigquery:1111111111111.test-dataset
///         system: System III
///         platform: BigQuery
///         displayName: Human readable name
///         description: Description from source system
///         labels:
///           some-label: some-value
///         ancestors:
///           - name: ancestor-one
///             type: type-one
///           - name: ancestor-two
///             type: type-two
///         createTime: 2023-08-03T19:19:00.094Z
///         updateTime: 2023-08-03T20:19:00.094Z
///       aspects:
///         - aspectKey: 1111111111111.us-central1.aspect-type-full-one
///           aspect:
///             data: |2
///                         {\"type\": \"VIEW\"    }
///         - aspectKey: 1111111111111.us-central1.aspect-type-full-two
///           aspect:
///             data: |2
///                         {\"story\": \"SEQUENCE\"    }
///     options:
///       dependsOn:
///         - ${["aspect-type-full-two"]}
///         - ${["aspect-type-full-one"]}
/// ```
///
/// ### Dataplex Entry Bigquery Table
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const aspect_type_full_one = new gcp.dataplex.AspectType("aspect-type-full-one", {
///     aspectTypeId: "aspect-type-one",
///     location: "us-central1",
///     project: "1111111111111",
///     metadataTemplate: `{
///   \\"name\\": \\"tf-test-template\\",
///   \\"type\\": \\"record\\",
///   \\"recordFields\\": [
///     {
///       \\"name\\": \\"type\\",
///       \\"type\\": \\"enum\\",
///       \\"annotations\\": {
///         \\"displayName\\": \\"Type\\",
///         \\"description\\": \\"Specifies the type of view represented by the entry.\\"
///       },
///       \\"index\\": 1,
///       \\"constraints\\": {
///         \\"required\\": true
///       },
///       \\"enumValues\\": [
///         {
///           \\"name\\": \\"VIEW\\",
///           \\"index\\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `,
/// });
/// const aspect_type_full_two = new gcp.dataplex.AspectType("aspect-type-full-two", {
///     aspectTypeId: "aspect-type-two",
///     location: "us-central1",
///     project: "1111111111111",
///     metadataTemplate: `{
///   \\"name\\": \\"tf-test-template\\",
///   \\"type\\": \\"record\\",
///   \\"recordFields\\": [
///     {
///       \\"name\\": \\"story\\",
///       \\"type\\": \\"enum\\",
///       \\"annotations\\": {
///         \\"displayName\\": \\"Story\\",
///         \\"description\\": \\"Specifies the story of an entry.\\"
///       },
///       \\"index\\": 1,
///       \\"constraints\\": {
///         \\"required\\": true
///       },
///       \\"enumValues\\": [
///         {
///           \\"name\\": \\"SEQUENCE\\",
///           \\"index\\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `,
/// });
/// const example_dataset = new gcp.bigquery.Dataset("example-dataset", {
///     datasetId: "dataset_basic",
///     friendlyName: "Example Dataset",
///     location: "us-central1",
///     deleteContentsOnDestroy: true,
/// });
/// const example_table = new gcp.bigquery.Table("example-table", {
///     datasetId: example_dataset.datasetId,
///     tableId: "table-basic",
///     deletionProtection: false,
///     schema: JSON.stringify([
///         {
///             name: "event_time",
///             type: "TIMESTAMP",
///             mode: "REQUIRED",
///         },
///         {
///             name: "user_id",
///             type: "STRING",
///             mode: "NULLABLE",
///         },
///         {
///             name: "event_type",
///             type: "STRING",
///             mode: "NULLABLE",
///         },
///     ]),
/// });
/// const tfTestTable = new gcp.dataplex.Entry("tf_test_table", {
///     entryGroupId: "@bigquery",
///     project: "1111111111111",
///     location: "us-central1",
///     entryId: pulumi.interpolate`bigquery.googleapis.com/projects/my-project-name/datasets/${example_dataset.datasetId}/tables/${example_table.tableId}`,
///     entryType: "projects/655216118709/locations/global/entryTypes/bigquery-table",
///     fullyQualifiedName: pulumi.interpolate`bigquery:my-project-name.${example_dataset.datasetId}.${example_table.tableId}`,
///     parentEntry: pulumi.interpolate`projects/1111111111111/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/my-project-name/datasets/${example_dataset.datasetId}`,
///     aspects: [
///         {
///             aspectKey: "1111111111111.us-central1.aspect-type-one",
///             aspect: {
///                 data: "          {\\\"type\\\": \\\"VIEW\\\"    }\n",
///             },
///         },
///         {
///             aspectKey: "1111111111111.us-central1.aspect-type-two@Schema.event_type",
///             aspect: {
///                 data: "          {\\\"story\\\": \\\"SEQUENCE\\\"    }\n",
///             },
///         },
///     ],
/// }, {
///     dependsOn: [
///         aspect_type_full_two,
///         aspect_type_full_one,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// aspect_type_full_one = gcp.dataplex.AspectType("aspect-type-full-one",
///     aspect_type_id="aspect-type-one",
///     location="us-central1",
///     project="1111111111111",
///     metadata_template="""{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"type\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Type\",
///         \"description\": \"Specifies the type of view represented by the entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"VIEW\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// """)
/// aspect_type_full_two = gcp.dataplex.AspectType("aspect-type-full-two",
///     aspect_type_id="aspect-type-two",
///     location="us-central1",
///     project="1111111111111",
///     metadata_template="""{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"story\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Story\",
///         \"description\": \"Specifies the story of an entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"SEQUENCE\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// """)
/// example_dataset = gcp.bigquery.Dataset("example-dataset",
///     dataset_id="dataset_basic",
///     friendly_name="Example Dataset",
///     location="us-central1",
///     delete_contents_on_destroy=True)
/// example_table = gcp.bigquery.Table("example-table",
///     dataset_id=example_dataset.dataset_id,
///     table_id="table-basic",
///     deletion_protection=False,
///     schema=json.dumps([
///         {
///             "name": "event_time",
///             "type": "TIMESTAMP",
///             "mode": "REQUIRED",
///         },
///         {
///             "name": "user_id",
///             "type": "STRING",
///             "mode": "NULLABLE",
///         },
///         {
///             "name": "event_type",
///             "type": "STRING",
///             "mode": "NULLABLE",
///         },
///     ]))
/// tf_test_table = gcp.dataplex.Entry("tf_test_table",
///     entry_group_id="@bigquery",
///     project="1111111111111",
///     location="us-central1",
///     entry_id=pulumi.Output.all(
///         dataset_id=example_dataset.dataset_id,
///         table_id=example_table.table_id
/// ).apply(lambda resolved_outputs: f"bigquery.googleapis.com/projects/my-project-name/datasets/{resolved_outputs['dataset_id']}/tables/{resolved_outputs['table_id']}")
/// ,
///     entry_type="projects/655216118709/locations/global/entryTypes/bigquery-table",
///     fully_qualified_name=pulumi.Output.all(
///         dataset_id=example_dataset.dataset_id,
///         table_id=example_table.table_id
/// ).apply(lambda resolved_outputs: f"bigquery:my-project-name.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///     parent_entry=example_dataset.dataset_id.apply(lambda dataset_id: f"projects/1111111111111/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/my-project-name/datasets/{dataset_id}"),
///     aspects=[
///         {
///             "aspect_key": "1111111111111.us-central1.aspect-type-one",
///             "aspect": {
///                 "data": "          {\\\"type\\\": \\\"VIEW\\\"    }\n",
///             },
///         },
///         {
///             "aspect_key": "1111111111111.us-central1.aspect-type-two@Schema.event_type",
///             "aspect": {
///                 "data": "          {\\\"story\\\": \\\"SEQUENCE\\\"    }\n",
///             },
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[
///             aspect_type_full_two,
///             aspect_type_full_one,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var aspect_type_full_one = new Gcp.DataPlex.AspectType("aspect-type-full-one", new()
///     {
///         AspectTypeId = "aspect-type-one",
///         Location = "us-central1",
///         Project = "1111111111111",
///         MetadataTemplate = @"{
///   \""name\"": \""tf-test-template\"",
///   \""type\"": \""record\"",
///   \""recordFields\"": [
///     {
///       \""name\"": \""type\"",
///       \""type\"": \""enum\"",
///       \""annotations\"": {
///         \""displayName\"": \""Type\"",
///         \""description\"": \""Specifies the type of view represented by the entry.\""
///       },
///       \""index\"": 1,
///       \""constraints\"": {
///         \""required\"": true
///       },
///       \""enumValues\"": [
///         {
///           \""name\"": \""VIEW\"",
///           \""index\"": 1
///         }
///       ]
///     }
///   ]
/// }
/// ",
///     });
///
///     var aspect_type_full_two = new Gcp.DataPlex.AspectType("aspect-type-full-two", new()
///     {
///         AspectTypeId = "aspect-type-two",
///         Location = "us-central1",
///         Project = "1111111111111",
///         MetadataTemplate = @"{
///   \""name\"": \""tf-test-template\"",
///   \""type\"": \""record\"",
///   \""recordFields\"": [
///     {
///       \""name\"": \""story\"",
///       \""type\"": \""enum\"",
///       \""annotations\"": {
///         \""displayName\"": \""Story\"",
///         \""description\"": \""Specifies the story of an entry.\""
///       },
///       \""index\"": 1,
///       \""constraints\"": {
///         \""required\"": true
///       },
///       \""enumValues\"": [
///         {
///           \""name\"": \""SEQUENCE\"",
///           \""index\"": 1
///         }
///       ]
///     }
///   ]
/// }
/// ",
///     });
///
///     var example_dataset = new Gcp.BigQuery.Dataset("example-dataset", new()
///     {
///         DatasetId = "dataset_basic",
///         FriendlyName = "Example Dataset",
///         Location = "us-central1",
///         DeleteContentsOnDestroy = true,
///     });
///
///     var example_table = new Gcp.BigQuery.Table("example-table", new()
///     {
///         DatasetId = example_dataset.DatasetId,
///         TableId = "table-basic",
///         DeletionProtection = false,
///         Schema = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["name"] = "event_time",
///                 ["type"] = "TIMESTAMP",
///                 ["mode"] = "REQUIRED",
///             },
///             new Dictionary<string, object?>
///             {
///                 ["name"] = "user_id",
///                 ["type"] = "STRING",
///                 ["mode"] = "NULLABLE",
///             },
///             new Dictionary<string, object?>
///             {
///                 ["name"] = "event_type",
///                 ["type"] = "STRING",
///                 ["mode"] = "NULLABLE",
///             },
///         }),
///     });
///
///     var tfTestTable = new Gcp.DataPlex.Entry("tf_test_table", new()
///     {
///         EntryGroupId = "@bigquery",
///         Project = "1111111111111",
///         Location = "us-central1",
///         EntryId = Output.Tuple(example_dataset.DatasetId, example_table.TableId).Apply(values =>
///         {
///             var datasetId = values.Item1;
///             var tableId = values.Item2;
///             return $"bigquery.googleapis.com/projects/my-project-name/datasets/{datasetId}/tables/{tableId}";
///         }),
///         EntryType = "projects/655216118709/locations/global/entryTypes/bigquery-table",
///         FullyQualifiedName = Output.Tuple(example_dataset.DatasetId, example_table.TableId).Apply(values =>
///         {
///             var datasetId = values.Item1;
///             var tableId = values.Item2;
///             return $"bigquery:my-project-name.{datasetId}.{tableId}";
///         }),
///         ParentEntry = example_dataset.DatasetId.Apply(datasetId => $"projects/1111111111111/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/my-project-name/datasets/{datasetId}"),
///         Aspects = new[]
///         {
///             new Gcp.DataPlex.Inputs.EntryAspectArgs
///             {
///                 AspectKey = "1111111111111.us-central1.aspect-type-one",
///                 Aspect = new Gcp.DataPlex.Inputs.EntryAspectAspectArgs
///                 {
///                     Data = @"          {\""type\"": \""VIEW\""    }
/// ",
///                 },
///             },
///             new Gcp.DataPlex.Inputs.EntryAspectArgs
///             {
///                 AspectKey = "1111111111111.us-central1.aspect-type-two@Schema.event_type",
///                 Aspect = new Gcp.DataPlex.Inputs.EntryAspectAspectArgs
///                 {
///                     Data = @"          {\""story\"": \""SEQUENCE\""    }
/// ",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             aspect_type_full_two,
///             aspect_type_full_one,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		aspect_type_full_one, err := dataplex.NewAspectType(ctx, "aspect-type-full-one", &dataplex.AspectTypeArgs{
/// 			AspectTypeId: pulumi.String("aspect-type-one"),
/// 			Location:     pulumi.String("us-central1"),
/// 			Project:      pulumi.String("1111111111111"),
/// 			MetadataTemplate: pulumi.String(`{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"type\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Type\",
///         \"description\": \"Specifies the type of view represented by the entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"VIEW\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		aspect_type_full_two, err := dataplex.NewAspectType(ctx, "aspect-type-full-two", &dataplex.AspectTypeArgs{
/// 			AspectTypeId: pulumi.String("aspect-type-two"),
/// 			Location:     pulumi.String("us-central1"),
/// 			Project:      pulumi.String("1111111111111"),
/// 			MetadataTemplate: pulumi.String(`{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"story\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Story\",
///         \"description\": \"Specifies the story of an entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"SEQUENCE\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_dataset, err := bigquery.NewDataset(ctx, "example-dataset", &bigquery.DatasetArgs{
/// 			DatasetId:               pulumi.String("dataset_basic"),
/// 			FriendlyName:            pulumi.String("Example Dataset"),
/// 			Location:                pulumi.String("us-central1"),
/// 			DeleteContentsOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal([]map[string]string{
/// 			{
/// 				"name": "event_time",
/// 				"type": "TIMESTAMP",
/// 				"mode": "REQUIRED",
/// 			},
/// 			{
/// 				"name": "user_id",
/// 				"type": "STRING",
/// 				"mode": "NULLABLE",
/// 			},
/// 			{
/// 				"name": "event_type",
/// 				"type": "STRING",
/// 				"mode": "NULLABLE",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example_table, err := bigquery.NewTable(ctx, "example-table", &bigquery.TableArgs{
/// 			DatasetId:          example_dataset.DatasetId,
/// 			TableId:            pulumi.String("table-basic"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Schema:             pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewEntry(ctx, "tf_test_table", &dataplex.EntryArgs{
/// 			EntryGroupId: pulumi.String("@bigquery"),
/// 			Project:      pulumi.String("1111111111111"),
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryId: pulumi.All(example_dataset.DatasetId, example_table.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 				datasetId := _args[0].(string)
/// 				tableId := _args[1].(string)
/// 				return fmt.Sprintf("bigquery.googleapis.com/projects/my-project-name/datasets/%v/tables/%v", datasetId, tableId), nil
/// 			}).(pulumi.StringOutput),
/// 			EntryType: pulumi.String("projects/655216118709/locations/global/entryTypes/bigquery-table"),
/// 			FullyQualifiedName: pulumi.All(example_dataset.DatasetId, example_table.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 				datasetId := _args[0].(string)
/// 				tableId := _args[1].(string)
/// 				return fmt.Sprintf("bigquery:my-project-name.%v.%v", datasetId, tableId), nil
/// 			}).(pulumi.StringOutput),
/// 			ParentEntry: example_dataset.DatasetId.ApplyT(func(datasetId string) (string, error) {
/// 				return fmt.Sprintf("projects/1111111111111/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/my-project-name/datasets/%v", datasetId), nil
/// 			}).(pulumi.StringOutput),
/// 			Aspects: dataplex.EntryAspectArray{
/// 				&dataplex.EntryAspectArgs{
/// 					AspectKey: pulumi.String("1111111111111.us-central1.aspect-type-one"),
/// 					Aspect: &dataplex.EntryAspectAspectArgs{
/// 						Data: pulumi.String("          {\\\"type\\\": \\\"VIEW\\\"    }\n"),
/// 					},
/// 				},
/// 				&dataplex.EntryAspectArgs{
/// 					AspectKey: pulumi.String("1111111111111.us-central1.aspect-type-two@Schema.event_type"),
/// 					Aspect: &dataplex.EntryAspectAspectArgs{
/// 						Data: pulumi.String("          {\\\"story\\\": \\\"SEQUENCE\\\"    }\n"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			aspect_type_full_two,
/// 			aspect_type_full_one,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_dataplex_aspecttype" "aspect-type-full-one" {
///   aspect_type_id    = "aspect-type-one"
///   location          = "us-central1"
///   project           = "1111111111111"
///   metadata_template = "{\n  \\\"name\\\": \\\"tf-test-template\\\",\n  \\\"type\\\": \\\"record\\\",\n  \\\"recordFields\\\": [\n    {\n      \\\"name\\\": \\\"type\\\",\n      \\\"type\\\": \\\"enum\\\",\n      \\\"annotations\\\": {\n        \\\"displayName\\\": \\\"Type\\\",\n        \\\"description\\\": \\\"Specifies the type of view represented by the entry.\\\"\n      },\n      \\\"index\\\": 1,\n      \\\"constraints\\\": {\n        \\\"required\\\": true\n      },\n      \\\"enumValues\\\": [\n        {\n          \\\"name\\\": \\\"VIEW\\\",\n          \\\"index\\\": 1\n        }\n      ]\n    }\n  ]\n}\n"
/// }
/// resource "gcp_dataplex_aspecttype" "aspect-type-full-two" {
///   aspect_type_id    = "aspect-type-two"
///   location          = "us-central1"
///   project           = "1111111111111"
///   metadata_template = "{\n  \\\"name\\\": \\\"tf-test-template\\\",\n  \\\"type\\\": \\\"record\\\",\n  \\\"recordFields\\\": [\n    {\n      \\\"name\\\": \\\"story\\\",\n      \\\"type\\\": \\\"enum\\\",\n      \\\"annotations\\\": {\n        \\\"displayName\\\": \\\"Story\\\",\n        \\\"description\\\": \\\"Specifies the story of an entry.\\\"\n      },\n      \\\"index\\\": 1,\n      \\\"constraints\\\": {\n        \\\"required\\\": true\n      },\n      \\\"enumValues\\\": [\n        {\n          \\\"name\\\": \\\"SEQUENCE\\\",\n          \\\"index\\\": 1\n        }\n      ]\n    }\n  ]\n}\n"
/// }
/// resource "gcp_bigquery_dataset" "example-dataset" {
///   dataset_id                 = "dataset_basic"
///   friendly_name              = "Example Dataset"
///   location                   = "us-central1"
///   delete_contents_on_destroy = true
/// }
/// resource "gcp_bigquery_table" "example-table" {
///   dataset_id          = gcp_bigquery_dataset.example-dataset.dataset_id
///   table_id            = "table-basic"
///   deletion_protection = false
///   # Define the table schema
///   schema = jsonencode([{
///     "name" = "event_time"
///     "type" = "TIMESTAMP"
///     "mode" = "REQUIRED"
///     }, {
///     "name" = "user_id"
///     "type" = "STRING"
///     "mode" = "NULLABLE"
///     }, {
///     "name" = "event_type"
///     "type" = "STRING"
///     "mode" = "NULLABLE"
///   }])
/// }
/// resource "gcp_dataplex_entry" "tf_test_table" {
///   depends_on           = [gcp_dataplex_aspecttype.aspect-type-full-two, gcp_dataplex_aspecttype.aspect-type-full-one]
///   entry_group_id       = "@bigquery"
///   project              = "1111111111111"
///   location             = "us-central1"
///   entry_id             ="bigquery.googleapis.com/projects/my-project-name/datasets/${gcp_bigquery_dataset.example-dataset.dataset_id}/tables/${gcp_bigquery_table.example-table.table_id}"
///   entry_type           = "projects/655216118709/locations/global/entryTypes/bigquery-table"
///   fully_qualified_name ="bigquery:my-project-name.${gcp_bigquery_dataset.example-dataset.dataset_id}.${gcp_bigquery_table.example-table.table_id}"
///   parent_entry         ="projects/1111111111111/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/my-project-name/datasets/${gcp_bigquery_dataset.example-dataset.dataset_id}"
///   aspects {
///     aspect_key = "1111111111111.us-central1.aspect-type-one"
///     aspect = {
///       data = "          {\\\"type\\\": \\\"VIEW\\\"    }\n"
///     }
///   }
///   aspects {
///     aspect_key = "1111111111111.us-central1.aspect-type-two@Schema.event_type"
///     aspect = {
///       data = "          {\\\"story\\\": \\\"SEQUENCE\\\"    }\n"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.AspectType;
/// import com.pulumi.gcp.dataplex.AspectTypeArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.dataplex.Entry;
/// import com.pulumi.gcp.dataplex.EntryArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectAspectArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var aspect_type_full_one = new AspectType("aspect-type-full-one", AspectTypeArgs.builder()
///             .aspectTypeId("aspect-type-one")
///             .location("us-central1")
///             .project("1111111111111")
///             .metadataTemplate("""
/// {
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"type\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Type\",
///         \"description\": \"Specifies the type of view represented by the entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"VIEW\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
///             """)
///             .build());
///
///         var aspect_type_full_two = new AspectType("aspect-type-full-two", AspectTypeArgs.builder()
///             .aspectTypeId("aspect-type-two")
///             .location("us-central1")
///             .project("1111111111111")
///             .metadataTemplate("""
/// {
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"story\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Story\",
///         \"description\": \"Specifies the story of an entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"SEQUENCE\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
///             """)
///             .build());
///
///         var example_dataset = new Dataset("example-dataset", DatasetArgs.builder()
///             .datasetId("dataset_basic")
///             .friendlyName("Example Dataset")
///             .location("us-central1")
///             .deleteContentsOnDestroy(true)
///             .build());
///
///         var example_table = new Table("example-table", TableArgs.builder()
///             .datasetId(example_dataset.datasetId())
///             .tableId("table-basic")
///             .deletionProtection(false)
///             .schema(serializeJson(
///                 jsonArray(
///                     jsonObject(
///                         jsonProperty("name", "event_time"),
///                         jsonProperty("type", "TIMESTAMP"),
///                         jsonProperty("mode", "REQUIRED")
///                     ),
///                     jsonObject(
///                         jsonProperty("name", "user_id"),
///                         jsonProperty("type", "STRING"),
///                         jsonProperty("mode", "NULLABLE")
///                     ),
///                     jsonObject(
///                         jsonProperty("name", "event_type"),
///                         jsonProperty("type", "STRING"),
///                         jsonProperty("mode", "NULLABLE")
///                     )
///                 )))
///             .build());
///
///         var tfTestTable = new Entry("tfTestTable", EntryArgs.builder()
///             .entryGroupId("@bigquery")
///             .project("1111111111111")
///             .location("us-central1")
///             .entryId(Output.tuple(example_dataset.datasetId(), example_table.tableId()).applyValue(values -> {
///                 var datasetId = values.t1;
///                 var tableId = values.t2;
///                 return String.format("bigquery.googleapis.com/projects/my-project-name/datasets/%s/tables/%s", datasetId,tableId);
///             }))
///             .entryType("projects/655216118709/locations/global/entryTypes/bigquery-table")
///             .fullyQualifiedName(Output.tuple(example_dataset.datasetId(), example_table.tableId()).applyValue(values -> {
///                 var datasetId = values.t1;
///                 var tableId = values.t2;
///                 return String.format("bigquery:my-project-name.%s.%s", datasetId,tableId);
///             }))
///             .parentEntry(example_dataset.datasetId().applyValue(_datasetId -> String.format("projects/1111111111111/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/my-project-name/datasets/%s", _datasetId)))
///             .aspects(
///                 EntryAspectArgs.builder()
///                     .aspectKey("1111111111111.us-central1.aspect-type-one")
///                     .aspect(EntryAspectAspectArgs.builder()
///                         .data("""
///           {\"type\": \"VIEW\"    }
///                         """)
///                         .build())
///                     .build(),
///                 EntryAspectArgs.builder()
///                     .aspectKey("1111111111111.us-central1.aspect-type-two@Schema.event_type")
///                     .aspect(EntryAspectAspectArgs.builder()
///                         .data("""
///           {\"story\": \"SEQUENCE\"    }
///                         """)
///                         .build())
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     aspect_type_full_two,
///                     aspect_type_full_one)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   aspect-type-full-one:
///     type: gcp:dataplex:AspectType
///     properties:
///       aspectTypeId: aspect-type-one
///       location: us-central1
///       project: '1111111111111'
///       metadataTemplate: |
///         {
///           \"name\": \"tf-test-template\",
///           \"type\": \"record\",
///           \"recordFields\": [
///             {
///               \"name\": \"type\",
///               \"type\": \"enum\",
///               \"annotations\": {
///                 \"displayName\": \"Type\",
///                 \"description\": \"Specifies the type of view represented by the entry.\"
///               },
///               \"index\": 1,
///               \"constraints\": {
///                 \"required\": true
///               },
///               \"enumValues\": [
///                 {
///                   \"name\": \"VIEW\",
///                   \"index\": 1
///                 }
///               ]
///             }
///           ]
///         }
///   aspect-type-full-two:
///     type: gcp:dataplex:AspectType
///     properties:
///       aspectTypeId: aspect-type-two
///       location: us-central1
///       project: '1111111111111'
///       metadataTemplate: |
///         {
///           \"name\": \"tf-test-template\",
///           \"type\": \"record\",
///           \"recordFields\": [
///             {
///               \"name\": \"story\",
///               \"type\": \"enum\",
///               \"annotations\": {
///                 \"displayName\": \"Story\",
///                 \"description\": \"Specifies the story of an entry.\"
///               },
///               \"index\": 1,
///               \"constraints\": {
///                 \"required\": true
///               },
///               \"enumValues\": [
///                 {
///                   \"name\": \"SEQUENCE\",
///                   \"index\": 1
///                 }
///               ]
///             }
///           ]
///         }
///   example-dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_basic
///       friendlyName: Example Dataset
///       location: us-central1
///       deleteContentsOnDestroy: true
///   example-table:
///     type: gcp:bigquery:Table
///     properties:
///       datasetId: ${["example-dataset"].datasetId}
///       tableId: table-basic
///       deletionProtection: false # Define the table schema
///       schema:
///         fn::toJSON:
///           - name: event_time
///             type: TIMESTAMP
///             mode: REQUIRED
///           - name: user_id
///             type: STRING
///             mode: NULLABLE
///           - name: event_type
///             type: STRING
///             mode: NULLABLE
///   tfTestTable:
///     type: gcp:dataplex:Entry
///     name: tf_test_table
///     properties:
///       entryGroupId: '@bigquery'
///       project: '1111111111111'
///       location: us-central1
///       entryId: bigquery.googleapis.com/projects/my-project-name/datasets/${["example-dataset"].datasetId}/tables/${["example-table"].tableId}
///       entryType: projects/655216118709/locations/global/entryTypes/bigquery-table
///       fullyQualifiedName: bigquery:my-project-name.${["example-dataset"].datasetId}.${["example-table"].tableId}
///       parentEntry: projects/1111111111111/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/my-project-name/datasets/${["example-dataset"].datasetId}
///       aspects:
///         - aspectKey: 1111111111111.us-central1.aspect-type-one
///           aspect:
///             data: |2
///                         {\"type\": \"VIEW\"    }
///         - aspectKey: 1111111111111.us-central1.aspect-type-two@Schema.event_type
///           aspect:
///             data: |2
///                         {\"story\": \"SEQUENCE\"    }
///     options:
///       dependsOn:
///         - ${["aspect-type-full-two"]}
///         - ${["aspect-type-full-one"]}
/// ```
///
/// ### Dataplex Entry Glossary Term
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const example_glossary = new gcp.dataplex.Glossary("example-glossary", {
///     glossaryId: "glossary-basic",
///     location: "us-central1",
/// });
/// const example_glossary_term = new gcp.dataplex.GlossaryTerm("example-glossary-term", {
///     parent: pulumi.interpolate`projects/my-project-name/locations/us-central1/glossaries/${example_glossary.glossaryId}`,
///     glossaryId: example_glossary.glossaryId,
///     location: "us-central1",
///     termId: "glossary-term",
/// });
/// // Introduce a 45-second wait after the glossary resource creation
/// const wait_for_sync = new time.Sleep("wait-for-sync", {createDuration: "45s"}, {
///     dependsOn: [example_glossary_term],
/// });
/// const tfTestGlossaryTerm = new gcp.dataplex.Entry("tf_test_glossary_term", {
///     entryGroupId: "@dataplex",
///     project: "1111111111111",
///     location: "us-central1",
///     entryId: pulumi.interpolate`projects/1111111111111/locations/us-central1/glossaries/${example_glossary.glossaryId}/terms/${example_glossary_term.termId}`,
///     entryType: "projects/655216118709/locations/global/entryTypes/glossary-term",
///     parentEntry: pulumi.interpolate`projects/1111111111111/locations/us-central1/entryGroups/@dataplex/entries/projects/1111111111111/locations/us-central1/glossaries/${example_glossary.glossaryId}`,
///     aspects: [{
///         aspectKey: "655216118709.global.overview",
///         aspect: {
///             data: "           {\\\"content\\\": \\\"Term Content\\\"    }\n",
///         },
///     }],
/// }, {
///     dependsOn: [wait_for_sync],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// example_glossary = gcp.dataplex.Glossary("example-glossary",
///     glossary_id="glossary-basic",
///     location="us-central1")
/// example_glossary_term = gcp.dataplex.GlossaryTerm("example-glossary-term",
///     parent=example_glossary.glossary_id.apply(lambda glossary_id: f"projects/my-project-name/locations/us-central1/glossaries/{glossary_id}"),
///     glossary_id=example_glossary.glossary_id,
///     location="us-central1",
///     term_id="glossary-term")
/// # Introduce a 45-second wait after the glossary resource creation
/// wait_for_sync = time.Sleep("wait-for-sync", create_duration="45s",
/// opts = pulumi.ResourceOptions(depends_on=[example_glossary_term]))
/// tf_test_glossary_term = gcp.dataplex.Entry("tf_test_glossary_term",
///     entry_group_id="@dataplex",
///     project="1111111111111",
///     location="us-central1",
///     entry_id=pulumi.Output.all(
///         glossary_id=example_glossary.glossary_id,
///         term_id=example_glossary_term.term_id
/// ).apply(lambda resolved_outputs: f"projects/1111111111111/locations/us-central1/glossaries/{resolved_outputs['glossary_id']}/terms/{resolved_outputs['term_id']}")
/// ,
///     entry_type="projects/655216118709/locations/global/entryTypes/glossary-term",
///     parent_entry=example_glossary.glossary_id.apply(lambda glossary_id: f"projects/1111111111111/locations/us-central1/entryGroups/@dataplex/entries/projects/1111111111111/locations/us-central1/glossaries/{glossary_id}"),
///     aspects=[{
///         "aspect_key": "655216118709.global.overview",
///         "aspect": {
///             "data": "           {\\\"content\\\": \\\"Term Content\\\"    }\n",
///         },
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_sync]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_glossary = new Gcp.DataPlex.Glossary("example-glossary", new()
///     {
///         GlossaryId = "glossary-basic",
///         Location = "us-central1",
///     });
///
///     var example_glossary_term = new Gcp.DataPlex.GlossaryTerm("example-glossary-term", new()
///     {
///         Parent = example_glossary.GlossaryId.Apply(glossaryId => $"projects/my-project-name/locations/us-central1/glossaries/{glossaryId}"),
///         GlossaryId = example_glossary.GlossaryId,
///         Location = "us-central1",
///         TermId = "glossary-term",
///     });
///
///     // Introduce a 45-second wait after the glossary resource creation
///     var wait_for_sync = new Time.Sleep("wait-for-sync", new()
///     {
///         CreateDuration = "45s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example_glossary_term,
///         },
///     });
///
///     var tfTestGlossaryTerm = new Gcp.DataPlex.Entry("tf_test_glossary_term", new()
///     {
///         EntryGroupId = "@dataplex",
///         Project = "1111111111111",
///         Location = "us-central1",
///         EntryId = Output.Tuple(example_glossary.GlossaryId, example_glossary_term.TermId).Apply(values =>
///         {
///             var glossaryId = values.Item1;
///             var termId = values.Item2;
///             return $"projects/1111111111111/locations/us-central1/glossaries/{glossaryId}/terms/{termId}";
///         }),
///         EntryType = "projects/655216118709/locations/global/entryTypes/glossary-term",
///         ParentEntry = example_glossary.GlossaryId.Apply(glossaryId => $"projects/1111111111111/locations/us-central1/entryGroups/@dataplex/entries/projects/1111111111111/locations/us-central1/glossaries/{glossaryId}"),
///         Aspects = new[]
///         {
///             new Gcp.DataPlex.Inputs.EntryAspectArgs
///             {
///                 AspectKey = "655216118709.global.overview",
///                 Aspect = new Gcp.DataPlex.Inputs.EntryAspectAspectArgs
///                 {
///                     Data = @"           {\""content\"": \""Term Content\""    }
/// ",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait_for_sync,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example_glossary, err := dataplex.NewGlossary(ctx, "example-glossary", &dataplex.GlossaryArgs{
/// 			GlossaryId: pulumi.String("glossary-basic"),
/// 			Location:   pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_glossary_term, err := dataplex.NewGlossaryTerm(ctx, "example-glossary-term", &dataplex.GlossaryTermArgs{
/// 			Parent: example_glossary.GlossaryId.ApplyT(func(glossaryId string) (string, error) {
/// 				return fmt.Sprintf("projects/my-project-name/locations/us-central1/glossaries/%v", glossaryId), nil
/// 			}).(pulumi.StringOutput),
/// 			GlossaryId: example_glossary.GlossaryId,
/// 			Location:   pulumi.String("us-central1"),
/// 			TermId:     pulumi.String("glossary-term"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Introduce a 45-second wait after the glossary resource creation
/// 		wait_for_sync, err := time.NewSleep(ctx, "wait-for-sync", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("45s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example_glossary_term,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewEntry(ctx, "tf_test_glossary_term", &dataplex.EntryArgs{
/// 			EntryGroupId: pulumi.String("@dataplex"),
/// 			Project:      pulumi.String("1111111111111"),
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryId: pulumi.All(example_glossary.GlossaryId, example_glossary_term.TermId).ApplyT(func(_args []interface{}) (string, error) {
/// 				glossaryId := _args[0].(string)
/// 				termId := _args[1].(*string)
/// 				return fmt.Sprintf("projects/1111111111111/locations/us-central1/glossaries/%v/terms/%v", glossaryId, termId), nil
/// 			}).(pulumi.StringOutput),
/// 			EntryType: pulumi.String("projects/655216118709/locations/global/entryTypes/glossary-term"),
/// 			ParentEntry: example_glossary.GlossaryId.ApplyT(func(glossaryId string) (string, error) {
/// 				return fmt.Sprintf("projects/1111111111111/locations/us-central1/entryGroups/@dataplex/entries/projects/1111111111111/locations/us-central1/glossaries/%v", glossaryId), nil
/// 			}).(pulumi.StringOutput),
/// 			Aspects: dataplex.EntryAspectArray{
/// 				&dataplex.EntryAspectArgs{
/// 					AspectKey: pulumi.String("655216118709.global.overview"),
/// 					Aspect: &dataplex.EntryAspectAspectArgs{
/// 						Data: pulumi.String("           {\\\"content\\\": \\\"Term Content\\\"    }\n"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait_for_sync,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_dataplex_glossary" "example-glossary" {
///   glossary_id = "glossary-basic"
///   location    = "us-central1"
/// }
/// resource "gcp_dataplex_glossaryterm" "example-glossary-term" {
///   parent      ="projects/my-project-name/locations/us-central1/glossaries/${gcp_dataplex_glossary.example-glossary.glossary_id}"
///   glossary_id = gcp_dataplex_glossary.example-glossary.glossary_id
///   location    = "us-central1"
///   term_id     = "glossary-term"
/// }
/// # Introduce a 45-second wait after the glossary resource creation
/// resource "time_sleep" "wait-for-sync" {
///   depends_on      = [gcp_dataplex_glossaryterm.example-glossary-term]
///   create_duration = "45s"
/// }
/// resource "gcp_dataplex_entry" "tf_test_glossary_term" {
///   depends_on     = [time_sleep.wait-for-sync]
///   entry_group_id = "@dataplex"
///   project        = "1111111111111"
///   location       = "us-central1"
///   entry_id       ="projects/1111111111111/locations/us-central1/glossaries/${gcp_dataplex_glossary.example-glossary.glossary_id}/terms/${gcp_dataplex_glossaryterm.example-glossary-term.term_id}"
///   entry_type     = "projects/655216118709/locations/global/entryTypes/glossary-term"
///   parent_entry   ="projects/1111111111111/locations/us-central1/entryGroups/@dataplex/entries/projects/1111111111111/locations/us-central1/glossaries/${gcp_dataplex_glossary.example-glossary.glossary_id}"
///   aspects {
///     aspect_key = "655216118709.global.overview"
///     aspect = {
///       data = "           {\\\"content\\\": \\\"Term Content\\\"    }\n"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.Glossary;
/// import com.pulumi.gcp.dataplex.GlossaryArgs;
/// import com.pulumi.gcp.dataplex.GlossaryTerm;
/// import com.pulumi.gcp.dataplex.GlossaryTermArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.dataplex.Entry;
/// import com.pulumi.gcp.dataplex.EntryArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectAspectArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example_glossary = new Glossary("example-glossary", GlossaryArgs.builder()
///             .glossaryId("glossary-basic")
///             .location("us-central1")
///             .build());
///
///         var example_glossary_term = new GlossaryTerm("example-glossary-term", GlossaryTermArgs.builder()
///             .parent(example_glossary.glossaryId().applyValue(_glossaryId -> String.format("projects/my-project-name/locations/us-central1/glossaries/%s", _glossaryId)))
///             .glossaryId(example_glossary.glossaryId())
///             .location("us-central1")
///             .termId("glossary-term")
///             .build());
///
///         // Introduce a 45-second wait after the glossary resource creation
///         var wait_for_sync = new Sleep("wait-for-sync", SleepArgs.builder()
///             .createDuration("45s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example_glossary_term)
///                 .build());
///
///         var tfTestGlossaryTerm = new Entry("tfTestGlossaryTerm", EntryArgs.builder()
///             .entryGroupId("@dataplex")
///             .project("1111111111111")
///             .location("us-central1")
///             .entryId(Output.tuple(example_glossary.glossaryId(), example_glossary_term.termId()).applyValue(values -> {
///                 var glossaryId = values.t1;
///                 var termId = values.t2;
///                 return String.format("projects/1111111111111/locations/us-central1/glossaries/%s/terms/%s", glossaryId,termId);
///             }))
///             .entryType("projects/655216118709/locations/global/entryTypes/glossary-term")
///             .parentEntry(example_glossary.glossaryId().applyValue(_glossaryId -> String.format("projects/1111111111111/locations/us-central1/entryGroups/@dataplex/entries/projects/1111111111111/locations/us-central1/glossaries/%s", _glossaryId)))
///             .aspects(EntryAspectArgs.builder()
///                 .aspectKey("655216118709.global.overview")
///                 .aspect(EntryAspectAspectArgs.builder()
///                     .data("""
///            {\"content\": \"Term Content\"    }
///                     """)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait_for_sync)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-glossary:
///     type: gcp:dataplex:Glossary
///     properties:
///       glossaryId: glossary-basic
///       location: us-central1
///   example-glossary-term:
///     type: gcp:dataplex:GlossaryTerm
///     properties:
///       parent: projects/my-project-name/locations/us-central1/glossaries/${["example-glossary"].glossaryId}
///       glossaryId: ${["example-glossary"].glossaryId}
///       location: us-central1
///       termId: glossary-term
///   # Introduce a 45-second wait after the glossary resource creation
///   wait-for-sync:
///     type: time:Sleep
///     properties:
///       createDuration: 45s
///     options:
///       dependsOn:
///         - ${["example-glossary-term"]}
///   tfTestGlossaryTerm:
///     type: gcp:dataplex:Entry
///     name: tf_test_glossary_term
///     properties:
///       entryGroupId: '@dataplex'
///       project: '1111111111111'
///       location: us-central1
///       entryId: projects/1111111111111/locations/us-central1/glossaries/${["example-glossary"].glossaryId}/terms/${["example-glossary-term"].termId}
///       entryType: projects/655216118709/locations/global/entryTypes/glossary-term
///       parentEntry: projects/1111111111111/locations/us-central1/entryGroups/@dataplex/entries/projects/1111111111111/locations/us-central1/glossaries/${["example-glossary"].glossaryId}
///       aspects:
///         - aspectKey: 655216118709.global.overview
///           aspect:
///             data: |2
///                          {\"content\": \"Term Content\"    }
///     options:
///       dependsOn:
///         - ${["wait-for-sync"]}
/// ```
///
///
/// ## Import
///
/// Entry can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}/entries/{{entry_id}}`
/// * `{{project}}/{{location}}/{{entry_group_id}}/{{entry_id}}`
/// * `{{location}}/{{entry_group_id}}/{{entry_id}}`
///
///
/// When using the `pulumi import` command, Entry can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/entry:Entry default projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}/entries/{{entry_id}}
/// $ pulumi import gcp:dataplex/entry:Entry default {{project}}/{{location}}/{{entry_group_id}}/{{entry_id}}
/// $ pulumi import gcp:dataplex/entry:Entry default {{location}}/{{entry_group_id}}/{{entry_id}}
/// ```
class Entry extends pulumi.CustomResource {
  /// The aspects that are attached to the entry.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> aspects;
  /// The time when the Entry was created in Dataplex.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The entry group id of the entry group the entry will be created in.
  late final pulumi.Output<String?> entryGroupId;
  /// The entry id of the entry.
  late final pulumi.Output<String?> entryId;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<EntryEntrySource> entrySource;
  /// The relative resource name of the entry type that was used to create this entry, in the format projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
  late final pulumi.Output<String> entryType;
  /// A name for the entry that can be referenced by an external system. For more information, see https://cloud.google.com/dataplex/docs/fully-qualified-names.
  /// The maximum size of the field is 4000 characters.
  late final pulumi.Output<String?> fullyQualifiedName;
  /// The location where entry will be created.
  late final pulumi.Output<String?> location;
  /// The relative resource name of the entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  late final pulumi.Output<String> name;
  /// The resource name of the parent entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  late final pulumi.Output<String?> parentEntry;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The time when the entry was last updated in Dataplex.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Entry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Entry]. {@macro pulumi_dataplex_entry_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Entry(
    String name, {
    EntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entry:Entry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aspects = registerOutput<List<Map<String, dynamic>>?>('aspects');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    entryGroupId = registerOutput<String?>('entryGroupId');
    entryId = registerOutput<String?>('entryId');
    entrySource = registerOutput<EntryEntrySource>('entrySource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EntryEntrySource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entryType = registerOutput<String>('entryType');
    fullyQualifiedName = registerOutput<String?>('fullyQualifiedName');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    parentEntry = registerOutput<String?>('parentEntry');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
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
          'gcp:dataplex/entry:Entry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aspects = registerOutput<List<Map<String, dynamic>>?>('aspects');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    entryGroupId = registerOutput<String?>('entryGroupId');
    entryId = registerOutput<String?>('entryId');
    entrySource = registerOutput<EntryEntrySource>('entrySource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EntryEntrySource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entryType = registerOutput<String>('entryType');
    fullyQualifiedName = registerOutput<String?>('fullyQualifiedName');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    parentEntry = registerOutput<String?>('parentEntry');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
