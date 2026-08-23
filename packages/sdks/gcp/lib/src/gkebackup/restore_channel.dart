import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_channel_args.dart';
import 'restore_channel_state.dart';

/// A RestoreChannel imposes constraints on where backups can be restored.
/// The RestoreChannel should be in the same project and region
/// as the backups. The backups can only be restored in the
/// destination_project.
///
///
/// To get more information about RestoreChannel, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/projects.locations.restoreChannels)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke)
///
/// ## Example Usage
///
/// ### Gkebackup Restorechannel Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.gkebackup.RestoreChannel("basic", {
///     name: "basic-channel",
///     location: "us-central1",
///     description: "Description",
///     destinationProject: "projects/24240755850",
///     labels: {
///         key: "some-value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.gkebackup.RestoreChannel("basic",
///     name="basic-channel",
///     location="us-central1",
///     description="Description",
///     destination_project="projects/24240755850",
///     labels={
///         "key": "some-value",
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
///     var basic = new Gcp.GkeBackup.RestoreChannel("basic", new()
///     {
///         Name = "basic-channel",
///         Location = "us-central1",
///         Description = "Description",
///         DestinationProject = "projects/24240755850",
///         Labels =
///         {
///             { "key", "some-value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkebackup.NewRestoreChannel(ctx, "basic", &gkebackup.RestoreChannelArgs{
/// 			Name:               pulumi.String("basic-channel"),
/// 			Location:           pulumi.String("us-central1"),
/// 			Description:        pulumi.String("Description"),
/// 			DestinationProject: pulumi.String("projects/24240755850"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("some-value"),
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
/// resource "gcp_gkebackup_restorechannel" "basic" {
///   name                = "basic-channel"
///   location            = "us-central1"
///   description         = "Description"
///   destination_project = "projects/24240755850"
///   labels = {
///     "key" = "some-value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkebackup.RestoreChannel;
/// import com.pulumi.gcp.gkebackup.RestoreChannelArgs;
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
///         var basic = new RestoreChannel("basic", RestoreChannelArgs.builder()
///             .name("basic-channel")
///             .location("us-central1")
///             .description("Description")
///             .destinationProject("projects/24240755850")
///             .labels(Map.of("key", "some-value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:gkebackup:RestoreChannel
///     properties:
///       name: basic-channel
///       location: us-central1
///       description: Description
///       destinationProject: projects/24240755850
///       labels:
///         key: some-value
/// ```
///
///
/// ## Import
///
/// RestoreChannel can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/restoreChannels/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, RestoreChannel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restoreChannel:RestoreChannel default projects/{{project}}/locations/{{location}}/restoreChannels/{{name}}
/// $ pulumi import gcp:gkebackup/restoreChannel:RestoreChannel default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:gkebackup/restoreChannel:RestoreChannel default {{location}}/{{name}}
/// ```
class RestoreChannel extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User specified descriptive string for this RestoreChannel.
  late final pulumi.Output<String?> description;
  /// The project where Backups will be restored.
  /// The format is `projects/{project}`.
  /// {project} can be project number or project id.
  late final pulumi.Output<String> destinationProject;
  /// The projectId where Backups will be restored.
  /// Example Project ID: "my-project-id".
  late final pulumi.Output<String> destinationProjectId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// updates of a restore channel from overwriting each other. It is strongly suggested that
  /// systems make use of the 'etag' in the read-modify-write cycle to perform RestoreChannel updates
  /// in order to avoid race conditions: An etag is returned in the response to restoreChannels.get,
  /// and systems are expected to put that etag in the request to restoreChannels.patch or
  /// restoreChannels.delete to ensure that their change will be applied to the same version of the resource.
  late final pulumi.Output<String> etag;
  /// Description: A set of custom labels supplied by the user.
  /// A list of key-&gt;value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The region of the Restore Channel.
  late final pulumi.Output<String> location;
  /// The full name of the RestoreChannel Resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Server generated, unique identifier of UUID format.
  late final pulumi.Output<String> uid;

  /// Creates a new [RestoreChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestoreChannel]. {@macro pulumi_gkebackup_restore_channel_restore_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestoreChannel(
    String name, {
    RestoreChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/restoreChannel:RestoreChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destinationProject = registerOutput<String>('destinationProject');
    destinationProjectId = registerOutput<String>('destinationProjectId');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [RestoreChannel] resource's state with the given [name] and [id].
  static RestoreChannel get(
    String name,
    pulumi.Input<String> id, {
    RestoreChannelState? state,
  }) {
    return RestoreChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RestoreChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/restoreChannel:RestoreChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destinationProject = registerOutput<String>('destinationProject');
    destinationProjectId = registerOutput<String>('destinationProjectId');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    uid = registerOutput<String>('uid');
  }
}
