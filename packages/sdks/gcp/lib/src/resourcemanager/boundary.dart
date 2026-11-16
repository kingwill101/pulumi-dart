import 'package:pulumi/pulumi.dart' as pulumi;
import 'boundary_args.dart';
import 'boundary_resource_filter.dart';
import 'boundary_state.dart';

/// A Boundary is a collection of projects defined by filtering criteria on an
/// organization or a folder. Descendant projects are dynamically included in the
/// Boundary based on the configured resource filter.
///
/// Membership is recomputed asynchronously, so the projects inside a Boundary
/// are not necessarily settled by the time the apply returns.
///
///
/// To get more information about Boundary, see:
///
/// * [API documentation](https://cloud.google.com/resource-manager/reference/rest/v3/organizations.boundaries)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/resource-manager/docs/boundaries)
///
///
/// ## Example Usage
///
/// ### Resource Manager Boundary Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "bnd-fldr",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const folderEditor = new gcp.folder.IAMMember("folder_editor", {
///     folder: folder.folderId,
///     role: "roles/resourcemanager.editor",
///     member: "serviceAccount:my@service-account.com",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [folderEditor],
/// });
/// const boundary = new gcp.tags.TagKey("boundary", {
///     parent: "organizations/123456789",
///     shortName: "bndkey",
///     description: "Partitioning tag key used by boundaries under this folder.",
/// });
/// const boundaryTagValue = new gcp.tags.TagValue("boundary", {
///     parent: boundary.id,
///     shortName: "bndval",
///     description: "Tag value selecting the projects inside the boundary.",
/// });
/// const boundaryUpdated = new gcp.tags.TagValue("boundary_updated", {
///     parent: boundary.id,
///     shortName: "bndval-updated",
///     description: "Updated tag value selecting the projects inside the boundary.",
/// });
/// // A BoundaryConfig naming the partitioning tag key must exist on the parent
/// // before any Boundary can be created under it.
/// const boundaryBoundaryConfig = new gcp.resourcemanager.BoundaryConfig("boundary", {
///     parent: folder.name,
///     tagKey: boundary.namespacedName,
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const boundaryBoundary = new gcp.resourcemanager.Boundary("boundary", {
///     parent: folder.name,
///     boundaryId: "bnd",
///     displayName: "Example boundary",
///     resourceFilter: {
///         tagFilter: {
///             tagKey: boundaryBoundaryConfig.tagKey,
///             tagValue: boundaryTagValue.shortName,
///         },
///     },
/// }, {
///     dependsOn: [boundaryBoundaryConfig],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// folder = gcp.organizations.Folder("folder",
///     display_name="bnd-fldr",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// folder_editor = gcp.folder.IAMMember("folder_editor",
///     folder=folder.folder_id,
///     role="roles/resourcemanager.editor",
///     member="serviceAccount:my@service-account.com")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[folder_editor]))
/// boundary = gcp.tags.TagKey("boundary",
///     parent="organizations/123456789",
///     short_name="bndkey",
///     description="Partitioning tag key used by boundaries under this folder.")
/// boundary_tag_value = gcp.tags.TagValue("boundary",
///     parent=boundary.id,
///     short_name="bndval",
///     description="Tag value selecting the projects inside the boundary.")
/// boundary_updated = gcp.tags.TagValue("boundary_updated",
///     parent=boundary.id,
///     short_name="bndval-updated",
///     description="Updated tag value selecting the projects inside the boundary.")
/// # A BoundaryConfig naming the partitioning tag key must exist on the parent
/// # before any Boundary can be created under it.
/// boundary_boundary_config = gcp.resourcemanager.BoundaryConfig("boundary",
///     parent=folder.name,
///     tag_key=boundary.namespaced_name,
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// boundary_boundary = gcp.resourcemanager.Boundary("boundary",
///     parent=folder.name,
///     boundary_id="bnd",
///     display_name="Example boundary",
///     resource_filter={
///         "tag_filter": {
///             "tag_key": boundary_boundary_config.tag_key,
///             "tag_value": boundary_tag_value.short_name,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[boundary_boundary_config]))
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
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "bnd-fldr",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var folderEditor = new Gcp.Folder.IAMMember("folder_editor", new()
///     {
///         Folder = folder.FolderId,
///         Role = "roles/resourcemanager.editor",
///         Member = "serviceAccount:my@service-account.com",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             folderEditor,
///         },
///     });
///
///     var boundary = new Gcp.Tags.TagKey("boundary", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "bndkey",
///         Description = "Partitioning tag key used by boundaries under this folder.",
///     });
///
///     var boundaryTagValue = new Gcp.Tags.TagValue("boundary", new()
///     {
///         Parent = boundary.Id,
///         ShortName = "bndval",
///         Description = "Tag value selecting the projects inside the boundary.",
///     });
///
///     var boundaryUpdated = new Gcp.Tags.TagValue("boundary_updated", new()
///     {
///         Parent = boundary.Id,
///         ShortName = "bndval-updated",
///         Description = "Updated tag value selecting the projects inside the boundary.",
///     });
///
///     // A BoundaryConfig naming the partitioning tag key must exist on the parent
///     // before any Boundary can be created under it.
///     var boundaryBoundaryConfig = new Gcp.ResourceManager.BoundaryConfig("boundary", new()
///     {
///         Parent = folder.Name,
///         TagKey = boundary.NamespacedName,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var boundaryBoundary = new Gcp.ResourceManager.Boundary("boundary", new()
///     {
///         Parent = folder.Name,
///         BoundaryId = "bnd",
///         DisplayName = "Example boundary",
///         ResourceFilter = new Gcp.ResourceManager.Inputs.BoundaryResourceFilterArgs
///         {
///             TagFilter = new Gcp.ResourceManager.Inputs.BoundaryResourceFilterTagFilterArgs
///             {
///                 TagKey = boundaryBoundaryConfig.TagKey,
///                 TagValue = boundaryTagValue.ShortName,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             boundaryBoundaryConfig,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/folder"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/resourcemanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder2, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("bnd-fldr"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		folderEditor, err := folder.NewIAMMember(ctx, "folder_editor", &folder.IAMMemberArgs{
/// 			Folder: folder2.FolderId,
/// 			Role:   pulumi.String("roles/resourcemanager.editor"),
/// 			Member: pulumi.String("serviceAccount:my@service-account.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			folderEditor,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		boundary, err := tags.NewTagKey(ctx, "boundary", &tags.TagKeyArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			ShortName:   pulumi.String("bndkey"),
/// 			Description: pulumi.String("Partitioning tag key used by boundaries under this folder."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		boundaryTagValue, err := tags.NewTagValue(ctx, "boundary", &tags.TagValueArgs{
/// 			Parent:      boundary.ID(),
/// 			ShortName:   pulumi.String("bndval"),
/// 			Description: pulumi.String("Tag value selecting the projects inside the boundary."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tags.NewTagValue(ctx, "boundary_updated", &tags.TagValueArgs{
/// 			Parent:      boundary.ID(),
/// 			ShortName:   pulumi.String("bndval-updated"),
/// 			Description: pulumi.String("Updated tag value selecting the projects inside the boundary."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// A BoundaryConfig naming the partitioning tag key must exist on the parent
/// 		// before any Boundary can be created under it.
/// 		boundaryBoundaryConfig, err := resourcemanager.NewBoundaryConfig(ctx, "boundary", &resourcemanager.BoundaryConfigArgs{
/// 			Parent: folder2.Name,
/// 			TagKey: boundary.NamespacedName,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewBoundary(ctx, "boundary", &resourcemanager.BoundaryArgs{
/// 			Parent:      folder2.Name,
/// 			BoundaryId:  pulumi.String("bnd"),
/// 			DisplayName: pulumi.String("Example boundary"),
/// 			ResourceFilter: &resourcemanager.BoundaryResourceFilterArgs{
/// 				TagFilter: &resourcemanager.BoundaryResourceFilterTagFilterArgs{
/// 					TagKey:   boundaryBoundaryConfig.TagKey,
/// 					TagValue: boundaryTagValue.ShortName,
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			boundaryBoundaryConfig,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
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
/// resource "gcp_organizations_folder" "folder" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name        = "bnd-fldr"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "gcp_folder_i_a_m_member" "folder_editor" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   folder = gcp_organizations_folder.folder.folder_id
///   role   = "roles/resourcemanager.editor"
///   member = "serviceAccount:my@service-account.com"
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on = [gcp_folder_i_a_m_member.folder_editor]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "60s"
/// }
/// resource "gcp_tags_tag_key" "boundary" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent      = "organizations/123456789"
///   short_name  = "bndkey"
///   description = "Partitioning tag key used by boundaries under this folder."
/// }
/// resource "gcp_tags_tag_value" "boundary" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent      = gcp_tags_tag_key.boundary.id
///   short_name  = "bndval"
///   description = "Tag value selecting the projects inside the boundary."
/// }
/// resource "gcp_tags_tag_value" "boundary_updated" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent      = gcp_tags_tag_key.boundary.id
///   short_name  = "bndval-updated"
///   description = "Updated tag value selecting the projects inside the boundary."
/// }
/// # A BoundaryConfig naming the partitioning tag key must exist on the parent
/// # before any Boundary can be created under it.
/// resource "gcp_resourcemanager_boundary_config" "boundary" {
///   depends_on = [time_sleep.wait_60_seconds]
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent  = gcp_organizations_folder.folder.name
///   tag_key = gcp_tags_tag_key.boundary.namespaced_name
/// }
/// resource "gcp_resourcemanager_boundary" "boundary" {
///   depends_on = [gcp_resourcemanager_boundary_config.boundary]
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent       = gcp_organizations_folder.folder.name
///   boundary_id  = "bnd"
///   display_name = "Example boundary"
///   resource_filter = {
///     tag_filter = {
///       tag_key   = gcp_resourcemanager_boundary_config.boundary.tag_key
///       tag_value = gcp_tags_tag_value.boundary.short_name
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.resourcemanager.BoundaryConfig;
/// import com.pulumi.gcp.resourcemanager.BoundaryConfigArgs;
/// import com.pulumi.gcp.resourcemanager.Boundary;
/// import com.pulumi.gcp.resourcemanager.BoundaryArgs;
/// import com.pulumi.gcp.resourcemanager.inputs.BoundaryResourceFilterArgs;
/// import com.pulumi.gcp.resourcemanager.inputs.BoundaryResourceFilterTagFilterArgs;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("bnd-fldr")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var folderEditor = new IAMMember("folderEditor", IAMMemberArgs.builder()
///             .folder(folder.folderId())
///             .role("roles/resourcemanager.editor")
///             .member("serviceAccount:my@service-account.com")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(folderEditor)
///                 .build());
///
///         var boundary = new TagKey("boundary", TagKeyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("bndkey")
///             .description("Partitioning tag key used by boundaries under this folder.")
///             .build());
///
///         var boundaryTagValue = new TagValue("boundaryTagValue", TagValueArgs.builder()
///             .parent(boundary.id())
///             .shortName("bndval")
///             .description("Tag value selecting the projects inside the boundary.")
///             .build());
///
///         var boundaryUpdated = new TagValue("boundaryUpdated", TagValueArgs.builder()
///             .parent(boundary.id())
///             .shortName("bndval-updated")
///             .description("Updated tag value selecting the projects inside the boundary.")
///             .build());
///
///         // A BoundaryConfig naming the partitioning tag key must exist on the parent
///         // before any Boundary can be created under it.
///         var boundaryBoundaryConfig = new BoundaryConfig("boundaryBoundaryConfig", BoundaryConfigArgs.builder()
///             .parent(folder.name())
///             .tagKey(boundary.namespacedName())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var boundaryBoundary = new Boundary("boundaryBoundary", BoundaryArgs.builder()
///             .parent(folder.name())
///             .boundaryId("bnd")
///             .displayName("Example boundary")
///             .resourceFilter(BoundaryResourceFilterArgs.builder()
///                 .tagFilter(BoundaryResourceFilterTagFilterArgs.builder()
///                     .tagKey(boundaryBoundaryConfig.tagKey())
///                     .tagValue(boundaryTagValue.shortName())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(boundaryBoundaryConfig)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: bnd-fldr
///       parent: organizations/123456789
///       deletionProtection: false
///   folderEditor:
///     type: gcp:folder:IAMMember
///     name: folder_editor
///     properties:
///       folder: ${folder.folderId}
///       role: roles/resourcemanager.editor
///       member: serviceAccount:my@service-account.com
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${folderEditor}
///   boundary:
///     type: gcp:tags:TagKey
///     properties:
///       parent: organizations/123456789
///       shortName: bndkey
///       description: Partitioning tag key used by boundaries under this folder.
///   boundaryTagValue:
///     type: gcp:tags:TagValue
///     name: boundary
///     properties:
///       parent: ${boundary.id}
///       shortName: bndval
///       description: Tag value selecting the projects inside the boundary.
///   boundaryUpdated:
///     type: gcp:tags:TagValue
///     name: boundary_updated
///     properties:
///       parent: ${boundary.id}
///       shortName: bndval-updated
///       description: Updated tag value selecting the projects inside the boundary.
///   # A BoundaryConfig naming the partitioning tag key must exist on the parent
///   # before any Boundary can be created under it.
///   boundaryBoundaryConfig:
///     type: gcp:resourcemanager:BoundaryConfig
///     name: boundary
///     properties:
///       parent: ${folder.name}
///       tagKey: ${boundary.namespacedName}
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   boundaryBoundary:
///     type: gcp:resourcemanager:Boundary
///     name: boundary
///     properties:
///       parent: ${folder.name}
///       boundaryId: bnd
///       displayName: Example boundary
///       resourceFilter:
///         tagFilter:
///           tagKey: ${boundaryBoundaryConfig.tagKey}
///           tagValue: ${boundaryTagValue.shortName}
///     options:
///       dependsOn:
///         - ${boundaryBoundaryConfig}
/// ```
///
///
/// ## Import
///
/// Boundary can be imported using any of these accepted formats:
///
/// * `{{parent}}/boundaries/{{boundary_id}}`
///
///
/// When using the `pulumi import` command, Boundary can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:resourcemanager/boundary:Boundary default {{parent}}/boundaries/{{boundary_id}}
/// ```
class Boundary extends pulumi.CustomResource {
  /// The user-assigned ID for the Boundary, which becomes the final component
  /// of the Boundary's resource name. Must be unique within the parent.
  /// Must be 6 to 30 lowercase ASCII letters, digits, or hyphens, must start
  /// with a letter, and may not end with a hyphen.
  late final pulumi.Output<String> boundaryId;
  /// The creation time of the Boundary.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human-readable display name of the Boundary. When present it must be
  /// between 4 and 30 characters. Allowed characters are lowercase and
  /// uppercase letters, numbers, hyphen, single-quote, double-quote, space,
  /// and exclamation point.
  late final pulumi.Output<String?> displayName;
  /// A checksum computed by the server based on the value of other fields. May
  /// be sent on update requests to ensure the client has an up-to-date value
  /// before proceeding.
  late final pulumi.Output<String> etag;
  /// The Management Project associated with this Boundary, in the form
  /// `projects/{project_number}`. This is populated by the service when the
  /// Boundary is associated with a CapabilityConfig; it cannot be set directly
  /// on the Boundary. To choose a management project, set it on the
  /// `gcp.resourcemanager.CapabilityConfig` resource instead.
  late final pulumi.Output<String> managementProject;
  /// The unique resource name of the Boundary, in the form
  /// `organizations/{organization_id}/boundaries/{boundary_id}` or
  /// `folders/{folder_id}/boundaries/{boundary_id}`.
  late final pulumi.Output<String> name;
  /// The parent resource under which the Boundary is created. Must be of the
  /// form `organizations/{organization_id}` or `folders/{folder_id}`.
  late final pulumi.Output<String> parent;
  /// The filter defining the criteria for descendant projects to be included
  /// in the Boundary.
  /// `tagValue` is the only part of the filter that can be changed after
  /// creation, and it cannot be cleared.
  /// Structure is documented below.
  late final pulumi.Output<BoundaryResourceFilter?> resourceFilter;
  /// The lifecycle state of the Boundary. Possible values are `CREATING` and
  /// `ACTIVE`.
  late final pulumi.Output<String> state;
  /// The most recent time this Boundary was modified.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Boundary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Boundary]. {@macro pulumi_resourcemanager_boundary_boundary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Boundary(
    String name, {
    BoundaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/boundary:Boundary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.2').merge(options),
        ) {
    boundaryId = registerOutput<String>('boundaryId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    managementProject = registerOutput<String>('managementProject');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    resourceFilter = registerOutput<BoundaryResourceFilter?>('resourceFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BoundaryResourceFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Boundary] resource's state with the given [name] and [id].
  static Boundary get(
    String name,
    pulumi.Input<String> id, {
    BoundaryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Boundary._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Boundary._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/boundary:Boundary',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    boundaryId = registerOutput<String>('boundaryId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    managementProject = registerOutput<String>('managementProject');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    resourceFilter = registerOutput<BoundaryResourceFilter?>('resourceFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BoundaryResourceFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Boundary] resource.
  Boundary.reference(String urn)
    : super(
        'gcp:resourcemanager/boundary:Boundary',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    boundaryId = registerOutput<String>('boundaryId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    managementProject = registerOutput<String>('managementProject');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    resourceFilter = registerOutput<BoundaryResourceFilter?>('resourceFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BoundaryResourceFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
