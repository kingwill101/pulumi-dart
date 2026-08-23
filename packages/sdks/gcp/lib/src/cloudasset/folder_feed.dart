import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_feed_args.dart';
import 'folder_feed_condition.dart';
import 'folder_feed_feed_output_config.dart';
import 'folder_feed_state.dart';

/// Describes a Cloud Asset Inventory feed used to to listen to asset updates.
///
///
/// To get more information about FolderFeed, see:
///
/// * [API documentation](https://cloud.google.com/asset-inventory/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/asset-inventory/docs)
///
/// ## Example Usage
///
/// ### Cloud Asset Folder Feed
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // The topic where the resource change notifications will be sent.
/// const feedOutput = new gcp.pubsub.Topic("feed_output", {
///     project: "my-project-name",
///     name: "network-updates",
/// });
/// // The folder that will be monitored for resource updates.
/// const myFolder = new gcp.organizations.Folder("my_folder", {
///     displayName: "Networking",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// // Create a feed that sends notifications about network resource updates under a
/// // particular folder.
/// const folderFeed = new gcp.cloudasset.FolderFeed("folder_feed", {
///     billingProject: "my-project-name",
///     folder: myFolder.folderId,
///     feedId: "network-updates",
///     contentType: "RESOURCE",
///     assetTypes: [
///         "compute.googleapis.com/Subnetwork",
///         "compute.googleapis.com/Network",
///     ],
///     feedOutputConfig: {
///         pubsubDestination: {
///             topic: feedOutput.id,
///         },
///     },
///     condition: {
///         expression: `!temporal_asset.deleted &&
/// temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
/// `,
///         title: "created",
///         description: "Send notifications on creation events",
///     },
/// });
/// // Find the project number of the project whose identity will be used for sending
/// // the asset change notifications.
/// const project = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # The topic where the resource change notifications will be sent.
/// feed_output = gcp.pubsub.Topic("feed_output",
///     project="my-project-name",
///     name="network-updates")
/// # The folder that will be monitored for resource updates.
/// my_folder = gcp.organizations.Folder("my_folder",
///     display_name="Networking",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// # Create a feed that sends notifications about network resource updates under a
/// # particular folder.
/// folder_feed = gcp.cloudasset.FolderFeed("folder_feed",
///     billing_project="my-project-name",
///     folder=my_folder.folder_id,
///     feed_id="network-updates",
///     content_type="RESOURCE",
///     asset_types=[
///         "compute.googleapis.com/Subnetwork",
///         "compute.googleapis.com/Network",
///     ],
///     feed_output_config={
///         "pubsub_destination": {
///             "topic": feed_output.id,
///         },
///     },
///     condition={
///         "expression": """!temporal_asset.deleted &&
/// temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
/// """,
///         "title": "created",
///         "description": "Send notifications on creation events",
///     })
/// # Find the project number of the project whose identity will be used for sending
/// # the asset change notifications.
/// project = gcp.organizations.get_project(project_id="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // The topic where the resource change notifications will be sent.
///     var feedOutput = new Gcp.PubSub.Topic("feed_output", new()
///     {
///         Project = "my-project-name",
///         Name = "network-updates",
///     });
///
///     // The folder that will be monitored for resource updates.
///     var myFolder = new Gcp.Organizations.Folder("my_folder", new()
///     {
///         DisplayName = "Networking",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     // Create a feed that sends notifications about network resource updates under a
///     // particular folder.
///     var folderFeed = new Gcp.CloudAsset.FolderFeed("folder_feed", new()
///     {
///         BillingProject = "my-project-name",
///         Folder = myFolder.FolderId,
///         FeedId = "network-updates",
///         ContentType = "RESOURCE",
///         AssetTypes = new[]
///         {
///             "compute.googleapis.com/Subnetwork",
///             "compute.googleapis.com/Network",
///         },
///         FeedOutputConfig = new Gcp.CloudAsset.Inputs.FolderFeedFeedOutputConfigArgs
///         {
///             PubsubDestination = new Gcp.CloudAsset.Inputs.FolderFeedFeedOutputConfigPubsubDestinationArgs
///             {
///                 Topic = feedOutput.Id,
///             },
///         },
///         Condition = new Gcp.CloudAsset.Inputs.FolderFeedConditionArgs
///         {
///             Expression = @"!temporal_asset.deleted &&
/// temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
/// ",
///             Title = "created",
///             Description = "Send notifications on creation events",
///         },
///     });
///
///     // Find the project number of the project whose identity will be used for sending
///     // the asset change notifications.
///     var project = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudasset"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// The topic where the resource change notifications will be sent.
/// 		feedOutput, err := pubsub.NewTopic(ctx, "feed_output", &pubsub.TopicArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Name:    pulumi.String("network-updates"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The folder that will be monitored for resource updates.
/// 		myFolder, err := organizations.NewFolder(ctx, "my_folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("Networking"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a feed that sends notifications about network resource updates under a
/// 		// particular folder.
/// 		_, err = cloudasset.NewFolderFeed(ctx, "folder_feed", &cloudasset.FolderFeedArgs{
/// 			BillingProject: pulumi.String("my-project-name"),
/// 			Folder:         myFolder.FolderId,
/// 			FeedId:         pulumi.String("network-updates"),
/// 			ContentType:    pulumi.String("RESOURCE"),
/// 			AssetTypes: pulumi.StringArray{
/// 				pulumi.String("compute.googleapis.com/Subnetwork"),
/// 				pulumi.String("compute.googleapis.com/Network"),
/// 			},
/// 			FeedOutputConfig: &cloudasset.FolderFeedFeedOutputConfigArgs{
/// 				PubsubDestination: &cloudasset.FolderFeedFeedOutputConfigPubsubDestinationArgs{
/// 					Topic: feedOutput.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Condition: &cloudasset.FolderFeedConditionArgs{
/// 				Expression:  pulumi.String("!temporal_asset.deleted &&\ntemporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST\n"),
/// 				Title:       pulumi.String("created"),
/// 				Description: pulumi.String("Send notifications on creation events"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Find the project number of the project whose identity will be used for sending
/// 		// the asset change notifications.
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
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
///   project_id = "my-project-name"
/// }
///
/// # Create a feed that sends notifications about network resource updates under a
/// # particular folder.
/// resource "gcp_cloudasset_folderfeed" "folder_feed" {
///   billing_project = "my-project-name"
///   folder          = gcp_organizations_folder.my_folder.folder_id
///   feed_id         = "network-updates"
///   content_type    = "RESOURCE"
///   asset_types     = ["compute.googleapis.com/Subnetwork", "compute.googleapis.com/Network"]
///   feed_output_config = {
///     pubsub_destination = {
///       topic = gcp_pubsub_topic.feed_output.id
///     }
///   }
///   condition = {
///     expression  = "!temporal_asset.deleted &&\ntemporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST\n"
///     title       = "created"
///     description = "Send notifications on creation events"
///   }
/// }
/// # The topic where the resource change notifications will be sent.
/// resource "gcp_pubsub_topic" "feed_output" {
///   project = "my-project-name"
///   name    = "network-updates"
/// }
/// # The folder that will be monitored for resource updates.
/// resource "gcp_organizations_folder" "my_folder" {
///   display_name        = "Networking"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// # Find the project number of the project whose identity will be used for sending
/// # the asset change notifications.
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.cloudasset.FolderFeed;
/// import com.pulumi.gcp.cloudasset.FolderFeedArgs;
/// import com.pulumi.gcp.cloudasset.inputs.FolderFeedFeedOutputConfigArgs;
/// import com.pulumi.gcp.cloudasset.inputs.FolderFeedFeedOutputConfigPubsubDestinationArgs;
/// import com.pulumi.gcp.cloudasset.inputs.FolderFeedConditionArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         // The topic where the resource change notifications will be sent.
///         var feedOutput = new Topic("feedOutput", TopicArgs.builder()
///             .project("my-project-name")
///             .name("network-updates")
///             .build());
///
///         // The folder that will be monitored for resource updates.
///         var myFolder = new Folder("myFolder", FolderArgs.builder()
///             .displayName("Networking")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         // Create a feed that sends notifications about network resource updates under a
///         // particular folder.
///         var folderFeed = new FolderFeed("folderFeed", FolderFeedArgs.builder()
///             .billingProject("my-project-name")
///             .folder(myFolder.folderId())
///             .feedId("network-updates")
///             .contentType("RESOURCE")
///             .assetTypes(
///                 "compute.googleapis.com/Subnetwork",
///                 "compute.googleapis.com/Network")
///             .feedOutputConfig(FolderFeedFeedOutputConfigArgs.builder()
///                 .pubsubDestination(FolderFeedFeedOutputConfigPubsubDestinationArgs.builder()
///                     .topic(feedOutput.id())
///                     .build())
///                 .build())
///             .condition(FolderFeedConditionArgs.builder()
///                 .expression("""
/// !temporal_asset.deleted &&
/// temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
///                 """)
///                 .title("created")
///                 .description("Send notifications on creation events")
///                 .build())
///             .build());
///
///         // Find the project number of the project whose identity will be used for sending
///         // the asset change notifications.
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a feed that sends notifications about network resource updates under a
///   # particular folder.
///   folderFeed:
///     type: gcp:cloudasset:FolderFeed
///     name: folder_feed
///     properties:
///       billingProject: my-project-name
///       folder: ${myFolder.folderId}
///       feedId: network-updates
///       contentType: RESOURCE
///       assetTypes:
///         - compute.googleapis.com/Subnetwork
///         - compute.googleapis.com/Network
///       feedOutputConfig:
///         pubsubDestination:
///           topic: ${feedOutput.id}
///       condition:
///         expression: |
///           !temporal_asset.deleted &&
///           temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
///         title: created
///         description: Send notifications on creation events
///   # The topic where the resource change notifications will be sent.
///   feedOutput:
///     type: gcp:pubsub:Topic
///     name: feed_output
///     properties:
///       project: my-project-name
///       name: network-updates
///   # The folder that will be monitored for resource updates.
///   myFolder:
///     type: gcp:organizations:Folder
///     name: my_folder
///     properties:
///       displayName: Networking
///       parent: organizations/123456789
///       deletionProtection: false
/// variables:
///   # Find the project number of the project whose identity will be used for sending
///   # the asset change notifications.
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
/// ```
///
///
/// ## Import
///
/// FolderFeed can be imported using any of these accepted formats:
///
/// * `folders/{{folder_id}}/feeds/{{name}}`
/// * `{{folder_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, FolderFeed can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudasset/folderFeed:FolderFeed default folders/{{folder_id}}/feeds/{{name}}
/// $ pulumi import gcp:cloudasset/folderFeed:FolderFeed default {{folder_id}}/{{name}}
/// ```
class FolderFeed extends pulumi.CustomResource {
  /// A list of the full names of the assets to receive updates. You must specify either or both of
  /// assetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are
  /// exported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.
  /// See https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info.
  late final pulumi.Output<List<String>?> assetNames;
  /// A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// and assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to
  /// the feed. For example: "compute.googleapis.com/Disk"
  /// See https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all
  /// supported asset types.
  late final pulumi.Output<List<String>?> assetTypes;
  /// The project whose identity will be used when sending messages to the
  /// destination pubsub topic. It also specifies the project for API
  /// enablement check, quota, and billing.
  late final pulumi.Output<String> billingProject;
  /// A condition which determines whether an asset update should be published. If specified, an asset
  /// will be returned only when the expression evaluates to true. When set, expression field
  /// must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
  /// expression "temporal_asset.deleted == true" will only publish Asset deletions. Other fields of
  /// condition are optional.
  /// Structure is documented below.
  late final pulumi.Output<FolderFeedCondition?> condition;
  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  /// Possible values are: `CONTENT_TYPE_UNSPECIFIED`, `RESOURCE`, `IAM_POLICY`, `ORG_POLICY`, `OS_INVENTORY`, `ACCESS_POLICY`.
  late final pulumi.Output<String?> contentType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  late final pulumi.Output<String> feedId;
  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  late final pulumi.Output<FolderFeedFeedOutputConfig> feedOutputConfig;
  /// The folder this feed should be created in.
  late final pulumi.Output<String> folder;
  /// The ID of the folder where this feed has been created. Both [FOLDER_NUMBER]
  /// and folders/[FOLDER_NUMBER] are accepted.
  late final pulumi.Output<String> folderId;
  /// The format will be folders/{folder_number}/feeds/{client-assigned_feed_identifier}.
  late final pulumi.Output<String> name;

