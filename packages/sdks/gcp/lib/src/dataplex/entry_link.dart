import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_link_args.dart';
import 'entry_link_state.dart';

/// EntryLink represents a link between two Entries.
///
///
/// To get more information about EntryLink, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.entryGroups.entryLinks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataplex/docs)
///
/// ## Example Usage
///
/// ### Dataplex Entry Link Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const entry_group_basic = new gcp.dataplex.EntryGroup("entry-group-basic", {
///     location: "us-central1",
///     entryGroupId: "tf-test-entry-group_9106",
///     project: "1111111111111",
/// });
/// const entry_type_basic = new gcp.dataplex.EntryType("entry-type-basic", {
///     entryTypeId: "tf-test-entry-type_75223",
///     location: "us-central1",
///     project: "1111111111111",
/// });
/// const source = new gcp.dataplex.Entry("source", {
///     location: "us-central1",
///     entryGroupId: entry_group_basic.entryGroupId,
///     entryId: "tf-test-source-entry_27169",
///     entryType: entry_type_basic.name,
///     project: "1111111111111",
/// });
/// const target = new gcp.dataplex.Entry("target", {
///     location: "us-central1",
///     entryGroupId: entry_group_basic.entryGroupId,
///     entryId: "tf-test-target-entry_41819",
///     entryType: entry_type_basic.name,
///     project: "1111111111111",
/// });
/// const basicEntryLink = new gcp.dataplex.EntryLink("basic_entry_link", {
///     project: "1111111111111",
///     location: "us-central1",
///     entryGroupId: entry_group_basic.entryGroupId,
///     entryLinkId: "tf-test-entry-link_75092",
///     entryLinkType: "projects/655216118709/locations/global/entryLinkTypes/related",
///     entryReferences: [
///         {
///             name: source.name,
///         },
///         {
///             name: target.name,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// entry_group_basic = gcp.dataplex.EntryGroup("entry-group-basic",
///     location="us-central1",
///     entry_group_id="tf-test-entry-group_9106",
///     project="1111111111111")
/// entry_type_basic = gcp.dataplex.EntryType("entry-type-basic",
///     entry_type_id="tf-test-entry-type_75223",
///     location="us-central1",
///     project="1111111111111")
/// source = gcp.dataplex.Entry("source",
///     location="us-central1",
///     entry_group_id=entry_group_basic.entry_group_id,
///     entry_id="tf-test-source-entry_27169",
///     entry_type=entry_type_basic.name,
///     project="1111111111111")
/// target = gcp.dataplex.Entry("target",
///     location="us-central1",
///     entry_group_id=entry_group_basic.entry_group_id,
///     entry_id="tf-test-target-entry_41819",
///     entry_type=entry_type_basic.name,
///     project="1111111111111")
/// basic_entry_link = gcp.dataplex.EntryLink("basic_entry_link",
///     project="1111111111111",
///     location="us-central1",
///     entry_group_id=entry_group_basic.entry_group_id,
///     entry_link_id="tf-test-entry-link_75092",
///     entry_link_type="projects/655216118709/locations/global/entryLinkTypes/related",
///     entry_references=[
///         {
///             "name": source.name,
///         },
///         {
///             "name": target.name,
///         },
///     ])
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
///         Location = "us-central1",
///         EntryGroupId = "tf-test-entry-group_9106",
///         Project = "1111111111111",
///     });
///
///     var entry_type_basic = new Gcp.DataPlex.EntryType("entry-type-basic", new()
///     {
///         EntryTypeId = "tf-test-entry-type_75223",
///         Location = "us-central1",
///         Project = "1111111111111",
///     });
///
///     var source = new Gcp.DataPlex.Entry("source", new()
///     {
///         Location = "us-central1",
///         EntryGroupId = entry_group_basic.EntryGroupId,
///         EntryId = "tf-test-source-entry_27169",
///         EntryType = entry_type_basic.Name,
///         Project = "1111111111111",
///     });
///
///     var target = new Gcp.DataPlex.Entry("target", new()
///     {
///         Location = "us-central1",
///         EntryGroupId = entry_group_basic.EntryGroupId,
///         EntryId = "tf-test-target-entry_41819",
///         EntryType = entry_type_basic.Name,
///         Project = "1111111111111",
///     });
///
///     var basicEntryLink = new Gcp.DataPlex.EntryLink("basic_entry_link", new()
///     {
///         Project = "1111111111111",
///         Location = "us-central1",
///         EntryGroupId = entry_group_basic.EntryGroupId,
///         EntryLinkId = "tf-test-entry-link_75092",
///         EntryLinkType = "projects/655216118709/locations/global/entryLinkTypes/related",
///         EntryReferences = new[]
///         {
///             new Gcp.DataPlex.Inputs.EntryLinkEntryReferenceArgs
///             {
///                 Name = source.Name,
///             },
///             new Gcp.DataPlex.Inputs.EntryLinkEntryReferenceArgs
///             {
///                 Name = target.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		entry_group_basic, err := dataplex.NewEntryGroup(ctx, "entry-group-basic", &dataplex.EntryGroupArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryGroupId: pulumi.String("tf-test-entry-group_9106"),
/// 			Project:      pulumi.String("1111111111111"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		entry_type_basic, err := dataplex.NewEntryType(ctx, "entry-type-basic", &dataplex.EntryTypeArgs{
/// 			EntryTypeId: pulumi.String("tf-test-entry-type_75223"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Project:     pulumi.String("1111111111111"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := dataplex.NewEntry(ctx, "source", &dataplex.EntryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryGroupId: entry_group_basic.EntryGroupId,
/// 			EntryId:      pulumi.String("tf-test-source-entry_27169"),
/// 			EntryType:    entry_type_basic.Name,
/// 			Project:      pulumi.String("1111111111111"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		target, err := dataplex.NewEntry(ctx, "target", &dataplex.EntryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryGroupId: entry_group_basic.EntryGroupId,
/// 			EntryId:      pulumi.String("tf-test-target-entry_41819"),
/// 			EntryType:    entry_type_basic.Name,
/// 			Project:      pulumi.String("1111111111111"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewEntryLink(ctx, "basic_entry_link", &dataplex.EntryLinkArgs{
/// 			Project:       pulumi.String("1111111111111"),
/// 			Location:      pulumi.String("us-central1"),
/// 			EntryGroupId:  entry_group_basic.EntryGroupId,
/// 			EntryLinkId:   pulumi.String("tf-test-entry-link_75092"),
/// 			EntryLinkType: pulumi.String("projects/655216118709/locations/global/entryLinkTypes/related"),
/// 			EntryReferences: dataplex.EntryLinkEntryReferenceArray{
/// 				&dataplex.EntryLinkEntryReferenceArgs{
/// 					Name: source.Name,
/// 				},
/// 				&dataplex.EntryLinkEntryReferenceArgs{
/// 					Name: target.Name,
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
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
/// import com.pulumi.gcp.dataplex.EntryType;
/// import com.pulumi.gcp.dataplex.EntryTypeArgs;
/// import com.pulumi.gcp.dataplex.Entry;
/// import com.pulumi.gcp.dataplex.EntryArgs;
/// import com.pulumi.gcp.dataplex.EntryLink;
/// import com.pulumi.gcp.dataplex.EntryLinkArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryLinkEntryReferenceArgs;
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
///         var entry_group_basic = new EntryGroup("entry-group-basic", EntryGroupArgs.builder()
///             .location("us-central1")
///             .entryGroupId("tf-test-entry-group_9106")
///             .project("1111111111111")
///             .build());
///
///         var entry_type_basic = new EntryType("entry-type-basic", EntryTypeArgs.builder()
///             .entryTypeId("tf-test-entry-type_75223")
///             .location("us-central1")
///             .project("1111111111111")
///             .build());
///
///         var source = new Entry("source", EntryArgs.builder()
///             .location("us-central1")
///             .entryGroupId(entry_group_basic.entryGroupId())
///             .entryId("tf-test-source-entry_27169")
///             .entryType(entry_type_basic.name())
///             .project("1111111111111")
///             .build());
///
///         var target = new Entry("target", EntryArgs.builder()
///             .location("us-central1")
///             .entryGroupId(entry_group_basic.entryGroupId())
///             .entryId("tf-test-target-entry_41819")
///             .entryType(entry_type_basic.name())
///             .project("1111111111111")
///             .build());
///
///         var basicEntryLink = new EntryLink("basicEntryLink", EntryLinkArgs.builder()
///             .project("1111111111111")
///             .location("us-central1")
///             .entryGroupId(entry_group_basic.entryGroupId())
///             .entryLinkId("tf-test-entry-link_75092")
///             .entryLinkType("projects/655216118709/locations/global/entryLinkTypes/related")
///             .entryReferences(
///                 EntryLinkEntryReferenceArgs.builder()
///                     .name(source.name())
///                     .build(),
///                 EntryLinkEntryReferenceArgs.builder()
///                     .name(target.name())
///                     .build())
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
///       location: us-central1
///       entryGroupId: tf-test-entry-group_9106
///       project: '1111111111111'
///   source:
///     type: gcp:dataplex:Entry
///     properties:
///       location: us-central1
///       entryGroupId: ${["entry-group-basic"].entryGroupId}
///       entryId: tf-test-source-entry_27169
///       entryType: ${["entry-type-basic"].name}
///       project: '1111111111111'
///   entry-type-basic:
///     type: gcp:dataplex:EntryType
///     properties:
///       entryTypeId: tf-test-entry-type_75223
///       location: us-central1
///       project: '1111111111111'
///   target:
///     type: gcp:dataplex:Entry
///     properties:
///       location: us-central1
///       entryGroupId: ${["entry-group-basic"].entryGroupId}
///       entryId: tf-test-target-entry_41819
///       entryType: ${["entry-type-basic"].name}
///       project: '1111111111111'
///   basicEntryLink:
///     type: gcp:dataplex:EntryLink
///     name: basic_entry_link
///     properties:
///       project: '1111111111111'
///       location: us-central1
///       entryGroupId: ${["entry-group-basic"].entryGroupId}
///       entryLinkId: tf-test-entry-link_75092
///       entryLinkType: projects/655216118709/locations/global/entryLinkTypes/related
///       entryReferences:
///         - name: ${source.name}
///         - name: ${target.name}
/// ```
///
/// ### Dataplex Entry Link Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const entry_group_full = new gcp.dataplex.EntryGroup("entry-group-full", {
///     location: "us-central1",
///     entryGroupId: "tf-test-entry-group_2605",
///     project: "1111111111111",
/// });
/// const entry_type_full = new gcp.dataplex.EntryType("entry-type-full", {
///     entryTypeId: "tf-test-entry-type_22375",
///     location: "us-central1",
///     project: "1111111111111",
/// });
/// const source = new gcp.dataplex.Entry("source", {
///     location: "us-central1",
///     entryGroupId: entry_group_full.entryGroupId,
///     entryId: "tf-test-source-entry_34535",
///     entryType: entry_type_full.name,
///     project: "1111111111111",
/// });
/// const termTestIdFull = new gcp.dataplex.Glossary("term_test_id_full", {
///     glossaryId: "tf-test-glossary_29439",
///     location: "us-central1",
/// });
/// const termTestIdFullGlossaryTerm = new gcp.dataplex.GlossaryTerm("term_test_id_full", {
///     parent: pulumi.interpolate`projects/${termTestIdFull.project}/locations/us-central1/glossaries/${termTestIdFull.glossaryId}`,
///     glossaryId: termTestIdFull.glossaryId,
///     location: "us-central1",
///     termId: "tf-test-term-full_87786",
///     labels: {
///         tag: "test-tf",
///     },
///     displayName: "terraform term",
///     description: "term created by Terraform",
/// });
/// const fullEntryLink = new gcp.dataplex.EntryLink("full_entry_link", {
///     project: "1111111111111",
///     location: "us-central1",
///     entryGroupId: entry_group_full.entryGroupId,
///     entryLinkId: "tf-test-entry-link_2067",
///     entryLinkType: "projects/655216118709/locations/global/entryLinkTypes/definition",
///     entryReferences: [
///         {
///             name: source.name,
///             type: "SOURCE",
///             path: "",
///         },
///         {
///             name: pulumi.all([entry_group_full.project, entry_group_full.project, termTestIdFull.glossaryId, termTestIdFullGlossaryTerm.termId]).apply(([entry-group-fullProject, entry-group-fullProject1, glossaryId, termId]) => `projects/${entry_group_fullProject}/locations/us-central1/entryGroups/@dataplex/entries/projects/${entry_group_fullProject1}/locations/us-central1/glossaries/${glossaryId}/terms/${termId}`),
///             type: "TARGET",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// entry_group_full = gcp.dataplex.EntryGroup("entry-group-full",
///     location="us-central1",
///     entry_group_id="tf-test-entry-group_2605",
///     project="1111111111111")
/// entry_type_full = gcp.dataplex.EntryType("entry-type-full",
///     entry_type_id="tf-test-entry-type_22375",
///     location="us-central1",
///     project="1111111111111")
/// source = gcp.dataplex.Entry("source",
///     location="us-central1",
///     entry_group_id=entry_group_full.entry_group_id,
///     entry_id="tf-test-source-entry_34535",
///     entry_type=entry_type_full.name,
///     project="1111111111111")
/// term_test_id_full = gcp.dataplex.Glossary("term_test_id_full",
///     glossary_id="tf-test-glossary_29439",
///     location="us-central1")
/// term_test_id_full_glossary_term = gcp.dataplex.GlossaryTerm("term_test_id_full",
///     parent=pulumi.Output.all(
///         project=term_test_id_full.project,
///         glossary_id=term_test_id_full.glossary_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/us-central1/glossaries/{resolved_outputs['glossary_id']}")
/// ,
///     glossary_id=term_test_id_full.glossary_id,
///     location="us-central1",
///     term_id="tf-test-term-full_87786",
///     labels={
///         "tag": "test-tf",
///     },
///     display_name="terraform term",
///     description="term created by Terraform")
/// full_entry_link = gcp.dataplex.EntryLink("full_entry_link",
///     project="1111111111111",
///     location="us-central1",
///     entry_group_id=entry_group_full.entry_group_id,
///     entry_link_id="tf-test-entry-link_2067",
///     entry_link_type="projects/655216118709/locations/global/entryLinkTypes/definition",
///     entry_references=[
///         {
///             "name": source.name,
///             "type": "SOURCE",
///             "path": "",
///         },
///         {
///             "name": pulumi.Output.all(
///                 entry-group-fullProject=entry_group_full.project,
///                 entry-group-fullProject1=entry_group_full.project,
///                 glossary_id=term_test_id_full.glossary_id,
///                 term_id=term_test_id_full_glossary_term.term_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['entry-group-fullProject']}/locations/us-central1/entryGroups/@dataplex/entries/projects/{resolved_outputs['entry-group-fullProject1']}/locations/us-central1/glossaries/{resolved_outputs['glossary_id']}/terms/{resolved_outputs['term_id']}")
/// ,
///             "type": "TARGET",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var entry_group_full = new Gcp.DataPlex.EntryGroup("entry-group-full", new()
///     {
///         Location = "us-central1",
///         EntryGroupId = "tf-test-entry-group_2605",
///         Project = "1111111111111",
///     });
///
///     var entry_type_full = new Gcp.DataPlex.EntryType("entry-type-full", new()
///     {
///         EntryTypeId = "tf-test-entry-type_22375",
///         Location = "us-central1",
///         Project = "1111111111111",
///     });
///
///     var source = new Gcp.DataPlex.Entry("source", new()
///     {
///         Location = "us-central1",
///         EntryGroupId = entry_group_full.EntryGroupId,
///         EntryId = "tf-test-source-entry_34535",
///         EntryType = entry_type_full.Name,
///         Project = "1111111111111",
///     });
///
///     var termTestIdFull = new Gcp.DataPlex.Glossary("term_test_id_full", new()
///     {
///         GlossaryId = "tf-test-glossary_29439",
///         Location = "us-central1",
///     });
///
///     var termTestIdFullGlossaryTerm = new Gcp.DataPlex.GlossaryTerm("term_test_id_full", new()
///     {
///         Parent = Output.Tuple(termTestIdFull.Project, termTestIdFull.GlossaryId).Apply(values =>
///         {
///             var project = values.Item1;
///             var glossaryId = values.Item2;
///             return $"projects/{project}/locations/us-central1/glossaries/{glossaryId}";
///         }),
///         GlossaryId = termTestIdFull.GlossaryId,
///         Location = "us-central1",
///         TermId = "tf-test-term-full_87786",
///         Labels =
///         {
///             { "tag", "test-tf" },
///         },
///         DisplayName = "terraform term",
///         Description = "term created by Terraform",
///     });
///
///     var fullEntryLink = new Gcp.DataPlex.EntryLink("full_entry_link", new()
///     {
///         Project = "1111111111111",
///         Location = "us-central1",
///         EntryGroupId = entry_group_full.EntryGroupId,
///         EntryLinkId = "tf-test-entry-link_2067",
///         EntryLinkType = "projects/655216118709/locations/global/entryLinkTypes/definition",
///         EntryReferences = new[]
///         {
///             new Gcp.DataPlex.Inputs.EntryLinkEntryReferenceArgs
///             {
///                 Name = source.Name,
///                 Type = "SOURCE",
///                 Path = "",
///             },
///             new Gcp.DataPlex.Inputs.EntryLinkEntryReferenceArgs
///             {
///                 Name = Output.Tuple(entry_group_full.Project, entry_group_full.Project, termTestIdFull.GlossaryId, termTestIdFullGlossaryTerm.TermId).Apply(values =>
///                 {
///                     var entry-group-fullProject = values.Item1;
///                     var entry-group-fullProject1 = values.Item2;
///                     var glossaryId = values.Item3;
///                     var termId = values.Item4;
///                     return $"projects/{entry_group_fullProject}/locations/us-central1/entryGroups/@dataplex/entries/projects/{entry_group_fullProject1}/locations/us-central1/glossaries/{glossaryId}/terms/{termId}";
///                 }),
///                 Type = "TARGET",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		entry_group_full, err := dataplex.NewEntryGroup(ctx, "entry-group-full", &dataplex.EntryGroupArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryGroupId: pulumi.String("tf-test-entry-group_2605"),
/// 			Project:      pulumi.String("1111111111111"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		entry_type_full, err := dataplex.NewEntryType(ctx, "entry-type-full", &dataplex.EntryTypeArgs{
/// 			EntryTypeId: pulumi.String("tf-test-entry-type_22375"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Project:     pulumi.String("1111111111111"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := dataplex.NewEntry(ctx, "source", &dataplex.EntryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryGroupId: entry_group_full.EntryGroupId,
/// 			EntryId:      pulumi.String("tf-test-source-entry_34535"),
/// 			EntryType:    entry_type_full.Name,
/// 			Project:      pulumi.String("1111111111111"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		termTestIdFull, err := dataplex.NewGlossary(ctx, "term_test_id_full", &dataplex.GlossaryArgs{
/// 			GlossaryId: pulumi.String("tf-test-glossary_29439"),
/// 			Location:   pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		termTestIdFullGlossaryTerm, err := dataplex.NewGlossaryTerm(ctx, "term_test_id_full", &dataplex.GlossaryTermArgs{
/// 			Parent: pulumi.All(termTestIdFull.Project, termTestIdFull.GlossaryId).ApplyT(func(_args []interface{}) (string, error) {
/// 				project := _args[0].(string)
/// 				glossaryId := _args[1].(string)
/// 				return fmt.Sprintf("projects/%v/locations/us-central1/glossaries/%v", project, glossaryId), nil
/// 			}).(pulumi.StringOutput),
/// 			GlossaryId: termTestIdFull.GlossaryId,
/// 			Location:   pulumi.String("us-central1"),
/// 			TermId:     pulumi.String("tf-test-term-full_87786"),
/// 			Labels: pulumi.StringMap{
/// 				"tag": pulumi.String("test-tf"),
/// 			},
/// 			DisplayName: pulumi.String("terraform term"),
/// 			Description: pulumi.String("term created by Terraform"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewEntryLink(ctx, "full_entry_link", &dataplex.EntryLinkArgs{
/// 			Project:       pulumi.String("1111111111111"),
/// 			Location:      pulumi.String("us-central1"),
/// 			EntryGroupId:  entry_group_full.EntryGroupId,
/// 			EntryLinkId:   pulumi.String("tf-test-entry-link_2067"),
/// 			EntryLinkType: pulumi.String("projects/655216118709/locations/global/entryLinkTypes/definition"),
/// 			EntryReferences: dataplex.EntryLinkEntryReferenceArray{
/// 				&dataplex.EntryLinkEntryReferenceArgs{
/// 					Name: source.Name,
/// 					Type: pulumi.String("SOURCE"),
/// 					Path: pulumi.String(""),
/// 				},
/// 				&dataplex.EntryLinkEntryReferenceArgs{
/// 					Name: pulumi.All(entry_group_full.Project, entry_group_full.Project, termTestIdFull.GlossaryId, termTestIdFullGlossaryTerm.TermId).ApplyT(func(_args []interface{}) (string, error) {
/// 						entry - group - fullProject := _args[0].(string)
/// 						entry - group - fullProject1 := _args[1].(string)
/// 						glossaryId := _args[2].(string)
/// 						termId := _args[3].(*string)
/// 						return fmt.Sprintf("projects/%v/locations/us-central1/entryGroups/@dataplex/entries/projects/%v/locations/us-central1/glossaries/%v/terms/%v", entry_group_fullProject, entry_group_fullProject1, glossaryId, termId), nil
/// 					}).(pulumi.StringOutput),
/// 					Type: pulumi.String("TARGET"),
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
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
/// import com.pulumi.gcp.dataplex.EntryType;
/// import com.pulumi.gcp.dataplex.EntryTypeArgs;
/// import com.pulumi.gcp.dataplex.Entry;
/// import com.pulumi.gcp.dataplex.EntryArgs;
/// import com.pulumi.gcp.dataplex.Glossary;
/// import com.pulumi.gcp.dataplex.GlossaryArgs;
/// import com.pulumi.gcp.dataplex.GlossaryTerm;
/// import com.pulumi.gcp.dataplex.GlossaryTermArgs;
/// import com.pulumi.gcp.dataplex.EntryLink;
/// import com.pulumi.gcp.dataplex.EntryLinkArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryLinkEntryReferenceArgs;
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
///         var entry_group_full = new EntryGroup("entry-group-full", EntryGroupArgs.builder()
///             .location("us-central1")
///             .entryGroupId("tf-test-entry-group_2605")
///             .project("1111111111111")
///             .build());
///
///         var entry_type_full = new EntryType("entry-type-full", EntryTypeArgs.builder()
///             .entryTypeId("tf-test-entry-type_22375")
///             .location("us-central1")
///             .project("1111111111111")
///             .build());
///
///         var source = new Entry("source", EntryArgs.builder()
///             .location("us-central1")
///             .entryGroupId(entry_group_full.entryGroupId())
///             .entryId("tf-test-source-entry_34535")
///             .entryType(entry_type_full.name())
///             .project("1111111111111")
///             .build());
///
///         var termTestIdFull = new Glossary("termTestIdFull", GlossaryArgs.builder()
///             .glossaryId("tf-test-glossary_29439")
///             .location("us-central1")
///             .build());
///
///         var termTestIdFullGlossaryTerm = new GlossaryTerm("termTestIdFullGlossaryTerm", GlossaryTermArgs.builder()
///             .parent(Output.tuple(termTestIdFull.project(), termTestIdFull.glossaryId()).applyValue(values -> {
///                 var project = values.t1;
///                 var glossaryId = values.t2;
///                 return String.format("projects/%s/locations/us-central1/glossaries/%s", project,glossaryId);
///             }))
///             .glossaryId(termTestIdFull.glossaryId())
///             .location("us-central1")
///             .termId("tf-test-term-full_87786")
///             .labels(Map.of("tag", "test-tf"))
///             .displayName("terraform term")
///             .description("term created by Terraform")
///             .build());
///
///         var fullEntryLink = new EntryLink("fullEntryLink", EntryLinkArgs.builder()
///             .project("1111111111111")
///             .location("us-central1")
///             .entryGroupId(entry_group_full.entryGroupId())
///             .entryLinkId("tf-test-entry-link_2067")
///             .entryLinkType("projects/655216118709/locations/global/entryLinkTypes/definition")
///             .entryReferences(
///                 EntryLinkEntryReferenceArgs.builder()
///                     .name(source.name())
///                     .type("SOURCE")
///                     .path("")
///                     .build(),
///                 EntryLinkEntryReferenceArgs.builder()
///                     .name(Output.tuple(entry_group_full.project(), entry_group_full.project(), termTestIdFull.glossaryId(), termTestIdFullGlossaryTerm.termId()).applyValue(values -> {
///                         var entry-group-fullProject = values.t1;
///                         var entry-group-fullProject1 = values.t2;
///                         var glossaryId = values.t3;
///                         var termId = values.t4;
///                         return String.format("projects/%s/locations/us-central1/entryGroups/@dataplex/entries/projects/%s/locations/us-central1/glossaries/%s/terms/%s", entry_group_fullProject,entry_group_fullProject1,glossaryId,termId);
///                     }))
///                     .type("TARGET")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   entry-group-full:
///     type: gcp:dataplex:EntryGroup
///     properties:
///       location: us-central1
///       entryGroupId: tf-test-entry-group_2605
///       project: '1111111111111'
///   source:
///     type: gcp:dataplex:Entry
///     properties:
///       location: us-central1
///       entryGroupId: ${["entry-group-full"].entryGroupId}
///       entryId: tf-test-source-entry_34535
///       entryType: ${["entry-type-full"].name}
///       project: '1111111111111'
///   entry-type-full:
///     type: gcp:dataplex:EntryType
///     properties:
///       entryTypeId: tf-test-entry-type_22375
///       location: us-central1
///       project: '1111111111111'
///   termTestIdFull:
///     type: gcp:dataplex:Glossary
///     name: term_test_id_full
///     properties:
///       glossaryId: tf-test-glossary_29439
///       location: us-central1
///   termTestIdFullGlossaryTerm:
///     type: gcp:dataplex:GlossaryTerm
///     name: term_test_id_full
///     properties:
///       parent: projects/${termTestIdFull.project}/locations/us-central1/glossaries/${termTestIdFull.glossaryId}
///       glossaryId: ${termTestIdFull.glossaryId}
///       location: us-central1
///       termId: tf-test-term-full_87786
///       labels:
///         tag: test-tf
///       displayName: terraform term
///       description: term created by Terraform
///   fullEntryLink:
///     type: gcp:dataplex:EntryLink
///     name: full_entry_link
///     properties:
///       project: '1111111111111'
///       location: us-central1
///       entryGroupId: ${["entry-group-full"].entryGroupId}
///       entryLinkId: tf-test-entry-link_2067
///       entryLinkType: projects/655216118709/locations/global/entryLinkTypes/definition
///       entryReferences:
///         - name: ${source.name}
///           type: SOURCE
///           path: ""
///         - name: projects/${["entry-group-full"].project}/locations/us-central1/entryGroups/@dataplex/entries/projects/${["entry-group-full"].project}/locations/us-central1/glossaries/${termTestIdFull.glossaryId}/terms/${termTestIdFullGlossaryTerm.termId}
///           type: TARGET
/// ```
///
///
/// ## Import
///
/// EntryLink can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}/entryLinks/{{entry_link_id}}`
///
/// * `{{project}}/{{location}}/{{entry_group_id}}/{{entry_link_id}}`
///
/// * `{{location}}/{{entry_group_id}}/{{entry_link_id}}`
///
/// When using the `pulumi import` command, EntryLink can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryLink:EntryLink default projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}/entryLinks/{{entry_link_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryLink:EntryLink default {{project}}/{{location}}/{{entry_group_id}}/{{entry_link_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryLink:EntryLink default {{location}}/{{entry_group_id}}/{{entry_link_id}}
/// ```
class EntryLink extends pulumi.CustomResource {
  /// The time when the Entry Link was created.
  late final pulumi.Output<String> createTime;
  /// The id of the entry group this entry link is in.
  late final pulumi.Output<String> entryGroupId;
  /// The id of the entry link to create.
  late final pulumi.Output<String> entryLinkId;
  /// Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// projects/dataplex-types/locations/global/entryLinkTypes/definition
  late final pulumi.Output<String> entryLinkType;
  /// Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> entryReferences;
  /// The location for the entry.
  late final pulumi.Output<String> location;
  /// The relative resource name of the Entry Link, of the form:
  /// projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}/entryLinks/{entry_link_id}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The time when the Entry Link was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EntryLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntryLink]. {@macro pulumi_dataplex_entry_link_entry_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntryLink(
    String name, {
    EntryLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryLink:EntryLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    entryGroupId = registerOutput<String>('entryGroupId');
    entryLinkId = registerOutput<String>('entryLinkId');
    entryLinkType = registerOutput<String>('entryLinkType');
    entryReferences = registerOutput<List<Map<String, dynamic>>>('entryReferences');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [EntryLink] resource's state with the given [name] and [id].
  static EntryLink get(
    String name,
    pulumi.Input<String> id, {
    EntryLinkState? state,
  }) {
    return EntryLink._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EntryLink._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryLink:EntryLink',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    entryGroupId = registerOutput<String>('entryGroupId');
    entryLinkId = registerOutput<String>('entryLinkId');
    entryLinkType = registerOutput<String>('entryLinkType');
    entryReferences = registerOutput<List<Map<String, dynamic>>>('entryReferences');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
