import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_feed_args.dart';
import 'metadata_feed_filters.dart';
import 'metadata_feed_scope.dart';
import 'metadata_feed_state.dart';

/// A Dataplex Metadata Feed monitors Dataplex metadata entries in a specified scope and publishes notifications of changes to a Cloud Pub/Sub topic.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Metadata Feed Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const primary = new gcp.pubsub.Topic("primary", {name: "tf-test-feed-topic"});
/// const primaryPublisher = new gcp.pubsub.TopicIAMMember("primary_publisher", {
///     topic: primary.name,
///     role: "roles/pubsub.publisher",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com`),
/// });
/// const primaryViewer = new gcp.pubsub.TopicIAMMember("primary_viewer", {
///     topic: primary.name,
///     role: "roles/pubsub.viewer",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com`),
/// }, {
///     dependsOn: [primaryPublisher],
/// });
/// const group = new gcp.dataplex.EntryGroup("group", {
///     entryGroupId: "tf-test-feed-group",
///     project: "my-project-name",
///     location: "us-central1",
/// });
/// const type = new gcp.dataplex.EntryType("type", {
///     entryTypeId: "tf-test-feed-type",
///     project: "my-project-name",
///     location: "us-central1",
/// });
/// const aspect = new gcp.dataplex.AspectType("aspect", {
///     aspectTypeId: "tf-test-feed-aspect",
///     project: "my-project-name",
///     location: "us-central1",
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
/// const primaryMetadataFeed = new gcp.dataplex.MetadataFeed("primary", {
///     metadataFeedId: "tf-test-feed",
///     location: "us-central1",
///     project: "my-project-name",
///     pubsubTopic: primary.id,
///     labels: {
///         foo: "bar",
///     },
///     filters: {
///         aspectTypes: [pulumi.all([project, aspect.aspectTypeId]).apply(([project, aspectTypeId]) => `projects/${project.number}/locations/us-central1/aspectTypes/${aspectTypeId}`)],
///         changeTypes: ["CREATE"],
///         entryTypes: [pulumi.all([project, type.entryTypeId]).apply(([project, entryTypeId]) => `projects/${project.number}/locations/us-central1/entryTypes/${entryTypeId}`)],
///     },
///     scope: {
///         entryGroups: [pulumi.all([project, group.entryGroupId]).apply(([project, entryGroupId]) => `projects/${project.number}/locations/us-central1/entryGroups/${entryGroupId}`)],
///     },
/// }, {
///     dependsOn: [
///         primaryPublisher,
///         primaryViewer,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// primary = gcp.pubsub.Topic("primary", name="tf-test-feed-topic")
/// primary_publisher = gcp.pubsub.TopicIAMMember("primary_publisher",
///     topic=primary.name,
///     role="roles/pubsub.publisher",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-dataplex.iam.gserviceaccount.com")
/// primary_viewer = gcp.pubsub.TopicIAMMember("primary_viewer",
///     topic=primary.name,
///     role="roles/pubsub.viewer",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-dataplex.iam.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[primary_publisher]))
/// group = gcp.dataplex.EntryGroup("group",
///     entry_group_id="tf-test-feed-group",
///     project="my-project-name",
///     location="us-central1")
/// type = gcp.dataplex.EntryType("type",
///     entry_type_id="tf-test-feed-type",
///     project="my-project-name",
///     location="us-central1")
/// aspect = gcp.dataplex.AspectType("aspect",
///     aspect_type_id="tf-test-feed-aspect",
///     project="my-project-name",
///     location="us-central1",
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
/// primary_metadata_feed = gcp.dataplex.MetadataFeed("primary",
///     metadata_feed_id="tf-test-feed",
///     location="us-central1",
///     project="my-project-name",
///     pubsub_topic=primary.id,
///     labels={
///         "foo": "bar",
///     },
///     filters={
///         "aspect_types": [aspect.aspect_type_id.apply(lambda aspect_type_id: f"projects/{project.number}/locations/us-central1/aspectTypes/{aspect_type_id}")],
///         "change_types": ["CREATE"],
///         "entry_types": [type.entry_type_id.apply(lambda entry_type_id: f"projects/{project.number}/locations/us-central1/entryTypes/{entry_type_id}")],
///     },
///     scope={
///         "entry_groups": [group.entry_group_id.apply(lambda entry_group_id: f"projects/{project.number}/locations/us-central1/entryGroups/{entry_group_id}")],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             primary_publisher,
///             primary_viewer,
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var primary = new Gcp.PubSub.Topic("primary", new()
///     {
///         Name = "tf-test-feed-topic",
///     });
///
///     var primaryPublisher = new Gcp.PubSub.TopicIAMMember("primary_publisher", new()
///     {
///         Topic = primary.Name,
///         Role = "roles/pubsub.publisher",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-dataplex.iam.gserviceaccount.com",
///     });
///
///     var primaryViewer = new Gcp.PubSub.TopicIAMMember("primary_viewer", new()
///     {
///         Topic = primary.Name,
///         Role = "roles/pubsub.viewer",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-dataplex.iam.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryPublisher,
///         },
///     });
///
///     var @group = new Gcp.DataPlex.EntryGroup("group", new()
///     {
///         EntryGroupId = "tf-test-feed-group",
///         Project = "my-project-name",
///         Location = "us-central1",
///     });
///
///     var type = new Gcp.DataPlex.EntryType("type", new()
///     {
///         EntryTypeId = "tf-test-feed-type",
///         Project = "my-project-name",
///         Location = "us-central1",
///     });
///
///     var aspect = new Gcp.DataPlex.AspectType("aspect", new()
///     {
///         AspectTypeId = "tf-test-feed-aspect",
///         Project = "my-project-name",
///         Location = "us-central1",
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
///     var primaryMetadataFeed = new Gcp.DataPlex.MetadataFeed("primary", new()
///     {
///         MetadataFeedId = "tf-test-feed",
///         Location = "us-central1",
///         Project = "my-project-name",
///         PubsubTopic = primary.Id,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Filters = new Gcp.DataPlex.Inputs.MetadataFeedFiltersArgs
///         {
///             AspectTypes = new[]
///             {
///                 Output.Tuple(project, aspect.AspectTypeId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var aspectTypeId = values.Item2;
///                     return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/us-central1/aspectTypes/{aspectTypeId}";
///                 }),
///             },
///             ChangeTypes = new[]
///             {
///                 "CREATE",
///             },
///             EntryTypes = new[]
///             {
///                 Output.Tuple(project, type.EntryTypeId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var entryTypeId = values.Item2;
///                     return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/us-central1/entryTypes/{entryTypeId}";
///                 }),
///             },
///         },
///         Scope = new Gcp.DataPlex.Inputs.MetadataFeedScopeArgs
///         {
///             EntryGroups = new[]
///             {
///                 Output.Tuple(project, @group.EntryGroupId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var entryGroupId = values.Item2;
///                     return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/us-central1/entryGroups/{entryGroupId}";
///                 }),
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryPublisher,
///             primaryViewer,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := pubsub.NewTopic(ctx, "primary", &pubsub.TopicArgs{
/// 			Name: pulumi.String("tf-test-feed-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryPublisher, err := pubsub.NewTopicIAMMember(ctx, "primary_publisher", &pubsub.TopicIAMMemberArgs{
/// 			Topic:  primary.Name,
/// 			Role:   pulumi.String("roles/pubsub.publisher"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-dataplex.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryViewer, err := pubsub.NewTopicIAMMember(ctx, "primary_viewer", &pubsub.TopicIAMMemberArgs{
/// 			Topic:  primary.Name,
/// 			Role:   pulumi.String("roles/pubsub.viewer"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-dataplex.iam.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryPublisher,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group, err := dataplex.NewEntryGroup(ctx, "group", &dataplex.EntryGroupArgs{
/// 			EntryGroupId: pulumi.String("tf-test-feed-group"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_type, err := dataplex.NewEntryType(ctx, "type", &dataplex.EntryTypeArgs{
/// 			EntryTypeId: pulumi.String("tf-test-feed-type"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		aspect, err := dataplex.NewAspectType(ctx, "aspect", &dataplex.AspectTypeArgs{
/// 			AspectTypeId: pulumi.String("tf-test-feed-aspect"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us-central1"),
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
/// 		_, err = dataplex.NewMetadataFeed(ctx, "primary", &dataplex.MetadataFeedArgs{
/// 			MetadataFeedId: pulumi.String("tf-test-feed"),
/// 			Location:       pulumi.String("us-central1"),
/// 			Project:        pulumi.String("my-project-name"),
/// 			PubsubTopic:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Filters: &dataplex.MetadataFeedFiltersArgs{
/// 				AspectTypes: pulumi.StringArray{
/// 					aspect.AspectTypeId.ApplyT(func(aspectTypeId *string) (string, error) {
/// 						return fmt.Sprintf("projects/%v/locations/us-central1/aspectTypes/%v", project.Number, aspectTypeId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				ChangeTypes: pulumi.StringArray{
/// 					pulumi.String("CREATE"),
/// 				},
/// 				EntryTypes: pulumi.StringArray{
/// 					_type.EntryTypeId.ApplyT(func(entryTypeId *string) (string, error) {
/// 						return fmt.Sprintf("projects/%v/locations/us-central1/entryTypes/%v", project.Number, entryTypeId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Scope: &dataplex.MetadataFeedScopeArgs{
/// 				EntryGroups: pulumi.StringArray{
/// 					group.EntryGroupId.ApplyT(func(entryGroupId *string) (string, error) {
/// 						return fmt.Sprintf("projects/%v/locations/us-central1/entryGroups/%v", project.Number, entryGroupId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryPublisher,
/// 			primaryViewer,
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_pubsub_topic" "primary" {
///   name = "tf-test-feed-topic"
/// }
/// resource "gcp_pubsub_topiciammember" "primary_publisher" {
///   topic  = gcp_pubsub_topic.primary.name
///   role   = "roles/pubsub.publisher"
///   member ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-dataplex.iam.gserviceaccount.com"
/// }
/// resource "gcp_pubsub_topiciammember" "primary_viewer" {
///   depends_on = [gcp_pubsub_topiciammember.primary_publisher]
///   topic      = gcp_pubsub_topic.primary.name
///   role       = "roles/pubsub.viewer"
///   member     ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-dataplex.iam.gserviceaccount.com"
/// }
/// resource "gcp_dataplex_entrygroup" "group" {
///   entry_group_id = "tf-test-feed-group"
///   project        = "my-project-name"
///   location       = "us-central1"
/// }
/// resource "gcp_dataplex_entrytype" "type" {
///   entry_type_id = "tf-test-feed-type"
///   project       = "my-project-name"
///   location      = "us-central1"
/// }
/// resource "gcp_dataplex_aspecttype" "aspect" {
///   aspect_type_id    = "tf-test-feed-aspect"
///   project           = "my-project-name"
///   location          = "us-central1"
///   metadata_template = "{\n  \\\"name\\\": \\\"tf-test-template\\\",\n  \\\"type\\\": \\\"record\\\",\n  \\\"recordFields\\\": [\n    {\n      \\\"name\\\": \\\"type\\\",\n      \\\"type\\\": \\\"enum\\\",\n      \\\"annotations\\\": {\n        \\\"displayName\\\": \\\"Type\\\",\n        \\\"description\\\": \\\"Specifies the type of view represented by the entry.\\\"\n      },\n      \\\"index\\\": 1,\n      \\\"constraints\\\": {\n        \\\"required\\\": true\n      },\n      \\\"enumValues\\\": [\n        {\n          \\\"name\\\": \\\"VIEW\\\",\n          \\\"index\\\": 1\n        }\n      ]\n    }\n  ]\n}\n"
/// }
/// resource "gcp_dataplex_metadatafeed" "primary" {
///   depends_on       = [gcp_pubsub_topiciammember.primary_publisher, gcp_pubsub_topiciammember.primary_viewer]
///   metadata_feed_id = "tf-test-feed"
///   location         = "us-central1"
///   project          = "my-project-name"
///   pubsub_topic     = gcp_pubsub_topic.primary.id
///   labels = {
///     "foo" = "bar"
///   }
///   filters = {
///     aspect_types = ["projects/${data.gcp_organizations_getproject.project.number}/locations/us-central1/aspectTypes/${gcp_dataplex_aspecttype.aspect.aspect_type_id}"]
///     change_types = ["CREATE"]
///     entry_types  = ["projects/${data.gcp_organizations_getproject.project.number}/locations/us-central1/entryTypes/${gcp_dataplex_entrytype.type.entry_type_id}"]
///   }
///   scope = {
///     entry_groups = ["projects/${data.gcp_organizations_getproject.project.number}/locations/us-central1/entryGroups/${gcp_dataplex_entrygroup.group.entry_group_id}"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.TopicIAMMember;
/// import com.pulumi.gcp.pubsub.TopicIAMMemberArgs;
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
/// import com.pulumi.gcp.dataplex.EntryType;
/// import com.pulumi.gcp.dataplex.EntryTypeArgs;
/// import com.pulumi.gcp.dataplex.AspectType;
/// import com.pulumi.gcp.dataplex.AspectTypeArgs;
/// import com.pulumi.gcp.dataplex.MetadataFeed;
/// import com.pulumi.gcp.dataplex.MetadataFeedArgs;
/// import com.pulumi.gcp.dataplex.inputs.MetadataFeedFiltersArgs;
/// import com.pulumi.gcp.dataplex.inputs.MetadataFeedScopeArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var primary = new Topic("primary", TopicArgs.builder()
///             .name("tf-test-feed-topic")
///             .build());
///
///         var primaryPublisher = new TopicIAMMember("primaryPublisher", TopicIAMMemberArgs.builder()
///             .topic(primary.name())
///             .role("roles/pubsub.publisher")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-dataplex.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var primaryViewer = new TopicIAMMember("primaryViewer", TopicIAMMemberArgs.builder()
///             .topic(primary.name())
///             .role("roles/pubsub.viewer")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-dataplex.iam.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryPublisher)
///                 .build());
///
///         var group = new EntryGroup("group", EntryGroupArgs.builder()
///             .entryGroupId("tf-test-feed-group")
///             .project("my-project-name")
///             .location("us-central1")
///             .build());
///
///         var type = new EntryType("type", EntryTypeArgs.builder()
///             .entryTypeId("tf-test-feed-type")
///             .project("my-project-name")
///             .location("us-central1")
///             .build());
///
///         var aspect = new AspectType("aspect", AspectTypeArgs.builder()
///             .aspectTypeId("tf-test-feed-aspect")
///             .project("my-project-name")
///             .location("us-central1")
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
///         var primaryMetadataFeed = new MetadataFeed("primaryMetadataFeed", MetadataFeedArgs.builder()
///             .metadataFeedId("tf-test-feed")
///             .location("us-central1")
///             .project("my-project-name")
///             .pubsubTopic(primary.id())
///             .labels(Map.of("foo", "bar"))
///             .filters(MetadataFeedFiltersArgs.builder()
///                 .aspectTypes(aspect.aspectTypeId().applyValue(_aspectTypeId -> String.format("projects/%s/locations/us-central1/aspectTypes/%s", project.number(),_aspectTypeId)))
///                 .changeTypes("CREATE")
///                 .entryTypes(type.entryTypeId().applyValue(_entryTypeId -> String.format("projects/%s/locations/us-central1/entryTypes/%s", project.number(),_entryTypeId)))
///                 .build())
///             .scope(MetadataFeedScopeArgs.builder()
///                 .entryGroups(group.entryGroupId().applyValue(_entryGroupId -> String.format("projects/%s/locations/us-central1/entryGroups/%s", project.number(),_entryGroupId)))
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     primaryPublisher,
///                     primaryViewer)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:pubsub:Topic
///     properties:
///       name: tf-test-feed-topic
///   primaryPublisher:
///     type: gcp:pubsub:TopicIAMMember
///     name: primary_publisher
///     properties:
///       topic: ${primary.name}
///       role: roles/pubsub.publisher
///       member: serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com
///   primaryViewer:
///     type: gcp:pubsub:TopicIAMMember
///     name: primary_viewer
///     properties:
///       topic: ${primary.name}
///       role: roles/pubsub.viewer
///       member: serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${primaryPublisher}
///   group:
///     type: gcp:dataplex:EntryGroup
///     properties:
///       entryGroupId: tf-test-feed-group
///       project: my-project-name
///       location: us-central1
///   type:
///     type: gcp:dataplex:EntryType
///     properties:
///       entryTypeId: tf-test-feed-type
///       project: my-project-name
///       location: us-central1
///   aspect:
///     type: gcp:dataplex:AspectType
///     properties:
///       aspectTypeId: tf-test-feed-aspect
///       project: my-project-name
///       location: us-central1
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
///   primaryMetadataFeed:
///     type: gcp:dataplex:MetadataFeed
///     name: primary
///     properties:
///       metadataFeedId: tf-test-feed
///       location: us-central1
///       project: my-project-name
///       pubsubTopic: ${primary.id}
///       labels:
///         foo: bar
///       filters:
///         aspectTypes:
///           - projects/${project.number}/locations/us-central1/aspectTypes/${aspect.aspectTypeId}
///         changeTypes:
///           - CREATE
///         entryTypes:
///           - projects/${project.number}/locations/us-central1/entryTypes/${type.entryTypeId}
///       scope:
///         entryGroups:
///           - projects/${project.number}/locations/us-central1/entryGroups/${group.entryGroupId}
///     options:
///       dependsOn:
///         - ${primaryPublisher}
///         - ${primaryViewer}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// MetadataFeed can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/metadataFeeds/{{metadata_feed_id}}`
/// * `{{project}}/{{location}}/{{metadata_feed_id}}`
/// * `{{location}}/{{metadata_feed_id}}`
///
///
/// When using the `pulumi import` command, MetadataFeed can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/metadataFeed:MetadataFeed default projects/{{project}}/locations/{{location}}/metadataFeeds/{{metadata_feed_id}}
/// $ pulumi import gcp:dataplex/metadataFeed:MetadataFeed default {{project}}/{{location}}/{{metadata_feed_id}}
/// $ pulumi import gcp:dataplex/metadataFeed:MetadataFeed default {{location}}/{{metadata_feed_id}}
/// ```
class MetadataFeed extends pulumi.CustomResource {
  /// The time when the feed was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Filters defines the type of changes that you want to listen to. You can have multiple entry type filters and multiple aspect type filters. All of the entry type filters are OR'ed together. All of the aspect type filters are OR'ed together. All of the entry type filters and aspect type filters are AND'ed together.
  /// Structure is documented below.
  late final pulumi.Output<MetadataFeedFilters?> filters;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The metadata job ID. If not provided, a unique ID is generated with the prefix metadata-job-.
  late final pulumi.Output<String> metadataFeedId;
  /// Identifier. The resource name of the metadata feed, in the format projects/{project_id_or_number}/locations/{location_id}/metadataFeeds/{metadata_feed_id}.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The pubsub topic that you want the metadata feed messages to publish to. Please grant Dataplex service account the permission to publish messages to the topic. The service account is: service-{PROJECT_NUMBER}@gcp-sa-dataplex.iam.gserviceaccount.com.
  late final pulumi.Output<String?> pubsubTopic;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Scope defines the scope of the metadata feed. Scopes are exclusive. Only one of the scopes can be specified.
  /// Structure is documented below.
  late final pulumi.Output<MetadataFeedScope> scope;
  /// A system-generated, globally unique ID for the metadata job. If the metadata job is deleted and then re-created with the same name, this ID is different.
  late final pulumi.Output<String> uid;
  /// The time when the feed was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MetadataFeed].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetadataFeed]. {@macro pulumi_dataplex_metadata_feed_metadata_feed_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetadataFeed(
    String name, {
    MetadataFeedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/metadataFeed:MetadataFeed',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    filters = registerOutput<MetadataFeedFilters?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataFeedFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    metadataFeedId = registerOutput<String>('metadataFeedId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubTopic = registerOutput<String?>('pubsubTopic');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    scope = registerOutput<MetadataFeedScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataFeedScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MetadataFeed] resource's state with the given [name] and [id].
  static MetadataFeed get(
    String name,
    pulumi.Input<String> id, {
    MetadataFeedState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MetadataFeed._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MetadataFeed._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/metadataFeed:MetadataFeed',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    filters = registerOutput<MetadataFeedFilters?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataFeedFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    metadataFeedId = registerOutput<String>('metadataFeedId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubTopic = registerOutput<String?>('pubsubTopic');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    scope = registerOutput<MetadataFeedScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataFeedScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [MetadataFeed] resource.
  MetadataFeed.reference(String urn)
    : super(
        'gcp:dataplex/metadataFeed:MetadataFeed',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    filters = registerOutput<MetadataFeedFilters?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataFeedFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    metadataFeedId = registerOutput<String>('metadataFeedId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubTopic = registerOutput<String?>('pubsubTopic');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    scope = registerOutput<MetadataFeedScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetadataFeedScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
