import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';
import 'backup_state.dart';

/// A Google Cloud Filestore backup.
///
///
/// To get more information about Backup, see:
///
/// * [API documentation](https://cloud.google.com/filestore/docs/reference/rest/v1/projects.locations.backups)
/// * How-to Guides
/// * [Creating Backups](https://cloud.google.com/filestore/docs/create-backups)
/// * [Official Documentation](https://cloud.google.com/filestore/docs/backups)
///
/// ## Example Usage
///
/// ### Filestore Backup Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.filestore.Instance("instance", {
///     name: "fs-inst",
///     location: "us-central1-b",
///     tier: "BASIC_HDD",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: "default",
///         modes: ["MODE_IPV4"],
///         connectMode: "DIRECT_PEERING",
///     }],
/// });
/// const backup = new gcp.filestore.Backup("backup", {
///     name: "fs-bkup",
///     location: "us-central1",
///     description: "This is a filestore backup for the test instance",
///     sourceInstance: instance.id,
///     sourceFileShare: "share1",
///     labels: {
///         files: "label1",
///         "other-label": "label2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.filestore.Instance("instance",
///     name="fs-inst",
///     location="us-central1-b",
///     tier="BASIC_HDD",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": "default",
///         "modes": ["MODE_IPV4"],
///         "connect_mode": "DIRECT_PEERING",
///     }])
/// backup = gcp.filestore.Backup("backup",
///     name="fs-bkup",
///     location="us-central1",
///     description="This is a filestore backup for the test instance",
///     source_instance=instance.id,
///     source_file_share="share1",
///     labels={
///         "files": "label1",
///         "other-label": "label2",
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
///     var instance = new Gcp.Filestore.Instance("instance", new()
///     {
///         Name = "fs-inst",
///         Location = "us-central1-b",
///         Tier = "BASIC_HDD",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = "default",
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///                 ConnectMode = "DIRECT_PEERING",
///             },
///         },
///     });
///
///     var backup = new Gcp.Filestore.Backup("backup", new()
///     {
///         Name = "fs-bkup",
///         Location = "us-central1",
///         Description = "This is a filestore backup for the test instance",
///         SourceInstance = instance.Id,
///         SourceFileShare = "share1",
///         Labels =
///         {
///             { "files", "label1" },
///             { "other-label", "label2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := filestore.NewInstance(ctx, "instance", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("fs-inst"),
/// 			Location: pulumi.String("us-central1-b"),
/// 			Tier:     pulumi.String("BASIC_HDD"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String("default"),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 					ConnectMode: pulumi.String("DIRECT_PEERING"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = filestore.NewBackup(ctx, "backup", &filestore.BackupArgs{
/// 			Name:            pulumi.String("fs-bkup"),
/// 			Location:        pulumi.String("us-central1"),
/// 			Description:     pulumi.String("This is a filestore backup for the test instance"),
/// 			SourceInstance:  instance.ID().ToIDOutput().ToStringOutput(),
/// 			SourceFileShare: pulumi.String("share1"),
/// 			Labels: pulumi.StringMap{
/// 				"files":       pulumi.String("label1"),
/// 				"other-label": pulumi.String("label2"),
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
/// resource "gcp_filestore_instance" "instance" {
///   name     = "fs-inst"
///   location = "us-central1-b"
///   tier     = "BASIC_HDD"
///   file_shares = {
///     capacity_gb = 1024
///     name        = "share1"
///   }
///   networks {
///     network      = "default"
///     modes        = ["MODE_IPV4"]
///     connect_mode = "DIRECT_PEERING"
///   }
/// }
/// resource "gcp_filestore_backup" "backup" {
///   name              = "fs-bkup"
///   location          = "us-central1"
///   description       = "This is a filestore backup for the test instance"
///   source_instance   = gcp_filestore_instance.instance.id
///   source_file_share = "share1"
///   labels = {
///     "files"       = "label1"
///     "other-label" = "label2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
/// import com.pulumi.gcp.filestore.Backup;
/// import com.pulumi.gcp.filestore.BackupArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("fs-inst")
///             .location("us-central1-b")
///             .tier("BASIC_HDD")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network("default")
///                 .modes("MODE_IPV4")
///                 .connectMode("DIRECT_PEERING")
///                 .build())
///             .build());
///
///         var backup = new Backup("backup", BackupArgs.builder()
///             .name("fs-bkup")
///             .location("us-central1")
///             .description("This is a filestore backup for the test instance")
///             .sourceInstance(instance.id())
///             .sourceFileShare("share1")
///             .labels(Map.ofEntries(
///                 Map.entry("files", "label1"),
///                 Map.entry("other-label", "label2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:filestore:Instance
///     properties:
///       name: fs-inst
///       location: us-central1-b
///       tier: BASIC_HDD
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: default
///           modes:
///             - MODE_IPV4
///           connectMode: DIRECT_PEERING
///   backup:
///     type: gcp:filestore:Backup
///     properties:
///       name: fs-bkup
///       location: us-central1
///       description: This is a filestore backup for the test instance
///       sourceInstance: ${instance.id}
///       sourceFileShare: share1
///       labels:
///         files: label1
///         other-label: label2
/// ```
///
///
/// ## Import
///
/// Backup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backups/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Backup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:filestore/backup:Backup default projects/{{project}}/locations/{{location}}/backups/{{name}}
/// $ pulumi import gcp:filestore/backup:Backup default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:filestore/backup:Backup default {{location}}/{{name}}
/// ```
class Backup extends pulumi.CustomResource {
  /// The amount of bytes needed to allocate a full copy of the snapshot content.
  late final pulumi.Output<String> capacityGb;
  /// The time when the snapshot was created in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  late final pulumi.Output<String?> description;
  /// Amount of bytes that will be downloaded if the backup is restored.
  late final pulumi.Output<String> downloadBytes;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// KMS key name used for data encryption.
  late final pulumi.Output<String> kmsKeyName;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  late final pulumi.Output<String> location;
  /// The resource name of the backup. The name must be unique within the specified instance.
  /// The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Name of the file share in the source Cloud Filestore instance that the backup is created from.
  late final pulumi.Output<String> sourceFileShare;
  /// The resource name of the source Cloud Filestore instance, in the format projects/{projectId}/locations/{locationId}/instances/{instanceId}, used to create this backup.
  late final pulumi.Output<String> sourceInstance;
  /// The service tier of the source Cloud Filestore instance that this backup is created from.
  late final pulumi.Output<String> sourceInstanceTier;
  /// The backup state.
  late final pulumi.Output<String> state;
  /// The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  late final pulumi.Output<String> storageBytes;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  /// The field is ignored (both PUT & PATCH) when empty.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_filestore_backup_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(
    String name, {
    BackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:filestore/backup:Backup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    capacityGb = registerOutput<String>('capacityGb');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    downloadBytes = registerOutput<String>('downloadBytes');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    sourceFileShare = registerOutput<String>('sourceFileShare');
    sourceInstance = registerOutput<String>('sourceInstance');
    sourceInstanceTier = registerOutput<String>('sourceInstanceTier');
    state = registerOutput<String>('state');
    storageBytes = registerOutput<String>('storageBytes');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Backup] resource's state with the given [name] and [id].
  static Backup get(
    String name,
    pulumi.Input<String> id, {
    BackupState? state,
  }) {
    return Backup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Backup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:filestore/backup:Backup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    capacityGb = registerOutput<String>('capacityGb');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    downloadBytes = registerOutput<String>('downloadBytes');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    kmsKeyName = registerOutput<String>('kmsKeyName');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    sourceFileShare = registerOutput<String>('sourceFileShare');
    sourceInstance = registerOutput<String>('sourceInstance');
    sourceInstanceTier = registerOutput<String>('sourceInstanceTier');
    this.state = registerOutput<String>('state');
    storageBytes = registerOutput<String>('storageBytes');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
