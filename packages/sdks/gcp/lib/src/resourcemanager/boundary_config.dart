import 'package:pulumi/pulumi.dart' as pulumi;
import 'boundary_config_args.dart';
import 'boundary_config_state.dart';

/// A BoundaryConfig defines the common configuration for all Boundaries under a
/// parent Organization or Folder, such as the partitioning tag key.
///
/// A BoundaryConfig is a singleton: exactly one exists per parent and it cannot
/// be created or deleted through the API, only read and updated. Applying this
/// resource updates the existing BoundaryConfig. Destroying it clears the
/// `tagKey` field, returning the BoundaryConfig to its unconfigured state.
///
/// The service rejects *any* write to a BoundaryConfig, including a no-op one,
/// once at least one Boundary exists under the same parent
/// (`FAILED_PRECONDITION`). In practice that means the BoundaryConfig must be
/// fully configured before the first Boundary is created and must be the last
/// thing destroyed. Reference `google_resource_manager_boundary_config.&lt;name&gt;.tag_key`
/// in each `gcp.resourcemanager.Boundary`'s `tag_filter.tag_key` (or use
/// `dependsOn`) so Terraform orders both the create and the destroy correctly.
///
///
/// To get more information about BoundaryConfig, see:
///
/// * [API documentation](https://cloud.google.com/resource-manager/reference/rest/v3/organizations.boundaryConfig)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/resource-manager/docs/boundaries)
///
///
/// ## Example Usage
///
/// ### Resource Manager Boundary Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "bndcfg-fldr",
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
/// const boundaryConfig = new gcp.tags.TagKey("boundary_config", {
///     parent: "organizations/123456789",
///     shortName: "boundary-config-tag-key",
///     description: "Partitioning tag key used by boundaries under this folder.",
/// });
/// const boundaryConfigBoundaryConfig = new gcp.resourcemanager.BoundaryConfig("boundary_config", {
///     parent: folder.name,
///     tagKey: boundaryConfig.namespacedName,
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// folder = gcp.organizations.Folder("folder",
///     display_name="bndcfg-fldr",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// folder_editor = gcp.folder.IAMMember("folder_editor",
///     folder=folder.folder_id,
///     role="roles/resourcemanager.editor",
///     member="serviceAccount:my@service-account.com")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[folder_editor]))
/// boundary_config = gcp.tags.TagKey("boundary_config",
///     parent="organizations/123456789",
///     short_name="boundary-config-tag-key",
///     description="Partitioning tag key used by boundaries under this folder.")
/// boundary_config_boundary_config = gcp.resourcemanager.BoundaryConfig("boundary_config",
///     parent=folder.name,
///     tag_key=boundary_config.namespaced_name,
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
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
///         DisplayName = "bndcfg-fldr",
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
///     var boundaryConfig = new Gcp.Tags.TagKey("boundary_config", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "boundary-config-tag-key",
///         Description = "Partitioning tag key used by boundaries under this folder.",
///     });
///
///     var boundaryConfigBoundaryConfig = new Gcp.ResourceManager.BoundaryConfig("boundary_config", new()
///     {
///         Parent = folder.Name,
///         TagKey = boundaryConfig.NamespacedName,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
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
/// 			DisplayName:        pulumi.String("bndcfg-fldr"),
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
/// 		boundaryConfig, err := tags.NewTagKey(ctx, "boundary_config", &tags.TagKeyArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			ShortName:   pulumi.String("boundary-config-tag-key"),
/// 			Description: pulumi.String("Partitioning tag key used by boundaries under this folder."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewBoundaryConfig(ctx, "boundary_config", &resourcemanager.BoundaryConfigArgs{
/// 			Parent: folder2.Name,
/// 			TagKey: boundaryConfig.NamespacedName,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
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
///   display_name        = "bndcfg-fldr"
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
/// resource "gcp_tags_tag_key" "boundary_config" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent      = "organizations/123456789"
///   short_name  = "boundary-config-tag-key"
///   description = "Partitioning tag key used by boundaries under this folder."
/// }
/// resource "gcp_resourcemanager_boundary_config" "boundary_config" {
///   depends_on = [time_sleep.wait_60_seconds]
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent  = gcp_organizations_folder.folder.name
///   tag_key = gcp_tags_tag_key.boundary_config.namespaced_name
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
/// import com.pulumi.gcp.resourcemanager.BoundaryConfig;
/// import com.pulumi.gcp.resourcemanager.BoundaryConfigArgs;
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
///             .displayName("bndcfg-fldr")
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
///         var boundaryConfig = new TagKey("boundaryConfig", TagKeyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("boundary-config-tag-key")
///             .description("Partitioning tag key used by boundaries under this folder.")
///             .build());
///
///         var boundaryConfigBoundaryConfig = new BoundaryConfig("boundaryConfigBoundaryConfig", BoundaryConfigArgs.builder()
///             .parent(folder.name())
///             .tagKey(boundaryConfig.namespacedName())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
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
///       displayName: bndcfg-fldr
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
///   boundaryConfig:
///     type: gcp:tags:TagKey
///     name: boundary_config
///     properties:
///       parent: organizations/123456789
///       shortName: boundary-config-tag-key
///       description: Partitioning tag key used by boundaries under this folder.
///   boundaryConfigBoundaryConfig:
///     type: gcp:resourcemanager:BoundaryConfig
///     name: boundary_config
///     properties:
///       parent: ${folder.name}
///       tagKey: ${boundaryConfig.namespacedName}
///     options:
///       dependsOn:
///         - ${wait60Seconds}
/// ```
///
///
/// ## Import
///
/// BoundaryConfig can be imported using any of these accepted formats:
///
/// * `{{parent}}/boundaryConfig`
///
///
/// When using the `pulumi import` command, BoundaryConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:resourcemanager/boundaryConfig:BoundaryConfig default {{parent}}/boundaryConfig
/// ```
class BoundaryConfig extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A checksum computed by the server based on the value of other fields. May
  /// be sent on update requests to ensure the client has an up-to-date value
  /// before proceeding.
  late final pulumi.Output<String> etag;
  /// The unique resource name of the BoundaryConfig, in the form
  /// `organizations/{organization_id}/boundaryConfig` or
  /// `folders/{folder_id}/boundaryConfig`.
  late final pulumi.Output<String> name;
  /// The parent resource whose BoundaryConfig this is. Must be of the form
  /// `organizations/{organization_id}` or `folders/{folder_id}`.
  late final pulumi.Output<String> parent;
  /// The namespaced name of the partitioning tag key, in the form
  /// `{parent_id}/{tag_key_short_name}`, for example `123456789012/env`.
  /// Boundaries under this parent filter projects on this tag key.
  /// The service also accepts the `tagKeys/{numeric_id}` form here, but
  /// Boundaries accept only the namespaced form and are validated against this
  /// value verbatim. Storing the `tagKeys/{numeric_id}` form therefore makes
  /// every subsequent Boundary create fail with `FAILED_PRECONDITION`. Always
  /// use the namespaced form, for example
  /// `google_tags_tag_key.example.namespaced_name`.
  late final pulumi.Output<String> tagKey;
  /// The most recent time this BoundaryConfig was modified.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BoundaryConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BoundaryConfig]. {@macro pulumi_resourcemanager_boundary_config_boundary_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BoundaryConfig(
    String name, {
    BoundaryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/boundaryConfig:BoundaryConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.2').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    tagKey = registerOutput<String>('tagKey');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [BoundaryConfig] resource's state with the given [name] and [id].
  static BoundaryConfig get(
    String name,
    pulumi.Input<String> id, {
    BoundaryConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BoundaryConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BoundaryConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/boundaryConfig:BoundaryConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    tagKey = registerOutput<String>('tagKey');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [BoundaryConfig] resource.
  BoundaryConfig.reference(String urn)
    : super(
        'gcp:resourcemanager/boundaryConfig:BoundaryConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    tagKey = registerOutput<String>('tagKey');
    updateTime = registerOutput<String>('updateTime');
  }
}