  /// Creates a new [FolderFeed].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderFeed]. {@macro pulumi_cloudasset_folder_feed_folder_feed_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderFeed(
    String name, {
    FolderFeedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudasset/folderFeed:FolderFeed',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetNames = registerOutput<List<String>?>('assetNames');
    assetTypes = registerOutput<List<String>?>('assetTypes');
    billingProject = registerOutput<String>('billingProject');
    condition = registerOutput<FolderFeedCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderFeedCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentType = registerOutput<String?>('contentType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    feedId = registerOutput<String>('feedId');
    feedOutputConfig = registerOutput<FolderFeedFeedOutputConfig>('feedOutputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderFeedFeedOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    folder = registerOutput<String>('folder');
    folderId = registerOutput<String>('folderId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [FolderFeed] resource's state with the given [name] and [id].
  static FolderFeed get(
    String name,
    pulumi.Input<String> id, {
    FolderFeedState? state,
  }) {
    return FolderFeed._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FolderFeed._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudasset/folderFeed:FolderFeed',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetNames = registerOutput<List<String>?>('assetNames');
    assetTypes = registerOutput<List<String>?>('assetTypes');
    billingProject = registerOutput<String>('billingProject');
    condition = registerOutput<FolderFeedCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderFeedCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentType = registerOutput<String?>('contentType');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    feedId = registerOutput<String>('feedId');
    feedOutputConfig = registerOutput<FolderFeedFeedOutputConfig>('feedOutputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderFeedFeedOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    folder = registerOutput<String>('folder');
    folderId = registerOutput<String>('folderId');
    this.name = registerOutput<String>('name');
  }
}
