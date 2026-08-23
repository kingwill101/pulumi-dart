import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';

/// &gt; **Warning:** `gcp.datacatalog.Tag` is deprecated and will be removed in a future major release. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// Tags are used to attach custom metadata to Data Catalog resources. Tags conform to the specifications within their tag template.
///
/// See [Data Catalog IAM](https://cloud.google.com/data-catalog/docs/concepts/iam) for information on the permissions needed to create or view tags.
///
///
/// To get more information about Tag, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.tags)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Entry Tag Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const entryGroup = new gcp.datacatalog.EntryGroup("entry_group", {entryGroupId: "my_entry_group"});
/// const entry = new gcp.datacatalog.Entry("entry", {
///     entryGroup: entryGroup.id,
///     entryId: "my_entry",
///     userSpecifiedType: "my_custom_type",
///     userSpecifiedSystem: "SomethingExternal",
/// });
/// const tagTemplate = new gcp.datacatalog.TagTemplate("tag_template", {
///     tagTemplateId: "my_template",
///     region: "us-central1",
///     displayName: "Demo Tag Template",
///     fields: [
///         {
///             fieldId: "source",
///             displayName: "Source of data asset",
///             type: {
///                 primitiveType: "STRING",
///             },
///             isRequired: true,
///         },
///         {
///             fieldId: "num_rows",
///             displayName: "Number of rows in the data asset",
///             type: {
///                 primitiveType: "DOUBLE",
///             },
///         },
///         {
///             fieldId: "pii_type",
///             displayName: "PII type",
///             type: {
///                 enumType: {
///                     allowedValues: [
///                         {
///                             displayName: "EMAIL",
///                         },
///                         {
///                             displayName: "SOCIAL SECURITY NUMBER",
///                         },
///                         {
///                             displayName: "NONE",
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
///     forceDelete: false,
/// });
/// const basicTag = new gcp.datacatalog.Tag("basic_tag", {
///     parent: entry.id,
///     template: tagTemplate.id,
///     fields: [{
///         fieldName: "source",
///         stringValue: "my-string",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// entry_group = gcp.datacatalog.EntryGroup("entry_group", entry_group_id="my_entry_group")
/// entry = gcp.datacatalog.Entry("entry",
///     entry_group=entry_group.id,
///     entry_id="my_entry",
///     user_specified_type="my_custom_type",
///     user_specified_system="SomethingExternal")
/// tag_template = gcp.datacatalog.TagTemplate("tag_template",
///     tag_template_id="my_template",
///     region="us-central1",
///     display_name="Demo Tag Template",
///     fields=[
///         {
///             "field_id": "source",
///             "display_name": "Source of data asset",
///             "type": {
///                 "primitive_type": "STRING",
///             },
///             "is_required": True,
///         },
///         {
///             "field_id": "num_rows",
///             "display_name": "Number of rows in the data asset",
///             "type": {
///                 "primitive_type": "DOUBLE",
///             },
///         },
///         {
///             "field_id": "pii_type",
///             "display_name": "PII type",
///             "type": {
///                 "enum_type": {
///                     "allowed_values": [
///                         {
///                             "display_name": "EMAIL",
///                         },
///                         {
///                             "display_name": "SOCIAL SECURITY NUMBER",
///                         },
///                         {
///                             "display_name": "NONE",
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
///     force_delete=False)
/// basic_tag = gcp.datacatalog.Tag("basic_tag",
///     parent=entry.id,
///     template=tag_template.id,
///     fields=[{
///         "field_name": "source",
///         "string_value": "my-string",
///     }])
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
///         EntryGroupId = "my_entry_group",
///     });
///
///     var entry = new Gcp.DataCatalog.Entry("entry", new()
///     {
///         EntryGroup = entryGroup.Id,
///         EntryId = "my_entry",
///         UserSpecifiedType = "my_custom_type",
///         UserSpecifiedSystem = "SomethingExternal",
///     });
///
///     var tagTemplate = new Gcp.DataCatalog.TagTemplate("tag_template", new()
///     {
///         TagTemplateId = "my_template",
///         Region = "us-central1",
///         DisplayName = "Demo Tag Template",
///         Fields = new[]
///         {
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "source",
///                 DisplayName = "Source of data asset",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     PrimitiveType = "STRING",
///                 },
///                 IsRequired = true,
///             },
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "num_rows",
///                 DisplayName = "Number of rows in the data asset",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     PrimitiveType = "DOUBLE",
///                 },
///             },
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "pii_type",
///                 DisplayName = "PII type",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     EnumType = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeArgs
///                     {
///                         AllowedValues = new[]
///                         {
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "EMAIL",
///                             },
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "SOCIAL SECURITY NUMBER",
///                             },
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "NONE",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         ForceDelete = false,
///     });
///
///     var basicTag = new Gcp.DataCatalog.Tag("basic_tag", new()
///     {
///         Parent = entry.Id,
///         Template = tagTemplate.Id,
///         Fields = new[]
///         {
///             new Gcp.DataCatalog.Inputs.TagFieldArgs
///             {
///                 FieldName = "source",
///                 StringValue = "my-string",
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
/// 			EntryGroupId: pulumi.String("my_entry_group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		entry, err := datacatalog.NewEntry(ctx, "entry", &datacatalog.EntryArgs{
/// 			EntryGroup:          entryGroup.ID().ToIDOutput().ToStringOutput(),
/// 			EntryId:             pulumi.String("my_entry"),
/// 			UserSpecifiedType:   pulumi.String("my_custom_type"),
/// 			UserSpecifiedSystem: pulumi.String("SomethingExternal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagTemplate, err := datacatalog.NewTagTemplate(ctx, "tag_template", &datacatalog.TagTemplateArgs{
/// 			TagTemplateId: pulumi.String("my_template"),
/// 			Region:        pulumi.String("us-central1"),
/// 			DisplayName:   pulumi.String("Demo Tag Template"),
/// 			Fields: datacatalog.TagTemplateFieldArray{
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("source"),
/// 					DisplayName: pulumi.String("Source of data asset"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						PrimitiveType: pulumi.String("STRING"),
/// 					},
/// 					IsRequired: pulumi.Bool(true),
/// 				},
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("num_rows"),
/// 					DisplayName: pulumi.String("Number of rows in the data asset"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						PrimitiveType: pulumi.String("DOUBLE"),
/// 					},
/// 				},
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("pii_type"),
/// 					DisplayName: pulumi.String("PII type"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						EnumType: &datacatalog.TagTemplateFieldTypeEnumTypeArgs{
/// 							AllowedValues: datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArray{
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("EMAIL"),
/// 								},
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("SOCIAL SECURITY NUMBER"),
/// 								},
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("NONE"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ForceDelete: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewTag(ctx, "basic_tag", &datacatalog.TagArgs{
/// 			Parent:   entry.ID().ToIDOutput().ToStringOutput(),
/// 			Template: tagTemplate.ID().ToIDOutput().ToStringOutput(),
/// 			Fields: datacatalog.TagFieldArray{
/// 				&datacatalog.TagFieldArgs{
/// 					FieldName:   pulumi.String("source"),
/// 					StringValue: pulumi.String("my-string"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_datacatalog_entry" "entry" {
///   entry_group           = gcp_datacatalog_entrygroup.entry_group.id
///   entry_id              = "my_entry"
///   user_specified_type   = "my_custom_type"
///   user_specified_system = "SomethingExternal"
/// }
/// resource "gcp_datacatalog_entrygroup" "entry_group" {
///   entry_group_id = "my_entry_group"
/// }
/// resource "gcp_datacatalog_tagtemplate" "tag_template" {
///   tag_template_id = "my_template"
///   region          = "us-central1"
///   display_name    = "Demo Tag Template"
///   fields {
///     field_id     = "source"
///     display_name = "Source of data asset"
///     type = {
///       primitive_type = "STRING"
///     }
///     is_required = true
///   }
///   fields {
///     field_id     = "num_rows"
///     display_name = "Number of rows in the data asset"
///     type = {
///       primitive_type = "DOUBLE"
///     }
///   }
///   fields {
///     field_id     = "pii_type"
///     display_name = "PII type"
///     type = {
///       enum_type = {
///         allowed_values = [{
///           "displayName" = "EMAIL"
///           }, {
///           "displayName" = "SOCIAL SECURITY NUMBER"
///           }, {
///           "displayName" = "NONE"
///         }]
///       }
///     }
///   }
///   force_delete = "false"
/// }
/// resource "gcp_datacatalog_tag" "basic_tag" {
///   parent   = gcp_datacatalog_entry.entry.id
///   template = gcp_datacatalog_tagtemplate.tag_template.id
///   fields {
///     field_name   = "source"
///     string_value = "my-string"
///   }
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
/// import com.pulumi.gcp.datacatalog.TagTemplate;
/// import com.pulumi.gcp.datacatalog.TagTemplateArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeEnumTypeArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs;
/// import com.pulumi.gcp.datacatalog.Tag;
/// import com.pulumi.gcp.datacatalog.TagArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagFieldArgs;
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
///         var entryGroup = new EntryGroup("entryGroup", EntryGroupArgs.builder()
///             .entryGroupId("my_entry_group")
///             .build());
///
///         var entry = new Entry("entry", EntryArgs.builder()
///             .entryGroup(entryGroup.id())
///             .entryId("my_entry")
///             .userSpecifiedType("my_custom_type")
///             .userSpecifiedSystem("SomethingExternal")
///             .build());
///
///         var tagTemplate = new TagTemplate("tagTemplate", TagTemplateArgs.builder()
///             .tagTemplateId("my_template")
///             .region("us-central1")
///             .displayName("Demo Tag Template")
///             .fields(
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("source")
///                     .displayName("Source of data asset")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .primitiveType("STRING")
///                         .build())
///                     .isRequired(true)
///                     .build(),
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("num_rows")
///                     .displayName("Number of rows in the data asset")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .primitiveType("DOUBLE")
///                         .build())
///                     .build(),
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("pii_type")
///                     .displayName("PII type")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .enumType(TagTemplateFieldTypeEnumTypeArgs.builder()
///                             .allowedValues(
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("EMAIL")
///                                     .build(),
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("SOCIAL SECURITY NUMBER")
///                                     .build(),
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("NONE")
///                                     .build())
///                             .build())
///                         .build())
///                     .build())
///             .forceDelete(false)
///             .build());
///
///         var basicTag = new Tag("basicTag", TagArgs.builder()
///             .parent(entry.id())
///             .template(tagTemplate.id())
///             .fields(TagFieldArgs.builder()
///                 .fieldName("source")
///                 .stringValue("my-string")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   entry:
///     type: gcp:datacatalog:Entry
///     properties:
///       entryGroup: ${entryGroup.id}
///       entryId: my_entry
///       userSpecifiedType: my_custom_type
///       userSpecifiedSystem: SomethingExternal
///   entryGroup:
///     type: gcp:datacatalog:EntryGroup
///     name: entry_group
///     properties:
///       entryGroupId: my_entry_group
///   tagTemplate:
///     type: gcp:datacatalog:TagTemplate
///     name: tag_template
///     properties:
///       tagTemplateId: my_template
///       region: us-central1
///       displayName: Demo Tag Template
///       fields:
///         - fieldId: source
///           displayName: Source of data asset
///           type:
///             primitiveType: STRING
///           isRequired: true
///         - fieldId: num_rows
///           displayName: Number of rows in the data asset
///           type:
///             primitiveType: DOUBLE
///         - fieldId: pii_type
///           displayName: PII type
///           type:
///             enumType:
///               allowedValues:
///                 - displayName: EMAIL
///                 - displayName: SOCIAL SECURITY NUMBER
///                 - displayName: NONE
///       forceDelete: 'false'
///   basicTag:
///     type: gcp:datacatalog:Tag
///     name: basic_tag
///     properties:
///       parent: ${entry.id}
///       template: ${tagTemplate.id}
///       fields:
///         - fieldName: source
///           stringValue: my-string
/// ```
///
/// ### Data Catalog Entry Group Tag
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const entryGroup = new gcp.datacatalog.EntryGroup("entry_group", {entryGroupId: "my_entry_group"});
/// const firstEntry = new gcp.datacatalog.Entry("first_entry", {
///     entryGroup: entryGroup.id,
///     entryId: "first_entry",
///     userSpecifiedType: "my_custom_type",
///     userSpecifiedSystem: "SomethingExternal",
/// });
/// const secondEntry = new gcp.datacatalog.Entry("second_entry", {
///     entryGroup: entryGroup.id,
///     entryId: "second_entry",
///     userSpecifiedType: "another_custom_type",
///     userSpecifiedSystem: "SomethingElseExternal",
/// });
/// const tagTemplate = new gcp.datacatalog.TagTemplate("tag_template", {
///     tagTemplateId: "my_template",
///     region: "us-central1",
///     displayName: "Demo Tag Template",
///     fields: [
///         {
///             fieldId: "source",
///             displayName: "Source of data asset",
///             type: {
///                 primitiveType: "STRING",
///             },
///             isRequired: true,
///         },
///         {
///             fieldId: "num_rows",
///             displayName: "Number of rows in the data asset",
///             type: {
///                 primitiveType: "DOUBLE",
///             },
///         },
///         {
///             fieldId: "pii_type",
///             displayName: "PII type",
///             type: {
///                 enumType: {
///                     allowedValues: [
///                         {
///                             displayName: "EMAIL",
///                         },
///                         {
///                             displayName: "SOCIAL SECURITY NUMBER",
///                         },
///                         {
///                             displayName: "NONE",
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
///     forceDelete: false,
/// });
/// const entryGroupTag = new gcp.datacatalog.Tag("entry_group_tag", {
///     parent: entryGroup.id,
///     template: tagTemplate.id,
///     fields: [{
///         fieldName: "source",
///         stringValue: "my-string",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// entry_group = gcp.datacatalog.EntryGroup("entry_group", entry_group_id="my_entry_group")
/// first_entry = gcp.datacatalog.Entry("first_entry",
///     entry_group=entry_group.id,
///     entry_id="first_entry",
///     user_specified_type="my_custom_type",
///     user_specified_system="SomethingExternal")
/// second_entry = gcp.datacatalog.Entry("second_entry",
///     entry_group=entry_group.id,
///     entry_id="second_entry",
///     user_specified_type="another_custom_type",
///     user_specified_system="SomethingElseExternal")
/// tag_template = gcp.datacatalog.TagTemplate("tag_template",
///     tag_template_id="my_template",
///     region="us-central1",
///     display_name="Demo Tag Template",
///     fields=[
///         {
///             "field_id": "source",
///             "display_name": "Source of data asset",
///             "type": {
///                 "primitive_type": "STRING",
///             },
///             "is_required": True,
///         },
///         {
///             "field_id": "num_rows",
///             "display_name": "Number of rows in the data asset",
///             "type": {
///                 "primitive_type": "DOUBLE",
///             },
///         },
///         {
///             "field_id": "pii_type",
///             "display_name": "PII type",
///             "type": {
///                 "enum_type": {
///                     "allowed_values": [
///                         {
///                             "display_name": "EMAIL",
///                         },
///                         {
///                             "display_name": "SOCIAL SECURITY NUMBER",
///                         },
///                         {
///                             "display_name": "NONE",
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
///     force_delete=False)
/// entry_group_tag = gcp.datacatalog.Tag("entry_group_tag",
///     parent=entry_group.id,
///     template=tag_template.id,
///     fields=[{
///         "field_name": "source",
///         "string_value": "my-string",
///     }])
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
///         EntryGroupId = "my_entry_group",
///     });
///
///     var firstEntry = new Gcp.DataCatalog.Entry("first_entry", new()
///     {
///         EntryGroup = entryGroup.Id,
///         EntryId = "first_entry",
///         UserSpecifiedType = "my_custom_type",
///         UserSpecifiedSystem = "SomethingExternal",
///     });
///
///     var secondEntry = new Gcp.DataCatalog.Entry("second_entry", new()
///     {
///         EntryGroup = entryGroup.Id,
///         EntryId = "second_entry",
///         UserSpecifiedType = "another_custom_type",
///         UserSpecifiedSystem = "SomethingElseExternal",
///     });
///
///     var tagTemplate = new Gcp.DataCatalog.TagTemplate("tag_template", new()
///     {
///         TagTemplateId = "my_template",
///         Region = "us-central1",
///         DisplayName = "Demo Tag Template",
///         Fields = new[]
///         {
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "source",
///                 DisplayName = "Source of data asset",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     PrimitiveType = "STRING",
///                 },
///                 IsRequired = true,
///             },
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "num_rows",
///                 DisplayName = "Number of rows in the data asset",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     PrimitiveType = "DOUBLE",
///                 },
///             },
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "pii_type",
///                 DisplayName = "PII type",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     EnumType = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeArgs
///                     {
///                         AllowedValues = new[]
///                         {
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "EMAIL",
///                             },
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "SOCIAL SECURITY NUMBER",
///                             },
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "NONE",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         ForceDelete = false,
///     });
///
///     var entryGroupTag = new Gcp.DataCatalog.Tag("entry_group_tag", new()
///     {
///         Parent = entryGroup.Id,
///         Template = tagTemplate.Id,
///         Fields = new[]
///         {
///             new Gcp.DataCatalog.Inputs.TagFieldArgs
///             {
///                 FieldName = "source",
///                 StringValue = "my-string",
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
/// 			EntryGroupId: pulumi.String("my_entry_group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewEntry(ctx, "first_entry", &datacatalog.EntryArgs{
/// 			EntryGroup:          entryGroup.ID().ToIDOutput().ToStringOutput(),
/// 			EntryId:             pulumi.String("first_entry"),
/// 			UserSpecifiedType:   pulumi.String("my_custom_type"),
/// 			UserSpecifiedSystem: pulumi.String("SomethingExternal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewEntry(ctx, "second_entry", &datacatalog.EntryArgs{
/// 			EntryGroup:          entryGroup.ID().ToIDOutput().ToStringOutput(),
/// 			EntryId:             pulumi.String("second_entry"),
/// 			UserSpecifiedType:   pulumi.String("another_custom_type"),
/// 			UserSpecifiedSystem: pulumi.String("SomethingElseExternal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagTemplate, err := datacatalog.NewTagTemplate(ctx, "tag_template", &datacatalog.TagTemplateArgs{
/// 			TagTemplateId: pulumi.String("my_template"),
/// 			Region:        pulumi.String("us-central1"),
/// 			DisplayName:   pulumi.String("Demo Tag Template"),
/// 			Fields: datacatalog.TagTemplateFieldArray{
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("source"),
/// 					DisplayName: pulumi.String("Source of data asset"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						PrimitiveType: pulumi.String("STRING"),
/// 					},
/// 					IsRequired: pulumi.Bool(true),
/// 				},
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("num_rows"),
/// 					DisplayName: pulumi.String("Number of rows in the data asset"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						PrimitiveType: pulumi.String("DOUBLE"),
/// 					},
/// 				},
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("pii_type"),
/// 					DisplayName: pulumi.String("PII type"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						EnumType: &datacatalog.TagTemplateFieldTypeEnumTypeArgs{
/// 							AllowedValues: datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArray{
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("EMAIL"),
/// 								},
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("SOCIAL SECURITY NUMBER"),
/// 								},
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("NONE"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ForceDelete: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewTag(ctx, "entry_group_tag", &datacatalog.TagArgs{
/// 			Parent:   entryGroup.ID().ToIDOutput().ToStringOutput(),
/// 			Template: tagTemplate.ID().ToIDOutput().ToStringOutput(),
/// 			Fields: datacatalog.TagFieldArray{
/// 				&datacatalog.TagFieldArgs{
/// 					FieldName:   pulumi.String("source"),
/// 					StringValue: pulumi.String("my-string"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_datacatalog_entry" "first_entry" {
///   entry_group           = gcp_datacatalog_entrygroup.entry_group.id
///   entry_id              = "first_entry"
///   user_specified_type   = "my_custom_type"
///   user_specified_system = "SomethingExternal"
/// }
/// resource "gcp_datacatalog_entry" "second_entry" {
///   entry_group           = gcp_datacatalog_entrygroup.entry_group.id
///   entry_id              = "second_entry"
///   user_specified_type   = "another_custom_type"
///   user_specified_system = "SomethingElseExternal"
/// }
/// resource "gcp_datacatalog_entrygroup" "entry_group" {
///   entry_group_id = "my_entry_group"
/// }
/// resource "gcp_datacatalog_tagtemplate" "tag_template" {
///   tag_template_id = "my_template"
///   region          = "us-central1"
///   display_name    = "Demo Tag Template"
///   fields {
///     field_id     = "source"
///     display_name = "Source of data asset"
///     type = {
///       primitive_type = "STRING"
///     }
///     is_required = true
///   }
///   fields {
///     field_id     = "num_rows"
///     display_name = "Number of rows in the data asset"
///     type = {
///       primitive_type = "DOUBLE"
///     }
///   }
///   fields {
///     field_id     = "pii_type"
///     display_name = "PII type"
///     type = {
///       enum_type = {
///         allowed_values = [{
///           "displayName" = "EMAIL"
///           }, {
///           "displayName" = "SOCIAL SECURITY NUMBER"
///           }, {
///           "displayName" = "NONE"
///         }]
///       }
///     }
///   }
///   force_delete = "false"
/// }
/// resource "gcp_datacatalog_tag" "entry_group_tag" {
///   parent   = gcp_datacatalog_entrygroup.entry_group.id
///   template = gcp_datacatalog_tagtemplate.tag_template.id
///   fields {
///     field_name   = "source"
///     string_value = "my-string"
///   }
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
/// import com.pulumi.gcp.datacatalog.TagTemplate;
/// import com.pulumi.gcp.datacatalog.TagTemplateArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeEnumTypeArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs;
/// import com.pulumi.gcp.datacatalog.Tag;
/// import com.pulumi.gcp.datacatalog.TagArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagFieldArgs;
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
///         var entryGroup = new EntryGroup("entryGroup", EntryGroupArgs.builder()
///             .entryGroupId("my_entry_group")
///             .build());
///
///         var firstEntry = new Entry("firstEntry", EntryArgs.builder()
///             .entryGroup(entryGroup.id())
///             .entryId("first_entry")
///             .userSpecifiedType("my_custom_type")
///             .userSpecifiedSystem("SomethingExternal")
///             .build());
///
///         var secondEntry = new Entry("secondEntry", EntryArgs.builder()
///             .entryGroup(entryGroup.id())
///             .entryId("second_entry")
///             .userSpecifiedType("another_custom_type")
///             .userSpecifiedSystem("SomethingElseExternal")
///             .build());
///
///         var tagTemplate = new TagTemplate("tagTemplate", TagTemplateArgs.builder()
///             .tagTemplateId("my_template")
///             .region("us-central1")
///             .displayName("Demo Tag Template")
///             .fields(
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("source")
///                     .displayName("Source of data asset")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .primitiveType("STRING")
///                         .build())
///                     .isRequired(true)
///                     .build(),
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("num_rows")
///                     .displayName("Number of rows in the data asset")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .primitiveType("DOUBLE")
///                         .build())
///                     .build(),
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("pii_type")
///                     .displayName("PII type")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .enumType(TagTemplateFieldTypeEnumTypeArgs.builder()
///                             .allowedValues(
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("EMAIL")
///                                     .build(),
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("SOCIAL SECURITY NUMBER")
///                                     .build(),
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("NONE")
///                                     .build())
///                             .build())
///                         .build())
///                     .build())
///             .forceDelete(false)
///             .build());
///
///         var entryGroupTag = new Tag("entryGroupTag", TagArgs.builder()
///             .parent(entryGroup.id())
///             .template(tagTemplate.id())
///             .fields(TagFieldArgs.builder()
///                 .fieldName("source")
///                 .stringValue("my-string")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   firstEntry:
///     type: gcp:datacatalog:Entry
///     name: first_entry
///     properties:
///       entryGroup: ${entryGroup.id}
///       entryId: first_entry
///       userSpecifiedType: my_custom_type
///       userSpecifiedSystem: SomethingExternal
///   secondEntry:
///     type: gcp:datacatalog:Entry
///     name: second_entry
///     properties:
///       entryGroup: ${entryGroup.id}
///       entryId: second_entry
///       userSpecifiedType: another_custom_type
///       userSpecifiedSystem: SomethingElseExternal
///   entryGroup:
///     type: gcp:datacatalog:EntryGroup
///     name: entry_group
///     properties:
///       entryGroupId: my_entry_group
///   tagTemplate:
///     type: gcp:datacatalog:TagTemplate
///     name: tag_template
///     properties:
///       tagTemplateId: my_template
///       region: us-central1
///       displayName: Demo Tag Template
///       fields:
///         - fieldId: source
///           displayName: Source of data asset
///           type:
///             primitiveType: STRING
///           isRequired: true
///         - fieldId: num_rows
///           displayName: Number of rows in the data asset
///           type:
///             primitiveType: DOUBLE
///         - fieldId: pii_type
///           displayName: PII type
///           type:
///             enumType:
///               allowedValues:
///                 - displayName: EMAIL
///                 - displayName: SOCIAL SECURITY NUMBER
///                 - displayName: NONE
///       forceDelete: 'false'
///   entryGroupTag:
///     type: gcp:datacatalog:Tag
///     name: entry_group_tag
///     properties:
///       parent: ${entryGroup.id}
///       template: ${tagTemplate.id}
///       fields:
///         - fieldName: source
///           stringValue: my-string
/// ```
///
/// ### Data Catalog Entry Tag Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const entryGroup = new gcp.datacatalog.EntryGroup("entry_group", {entryGroupId: "my_entry_group"});
/// const entry = new gcp.datacatalog.Entry("entry", {
///     entryGroup: entryGroup.id,
///     entryId: "my_entry",
///     userSpecifiedType: "my_custom_type",
///     userSpecifiedSystem: "SomethingExternal",
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
/// const tagTemplate = new gcp.datacatalog.TagTemplate("tag_template", {
///     tagTemplateId: "my_template",
///     region: "us-central1",
///     displayName: "Demo Tag Template",
///     fields: [
///         {
///             fieldId: "source",
///             displayName: "Source of data asset",
///             type: {
///                 primitiveType: "STRING",
///             },
///             isRequired: true,
///         },
///         {
///             fieldId: "num_rows",
///             displayName: "Number of rows in the data asset",
///             type: {
///                 primitiveType: "DOUBLE",
///             },
///         },
///         {
///             fieldId: "pii_type",
///             displayName: "PII type",
///             type: {
///                 enumType: {
///                     allowedValues: [
///                         {
///                             displayName: "EMAIL",
///                         },
///                         {
///                             displayName: "SOCIAL SECURITY NUMBER",
///                         },
///                         {
///                             displayName: "NONE",
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
///     forceDelete: false,
/// });
/// const basicTag = new gcp.datacatalog.Tag("basic_tag", {
///     parent: entry.id,
///     template: tagTemplate.id,
///     fields: [
///         {
///             fieldName: "source",
///             stringValue: "my-string",
///         },
///         {
///             fieldName: "num_rows",
///             doubleValue: 5,
///         },
///         {
///             fieldName: "pii_type",
///             enumValue: "EMAIL",
///         },
///     ],
///     column: "address",
/// });
/// const second_tag = new gcp.datacatalog.Tag("second-tag", {
///     parent: entry.id,
///     template: tagTemplate.id,
///     fields: [
///         {
///             fieldName: "source",
///             stringValue: "my-string",
///         },
///         {
///             fieldName: "pii_type",
///             enumValue: "NONE",
///         },
///     ],
///     column: "first_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// entry_group = gcp.datacatalog.EntryGroup("entry_group", entry_group_id="my_entry_group")
/// entry = gcp.datacatalog.Entry("entry",
///     entry_group=entry_group.id,
///     entry_id="my_entry",
///     user_specified_type="my_custom_type",
///     user_specified_system="SomethingExternal",
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
/// tag_template = gcp.datacatalog.TagTemplate("tag_template",
///     tag_template_id="my_template",
///     region="us-central1",
///     display_name="Demo Tag Template",
///     fields=[
///         {
///             "field_id": "source",
///             "display_name": "Source of data asset",
///             "type": {
///                 "primitive_type": "STRING",
///             },
///             "is_required": True,
///         },
///         {
///             "field_id": "num_rows",
///             "display_name": "Number of rows in the data asset",
///             "type": {
///                 "primitive_type": "DOUBLE",
///             },
///         },
///         {
///             "field_id": "pii_type",
///             "display_name": "PII type",
///             "type": {
///                 "enum_type": {
///                     "allowed_values": [
///                         {
///                             "display_name": "EMAIL",
///                         },
///                         {
///                             "display_name": "SOCIAL SECURITY NUMBER",
///                         },
///                         {
///                             "display_name": "NONE",
///                         },
///                     ],
///                 },
///             },
///         },
///     ],
///     force_delete=False)
/// basic_tag = gcp.datacatalog.Tag("basic_tag",
///     parent=entry.id,
///     template=tag_template.id,
///     fields=[
///         {
///             "field_name": "source",
///             "string_value": "my-string",
///         },
///         {
///             "field_name": "num_rows",
///             "double_value": float(5),
///         },
///         {
///             "field_name": "pii_type",
///             "enum_value": "EMAIL",
///         },
///     ],
///     column="address")
/// second_tag = gcp.datacatalog.Tag("second-tag",
///     parent=entry.id,
///     template=tag_template.id,
///     fields=[
///         {
///             "field_name": "source",
///             "string_value": "my-string",
///         },
///         {
///             "field_name": "pii_type",
///             "enum_value": "NONE",
///         },
///     ],
///     column="first_name")
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
///         EntryGroupId = "my_entry_group",
///     });
///
///     var entry = new Gcp.DataCatalog.Entry("entry", new()
///     {
///         EntryGroup = entryGroup.Id,
///         EntryId = "my_entry",
///         UserSpecifiedType = "my_custom_type",
///         UserSpecifiedSystem = "SomethingExternal",
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
///     var tagTemplate = new Gcp.DataCatalog.TagTemplate("tag_template", new()
///     {
///         TagTemplateId = "my_template",
///         Region = "us-central1",
///         DisplayName = "Demo Tag Template",
///         Fields = new[]
///         {
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "source",
///                 DisplayName = "Source of data asset",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     PrimitiveType = "STRING",
///                 },
///                 IsRequired = true,
///             },
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "num_rows",
///                 DisplayName = "Number of rows in the data asset",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     PrimitiveType = "DOUBLE",
///                 },
///             },
///             new Gcp.DataCatalog.Inputs.TagTemplateFieldArgs
///             {
///                 FieldId = "pii_type",
///                 DisplayName = "PII type",
///                 Type = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeArgs
///                 {
///                     EnumType = new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeArgs
///                     {
///                         AllowedValues = new[]
///                         {
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "EMAIL",
///                             },
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "SOCIAL SECURITY NUMBER",
///                             },
///                             new Gcp.DataCatalog.Inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs
///                             {
///                                 DisplayName = "NONE",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         ForceDelete = false,
///     });
///
///     var basicTag = new Gcp.DataCatalog.Tag("basic_tag", new()
///     {
///         Parent = entry.Id,
///         Template = tagTemplate.Id,
///         Fields = new[]
///         {
///             new Gcp.DataCatalog.Inputs.TagFieldArgs
///             {
///                 FieldName = "source",
///                 StringValue = "my-string",
///             },
///             new Gcp.DataCatalog.Inputs.TagFieldArgs
///             {
///                 FieldName = "num_rows",
///                 DoubleValue = 5.0,
///             },
///             new Gcp.DataCatalog.Inputs.TagFieldArgs
///             {
///                 FieldName = "pii_type",
///                 EnumValue = "EMAIL",
///             },
///         },
///         Column = "address",
///     });
///
///     var second_tag = new Gcp.DataCatalog.Tag("second-tag", new()
///     {
///         Parent = entry.Id,
///         Template = tagTemplate.Id,
///         Fields = new[]
///         {
///             new Gcp.DataCatalog.Inputs.TagFieldArgs
///             {
///                 FieldName = "source",
///                 StringValue = "my-string",
///             },
///             new Gcp.DataCatalog.Inputs.TagFieldArgs
///             {
///                 FieldName = "pii_type",
///                 EnumValue = "NONE",
///             },
///         },
///         Column = "first_name",
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
/// 			EntryGroupId: pulumi.String("my_entry_group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		entry, err := datacatalog.NewEntry(ctx, "entry", &datacatalog.EntryArgs{
/// 			EntryGroup:          entryGroup.ID().ToIDOutput().ToStringOutput(),
/// 			EntryId:             pulumi.String("my_entry"),
/// 			UserSpecifiedType:   pulumi.String("my_custom_type"),
/// 			UserSpecifiedSystem: pulumi.String("SomethingExternal"),
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
/// 		tagTemplate, err := datacatalog.NewTagTemplate(ctx, "tag_template", &datacatalog.TagTemplateArgs{
/// 			TagTemplateId: pulumi.String("my_template"),
/// 			Region:        pulumi.String("us-central1"),
/// 			DisplayName:   pulumi.String("Demo Tag Template"),
/// 			Fields: datacatalog.TagTemplateFieldArray{
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("source"),
/// 					DisplayName: pulumi.String("Source of data asset"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						PrimitiveType: pulumi.String("STRING"),
/// 					},
/// 					IsRequired: pulumi.Bool(true),
/// 				},
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("num_rows"),
/// 					DisplayName: pulumi.String("Number of rows in the data asset"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						PrimitiveType: pulumi.String("DOUBLE"),
/// 					},
/// 				},
/// 				&datacatalog.TagTemplateFieldArgs{
/// 					FieldId:     pulumi.String("pii_type"),
/// 					DisplayName: pulumi.String("PII type"),
/// 					Type: &datacatalog.TagTemplateFieldTypeArgs{
/// 						EnumType: &datacatalog.TagTemplateFieldTypeEnumTypeArgs{
/// 							AllowedValues: datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArray{
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("EMAIL"),
/// 								},
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("SOCIAL SECURITY NUMBER"),
/// 								},
/// 								&datacatalog.TagTemplateFieldTypeEnumTypeAllowedValueArgs{
/// 									DisplayName: pulumi.String("NONE"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ForceDelete: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewTag(ctx, "basic_tag", &datacatalog.TagArgs{
/// 			Parent:   entry.ID().ToIDOutput().ToStringOutput(),
/// 			Template: tagTemplate.ID().ToIDOutput().ToStringOutput(),
/// 			Fields: datacatalog.TagFieldArray{
/// 				&datacatalog.TagFieldArgs{
/// 					FieldName:   pulumi.String("source"),
/// 					StringValue: pulumi.String("my-string"),
/// 				},
/// 				&datacatalog.TagFieldArgs{
/// 					FieldName:   pulumi.String("num_rows"),
/// 					DoubleValue: pulumi.Float64(5),
/// 				},
/// 				&datacatalog.TagFieldArgs{
/// 					FieldName: pulumi.String("pii_type"),
/// 					EnumValue: pulumi.String("EMAIL"),
/// 				},
/// 			},
/// 			Column: pulumi.String("address"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewTag(ctx, "second-tag", &datacatalog.TagArgs{
/// 			Parent:   entry.ID().ToIDOutput().ToStringOutput(),
/// 			Template: tagTemplate.ID().ToIDOutput().ToStringOutput(),
/// 			Fields: datacatalog.TagFieldArray{
/// 				&datacatalog.TagFieldArgs{
/// 					FieldName:   pulumi.String("source"),
/// 					StringValue: pulumi.String("my-string"),
/// 				},
/// 				&datacatalog.TagFieldArgs{
/// 					FieldName: pulumi.String("pii_type"),
/// 					EnumValue: pulumi.String("NONE"),
/// 				},
/// 			},
/// 			Column: pulumi.String("first_name"),
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
/// resource "gcp_datacatalog_entry" "entry" {
///   entry_group           = gcp_datacatalog_entrygroup.entry_group.id
///   entry_id              = "my_entry"
///   user_specified_type   = "my_custom_type"
///   user_specified_system = "SomethingExternal"
///   schema                = "{\n  \\\"columns\\\": [\n    {\n      \\\"column\\\": \\\"first_name\\\",\n      \\\"description\\\": \\\"First name\\\",\n      \\\"mode\\\": \\\"REQUIRED\\\",\n      \\\"type\\\": \\\"STRING\\\"\n    },\n    {\n      \\\"column\\\": \\\"last_name\\\",\n      \\\"description\\\": \\\"Last name\\\",\n      \\\"mode\\\": \\\"REQUIRED\\\",\n      \\\"type\\\": \\\"STRING\\\"\n    },\n    {\n      \\\"column\\\": \\\"address\\\",\n      \\\"description\\\": \\\"Address\\\",\n      \\\"mode\\\": \\\"REPEATED\\\",\n      \\\"subcolumns\\\": [\n        {\n          \\\"column\\\": \\\"city\\\",\n          \\\"description\\\": \\\"City\\\",\n          \\\"mode\\\": \\\"NULLABLE\\\",\n          \\\"type\\\": \\\"STRING\\\"\n        },\n        {\n          \\\"column\\\": \\\"state\\\",\n          \\\"description\\\": \\\"State\\\",\n          \\\"mode\\\": \\\"NULLABLE\\\",\n          \\\"type\\\": \\\"STRING\\\"\n        }\n      ],\n      \\\"type\\\": \\\"RECORD\\\"\n    }\n  ]\n}\n"
/// }
/// resource "gcp_datacatalog_entrygroup" "entry_group" {
///   entry_group_id = "my_entry_group"
/// }
/// resource "gcp_datacatalog_tagtemplate" "tag_template" {
///   tag_template_id = "my_template"
///   region          = "us-central1"
///   display_name    = "Demo Tag Template"
///   fields {
///     field_id     = "source"
///     display_name = "Source of data asset"
///     type = {
///       primitive_type = "STRING"
///     }
///     is_required = true
///   }
///   fields {
///     field_id     = "num_rows"
///     display_name = "Number of rows in the data asset"
///     type = {
///       primitive_type = "DOUBLE"
///     }
///   }
///   fields {
///     field_id     = "pii_type"
///     display_name = "PII type"
///     type = {
///       enum_type = {
///         allowed_values = [{
///           "displayName" = "EMAIL"
///           }, {
///           "displayName" = "SOCIAL SECURITY NUMBER"
///           }, {
///           "displayName" = "NONE"
///         }]
///       }
///     }
///   }
///   force_delete = "false"
/// }
/// resource "gcp_datacatalog_tag" "basic_tag" {
///   parent   = gcp_datacatalog_entry.entry.id
///   template = gcp_datacatalog_tagtemplate.tag_template.id
///   fields {
///     field_name   = "source"
///     string_value = "my-string"
///   }
///   fields {
///     field_name   = "num_rows"
///     double_value = 5
///   }
///   fields {
///     field_name = "pii_type"
///     enum_value = "EMAIL"
///   }
///   column = "address"
/// }
/// resource "gcp_datacatalog_tag" "second-tag" {
///   parent   = gcp_datacatalog_entry.entry.id
///   template = gcp_datacatalog_tagtemplate.tag_template.id
///   fields {
///     field_name   = "source"
///     string_value = "my-string"
///   }
///   fields {
///     field_name = "pii_type"
///     enum_value = "NONE"
///   }
///   column = "first_name"
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
/// import com.pulumi.gcp.datacatalog.TagTemplate;
/// import com.pulumi.gcp.datacatalog.TagTemplateArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeEnumTypeArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagTemplateFieldTypeEnumTypeAllowedValueArgs;
/// import com.pulumi.gcp.datacatalog.Tag;
/// import com.pulumi.gcp.datacatalog.TagArgs;
/// import com.pulumi.gcp.datacatalog.inputs.TagFieldArgs;
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
///         var entryGroup = new EntryGroup("entryGroup", EntryGroupArgs.builder()
///             .entryGroupId("my_entry_group")
///             .build());
///
///         var entry = new Entry("entry", EntryArgs.builder()
///             .entryGroup(entryGroup.id())
///             .entryId("my_entry")
///             .userSpecifiedType("my_custom_type")
///             .userSpecifiedSystem("SomethingExternal")
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
///         var tagTemplate = new TagTemplate("tagTemplate", TagTemplateArgs.builder()
///             .tagTemplateId("my_template")
///             .region("us-central1")
///             .displayName("Demo Tag Template")
///             .fields(
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("source")
///                     .displayName("Source of data asset")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .primitiveType("STRING")
///                         .build())
///                     .isRequired(true)
///                     .build(),
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("num_rows")
///                     .displayName("Number of rows in the data asset")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .primitiveType("DOUBLE")
///                         .build())
///                     .build(),
///                 TagTemplateFieldArgs.builder()
///                     .fieldId("pii_type")
///                     .displayName("PII type")
///                     .type(TagTemplateFieldTypeArgs.builder()
///                         .enumType(TagTemplateFieldTypeEnumTypeArgs.builder()
///                             .allowedValues(
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("EMAIL")
///                                     .build(),
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("SOCIAL SECURITY NUMBER")
///                                     .build(),
///                                 TagTemplateFieldTypeEnumTypeAllowedValueArgs.builder()
///                                     .displayName("NONE")
///                                     .build())
///                             .build())
///                         .build())
///                     .build())
///             .forceDelete(false)
///             .build());
///
///         var basicTag = new Tag("basicTag", TagArgs.builder()
///             .parent(entry.id())
///             .template(tagTemplate.id())
///             .fields(
///                 TagFieldArgs.builder()
///                     .fieldName("source")
///                     .stringValue("my-string")
///                     .build(),
///                 TagFieldArgs.builder()
///                     .fieldName("num_rows")
///                     .doubleValue(5.0)
///                     .build(),
///                 TagFieldArgs.builder()
///                     .fieldName("pii_type")
///                     .enumValue("EMAIL")
///                     .build())
///             .column("address")
///             .build());
///
///         var second_tag = new Tag("second-tag", TagArgs.builder()
///             .parent(entry.id())
///             .template(tagTemplate.id())
///             .fields(
///                 TagFieldArgs.builder()
///                     .fieldName("source")
///                     .stringValue("my-string")
///                     .build(),
///                 TagFieldArgs.builder()
///                     .fieldName("pii_type")
///                     .enumValue("NONE")
///                     .build())
///             .column("first_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   entry:
///     type: gcp:datacatalog:Entry
///     properties:
///       entryGroup: ${entryGroup.id}
///       entryId: my_entry
///       userSpecifiedType: my_custom_type
///       userSpecifiedSystem: SomethingExternal
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
///       entryGroupId: my_entry_group
///   tagTemplate:
///     type: gcp:datacatalog:TagTemplate
///     name: tag_template
///     properties:
///       tagTemplateId: my_template
///       region: us-central1
///       displayName: Demo Tag Template
///       fields:
///         - fieldId: source
///           displayName: Source of data asset
///           type:
///             primitiveType: STRING
///           isRequired: true
///         - fieldId: num_rows
///           displayName: Number of rows in the data asset
///           type:
///             primitiveType: DOUBLE
///         - fieldId: pii_type
///           displayName: PII type
///           type:
///             enumType:
///               allowedValues:
///                 - displayName: EMAIL
///                 - displayName: SOCIAL SECURITY NUMBER
///                 - displayName: NONE
///       forceDelete: 'false'
///   basicTag:
///     type: gcp:datacatalog:Tag
///     name: basic_tag
///     properties:
///       parent: ${entry.id}
///       template: ${tagTemplate.id}
///       fields:
///         - fieldName: source
///           stringValue: my-string
///         - fieldName: num_rows
///           doubleValue: 5
///         - fieldName: pii_type
///           enumValue: EMAIL
///       column: address
///   second-tag:
///     type: gcp:datacatalog:Tag
///     properties:
///       parent: ${entry.id}
///       template: ${tagTemplate.id}
///       fields:
///         - fieldName: source
///           stringValue: my-string
///         - fieldName: pii_type
///           enumValue: NONE
///       column: first_name
/// ```
///
///
/// ## Import
///
/// Tag can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Tag can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/tag:Tag default {{name}}
/// ```
class Tag extends pulumi.CustomResource {
  /// Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
  /// individual column based on that schema.
  /// For attaching a tag to a nested column, use `.` to separate the column names. Example:
  /// `outer_column.inner_column`
  late final pulumi.Output<String?> column;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// This maps the ID of a tag field to the value of and additional information about that field.
  /// Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> fields;
  /// The resource name of the tag in URL format. Example:
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/entries/{entryId}/tags/{tag_id} or
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/tags/{tag_id}
  /// where tagId is a system-generated identifier. Note that this Tag may not actually be stored in the location in this name.
  late final pulumi.Output<String> name;
  /// The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
  /// all entries in that group.
  late final pulumi.Output<String?> parent;
  /// The resource name of the tag template that this tag uses. Example:
  /// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
  /// This field cannot be modified after creation.
  late final pulumi.Output<String> template;
  /// The display name of the tag template.
  late final pulumi.Output<String> templateDisplayname;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_datacatalog_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    column = registerOutput<String?>('column');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fields = registerOutput<List<Map<String, dynamic>>>('fields');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
    template = registerOutput<String>('template');
    templateDisplayname = registerOutput<String>('templateDisplayname');
  }

  /// Gets an existing [Tag] resource's state with the given [name] and [id].
  static Tag get(
    String name,
    pulumi.Input<String> id, {
    TagState? state,
  }) {
    return Tag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Tag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/tag:Tag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    column = registerOutput<String?>('column');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fields = registerOutput<List<Map<String, dynamic>>>('fields');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
    template = registerOutput<String>('template');
    templateDisplayname = registerOutput<String>('templateDisplayname');
  }
}
