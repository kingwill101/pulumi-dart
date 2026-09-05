import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_advanced_machine_features.dart';
import 'instance_from_machine_image_args.dart';
import 'instance_from_machine_image_attached_disk.dart';
import 'instance_from_machine_image_boot_disk.dart';
import 'instance_from_machine_image_confidential_instance_config.dart';
import 'instance_from_machine_image_guest_accelerator.dart';
import 'instance_from_machine_image_instance_encryption_key.dart';
import 'instance_from_machine_image_network_interface.dart';
import 'instance_from_machine_image_network_performance_config.dart';
import 'instance_from_machine_image_params.dart';
import 'instance_from_machine_image_reservation_affinity.dart';
import 'instance_from_machine_image_scheduling.dart';
import 'instance_from_machine_image_scratch_disk.dart';
import 'instance_from_machine_image_service_account.dart';
import 'instance_from_machine_image_shielded_instance_config.dart';
import 'instance_from_machine_image_source_machine_image_encryption_key.dart';
import 'instance_from_machine_image_state.dart';
import 'instance_from_machine_image_workload_identity_config.dart';

/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// Manages a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// This resource is specifically to create a compute instance from a given
/// `sourceMachineImage`. To create an instance without a machine image, use the
/// `gcp.compute.Instance` resource.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tpl = new gcp.compute.InstanceFromMachineImage("tpl", {
///     name: "instance-from-machine-image",
///     zone: "us-central1-a",
///     sourceMachineImage: "projects/PROJECT-ID/global/machineImages/NAME",
///     canIpForward: false,
///     labels: {
///         my_key: "my_value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tpl = gcp.compute.InstanceFromMachineImage("tpl",
///     name="instance-from-machine-image",
///     zone="us-central1-a",
///     source_machine_image="projects/PROJECT-ID/global/machineImages/NAME",
///     can_ip_forward=False,
///     labels={
///         "my_key": "my_value",
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
///     var tpl = new Gcp.Compute.InstanceFromMachineImage("tpl", new()
///     {
///         Name = "instance-from-machine-image",
///         Zone = "us-central1-a",
///         SourceMachineImage = "projects/PROJECT-ID/global/machineImages/NAME",
///         CanIpForward = false,
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewInstanceFromMachineImage(ctx, "tpl", &compute.InstanceFromMachineImageArgs{
/// 			Name:               pulumi.String("instance-from-machine-image"),
/// 			Zone:               pulumi.String("us-central1-a"),
/// 			SourceMachineImage: pulumi.String("projects/PROJECT-ID/global/machineImages/NAME"),
/// 			CanIpForward:       pulumi.Bool(false),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
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
/// resource "gcp_compute_instancefrommachineimage" "tpl" {
///   name                 = "instance-from-machine-image"
///   zone                 = "us-central1-a"
///   source_machine_image = "projects/PROJECT-ID/global/machineImages/NAME"
///   can_ip_forward       = false
///   labels = {
///     "my_key" = "my_value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.InstanceFromMachineImage;
/// import com.pulumi.gcp.compute.InstanceFromMachineImageArgs;
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
///         var tpl = new InstanceFromMachineImage("tpl", InstanceFromMachineImageArgs.builder()
///             .name("instance-from-machine-image")
///             .zone("us-central1-a")
///             .sourceMachineImage("projects/PROJECT-ID/global/machineImages/NAME")
///             .canIpForward(false)
///             .labels(Map.of("my_key", "my_value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tpl:
///     type: gcp:compute:InstanceFromMachineImage
///     properties:
///       name: instance-from-machine-image
///       zone: us-central1-a
///       sourceMachineImage: projects/PROJECT-ID/global/machineImages/NAME
///       canIpForward: false
///       labels:
///         my_key: my_value
/// ```
class InstanceFromMachineImage extends pulumi.CustomResource {
  /// Controls for advanced machine-related behavior features.
  late final pulumi.Output<InstanceFromMachineImageAdvancedMachineFeatures> advancedMachineFeatures;
  /// If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail.
  late final pulumi.Output<bool> allowStoppingForUpdate;
  /// List of disks attached to the instance
  late final pulumi.Output<List<InstanceFromMachineImageAttachedDisk>> attachedDisks;
  /// The boot disk for the instance.
  late final pulumi.Output<List<InstanceFromMachineImageBootDisk>> bootDisks;
  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  late final pulumi.Output<bool> canIpForward;
  /// The Confidential VM config being used by the instance.  onHostMaintenance has to be set to TERMINATE or this will fail to create.
  late final pulumi.Output<InstanceFromMachineImageConfidentialInstanceConfig> confidentialInstanceConfig;
  /// The CPU platform used by this instance.
  late final pulumi.Output<String> cpuPlatform;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Current status of the instance.
  /// This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED.
  /// For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  late final pulumi.Output<String> currentStatus;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether deletion protection is enabled on this instance.
  late final pulumi.Output<bool> deletionProtection;
  /// A brief description of the resource.
  late final pulumi.Output<String> description;
  /// Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".
  late final pulumi.Output<String> desiredStatus;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Whether the instance has virtual displays enabled.
  late final pulumi.Output<bool> enableDisplay;
  /// Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
  late final pulumi.Output<bool> eraseWindowsVssSignature;
  /// List of the type and count of accelerator cards attached to the instance.
  late final pulumi.Output<List<InstanceFromMachineImageGuestAccelerator>> guestAccelerators;
  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  late final pulumi.Output<String> hostname;
  /// Encryption key used to provide data encryption on the given instance.
  late final pulumi.Output<InstanceFromMachineImageInstanceEncryptionKey> instanceEncryptionKey;
  /// The server-assigned unique identifier of this instance.
  late final pulumi.Output<String> instanceId;
  /// Action to be taken when a customer's encryption key is revoked. Supports "STOP" and "NONE", with "NONE" being the default.
  late final pulumi.Output<String> keyRevocationActionType;
  /// The unique fingerprint of the labels.
  late final pulumi.Output<String> labelFingerprint;
  /// A set of key/value label pairs assigned to the instance.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>> labels;
  /// The machine type to create.
  late final pulumi.Output<String> machineType;
  /// Metadata key/value pairs made available within the instance.
  late final pulumi.Output<Map<String, String>> metadata;
  /// The unique fingerprint of the metadata.
  late final pulumi.Output<String> metadataFingerprint;
  /// Metadata startup scripts made available within the instance.
  late final pulumi.Output<String> metadataStartupScript;
  /// The minimum CPU platform specified for the VM instance.
  late final pulumi.Output<String> minCpuPlatform;
  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The networks attached to the instance.
  late final pulumi.Output<List<InstanceFromMachineImageNetworkInterface>> networkInterfaces;
  /// Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  late final pulumi.Output<InstanceFromMachineImageNetworkPerformanceConfig> networkPerformanceConfig;
  /// Stores additional params passed with the request, but not persisted as part of resource payload.
  late final pulumi.Output<InstanceFromMachineImageParams> params;
  /// Partner Metadata Map made available within the instance.
  late final pulumi.Output<Map<String, String>> partnerMetadata;
  /// The ID of the project in which the resource belongs. If selfLink is provided, this value is ignored. If neither selfLink nor project are provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Specifies the reservations that this instance can consume from.
  late final pulumi.Output<InstanceFromMachineImageReservationAffinity> reservationAffinity;
  /// A list of selfLinks of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  late final pulumi.Output<String> resourcePolicies;
  /// The scheduling strategy being used by the instance.
  late final pulumi.Output<InstanceFromMachineImageScheduling> scheduling;
  /// The scratch disks attached to the instance.
  late final pulumi.Output<List<InstanceFromMachineImageScratchDisk>> scratchDisks;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The service account to attach to the instance.
  late final pulumi.Output<InstanceFromMachineImageServiceAccount> serviceAccount;
  /// The shielded vm config being used by the instance.
  late final pulumi.Output<InstanceFromMachineImageShieldedInstanceConfig> shieldedInstanceConfig;
  /// Name or self link of a machine
  /// image to create the instance based on.
  ///
  /// - - -
  late final pulumi.Output<String> sourceMachineImage;
  /// Encryption key for the source machine image.
  late final pulumi.Output<InstanceFromMachineImageSourceMachineImageEncryptionKey?> sourceMachineImageEncryptionKey;
  /// The list of tags attached to the instance.
  late final pulumi.Output<List<String>> tags;
  /// The unique fingerprint of the tags.
  late final pulumi.Output<String> tagsFingerprint;
  /// Workload identity config.
  late final pulumi.Output<InstanceFromMachineImageWorkloadIdentityConfig> workloadIdentityConfig;
  /// The zone that the machine should be created in. If not
  /// set, the provider zone is used.
  ///
  /// In addition to these, most* arguments from `gcp.compute.Instance` are supported
  /// as a way to override the properties in the machine image. All exported attributes
  /// from `gcp.compute.Instance` are likewise exported here.
  ///
  /// &gt; **Warning:** *Due to API limitations, disk overrides are currently disabled. This includes the "bootDisk", "attachedDisk", and "scratchDisk" fields.
  late final pulumi.Output<String> zone;

  /// Creates a new [InstanceFromMachineImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceFromMachineImage]. {@macro pulumi_compute_instance_from_machine_image_instance_from_machine_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceFromMachineImage(
    String name, {
    InstanceFromMachineImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceFromMachineImage:InstanceFromMachineImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    advancedMachineFeatures = registerOutput<InstanceFromMachineImageAdvancedMachineFeatures>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    allowStoppingForUpdate = registerOutput<bool>('allowStoppingForUpdate');
    attachedDisks = registerOutput<List<InstanceFromMachineImageAttachedDisk>>('attachedDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageAttachedDisk>(guardedValue, (value) => InstanceFromMachineImageAttachedDisk.fromMap((value as Map).cast<String, dynamic>())); });
    bootDisks = registerOutput<List<InstanceFromMachineImageBootDisk>>('bootDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageBootDisk>(guardedValue, (value) => InstanceFromMachineImageBootDisk.fromMap((value as Map).cast<String, dynamic>())); });
    canIpForward = registerOutput<bool>('canIpForward');
    confidentialInstanceConfig = registerOutput<InstanceFromMachineImageConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuPlatform = registerOutput<String>('cpuPlatform');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    currentStatus = registerOutput<String>('currentStatus');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool>('deletionProtection');
    description = registerOutput<String>('description');
    desiredStatus = registerOutput<String>('desiredStatus');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableDisplay = registerOutput<bool>('enableDisplay');
    eraseWindowsVssSignature = registerOutput<bool>('eraseWindowsVssSignature');
    guestAccelerators = registerOutput<List<InstanceFromMachineImageGuestAccelerator>>('guestAccelerators', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageGuestAccelerator>(guardedValue, (value) => InstanceFromMachineImageGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); });
    hostname = registerOutput<String>('hostname');
    instanceEncryptionKey = registerOutput<InstanceFromMachineImageInstanceEncryptionKey>('instanceEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageInstanceEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    keyRevocationActionType = registerOutput<String>('keyRevocationActionType');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    machineType = registerOutput<String>('machineType');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metadataFingerprint = registerOutput<String>('metadataFingerprint');
    metadataStartupScript = registerOutput<String>('metadataStartupScript');
    minCpuPlatform = registerOutput<String>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<InstanceFromMachineImageNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterface>(guardedValue, (value) => InstanceFromMachineImageNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceConfig = registerOutput<InstanceFromMachineImageNetworkPerformanceConfig>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    params = registerOutput<InstanceFromMachineImageParams>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    partnerMetadata = registerOutput<Map<String, String>>('partnerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reservationAffinity = registerOutput<InstanceFromMachineImageReservationAffinity>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourcePolicies = registerOutput<String>('resourcePolicies');
    scheduling = registerOutput<InstanceFromMachineImageScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scratchDisks = registerOutput<List<InstanceFromMachineImageScratchDisk>>('scratchDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageScratchDisk>(guardedValue, (value) => InstanceFromMachineImageScratchDisk.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    serviceAccount = registerOutput<InstanceFromMachineImageServiceAccount>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<InstanceFromMachineImageShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceMachineImage = registerOutput<String>('sourceMachineImage');
    sourceMachineImageEncryptionKey = registerOutput<InstanceFromMachineImageSourceMachineImageEncryptionKey?>('sourceMachineImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageSourceMachineImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<InstanceFromMachineImageWorkloadIdentityConfig>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [InstanceFromMachineImage] resource's state with the given [name] and [id].
  static InstanceFromMachineImage get(
    String name,
    pulumi.Input<String> id, {
    InstanceFromMachineImageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceFromMachineImage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceFromMachineImage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceFromMachineImage:InstanceFromMachineImage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedMachineFeatures = registerOutput<InstanceFromMachineImageAdvancedMachineFeatures>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    allowStoppingForUpdate = registerOutput<bool>('allowStoppingForUpdate');
    attachedDisks = registerOutput<List<InstanceFromMachineImageAttachedDisk>>('attachedDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageAttachedDisk>(guardedValue, (value) => InstanceFromMachineImageAttachedDisk.fromMap((value as Map).cast<String, dynamic>())); });
    bootDisks = registerOutput<List<InstanceFromMachineImageBootDisk>>('bootDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageBootDisk>(guardedValue, (value) => InstanceFromMachineImageBootDisk.fromMap((value as Map).cast<String, dynamic>())); });
    canIpForward = registerOutput<bool>('canIpForward');
    confidentialInstanceConfig = registerOutput<InstanceFromMachineImageConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuPlatform = registerOutput<String>('cpuPlatform');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    currentStatus = registerOutput<String>('currentStatus');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool>('deletionProtection');
    description = registerOutput<String>('description');
    desiredStatus = registerOutput<String>('desiredStatus');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableDisplay = registerOutput<bool>('enableDisplay');
    eraseWindowsVssSignature = registerOutput<bool>('eraseWindowsVssSignature');
    guestAccelerators = registerOutput<List<InstanceFromMachineImageGuestAccelerator>>('guestAccelerators', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageGuestAccelerator>(guardedValue, (value) => InstanceFromMachineImageGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); });
    hostname = registerOutput<String>('hostname');
    instanceEncryptionKey = registerOutput<InstanceFromMachineImageInstanceEncryptionKey>('instanceEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageInstanceEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    keyRevocationActionType = registerOutput<String>('keyRevocationActionType');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    machineType = registerOutput<String>('machineType');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metadataFingerprint = registerOutput<String>('metadataFingerprint');
    metadataStartupScript = registerOutput<String>('metadataStartupScript');
    minCpuPlatform = registerOutput<String>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<InstanceFromMachineImageNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterface>(guardedValue, (value) => InstanceFromMachineImageNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceConfig = registerOutput<InstanceFromMachineImageNetworkPerformanceConfig>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    params = registerOutput<InstanceFromMachineImageParams>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    partnerMetadata = registerOutput<Map<String, String>>('partnerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reservationAffinity = registerOutput<InstanceFromMachineImageReservationAffinity>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourcePolicies = registerOutput<String>('resourcePolicies');
    scheduling = registerOutput<InstanceFromMachineImageScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scratchDisks = registerOutput<List<InstanceFromMachineImageScratchDisk>>('scratchDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageScratchDisk>(guardedValue, (value) => InstanceFromMachineImageScratchDisk.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    serviceAccount = registerOutput<InstanceFromMachineImageServiceAccount>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<InstanceFromMachineImageShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceMachineImage = registerOutput<String>('sourceMachineImage');
    sourceMachineImageEncryptionKey = registerOutput<InstanceFromMachineImageSourceMachineImageEncryptionKey?>('sourceMachineImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageSourceMachineImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<InstanceFromMachineImageWorkloadIdentityConfig>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [InstanceFromMachineImage] resource.
  InstanceFromMachineImage.reference(String urn)
    : super(
        'gcp:compute/instanceFromMachineImage:InstanceFromMachineImage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    advancedMachineFeatures = registerOutput<InstanceFromMachineImageAdvancedMachineFeatures>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    allowStoppingForUpdate = registerOutput<bool>('allowStoppingForUpdate');
    attachedDisks = registerOutput<List<InstanceFromMachineImageAttachedDisk>>('attachedDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageAttachedDisk>(guardedValue, (value) => InstanceFromMachineImageAttachedDisk.fromMap((value as Map).cast<String, dynamic>())); });
    bootDisks = registerOutput<List<InstanceFromMachineImageBootDisk>>('bootDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageBootDisk>(guardedValue, (value) => InstanceFromMachineImageBootDisk.fromMap((value as Map).cast<String, dynamic>())); });
    canIpForward = registerOutput<bool>('canIpForward');
    confidentialInstanceConfig = registerOutput<InstanceFromMachineImageConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuPlatform = registerOutput<String>('cpuPlatform');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    currentStatus = registerOutput<String>('currentStatus');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool>('deletionProtection');
    description = registerOutput<String>('description');
    desiredStatus = registerOutput<String>('desiredStatus');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableDisplay = registerOutput<bool>('enableDisplay');
    eraseWindowsVssSignature = registerOutput<bool>('eraseWindowsVssSignature');
    guestAccelerators = registerOutput<List<InstanceFromMachineImageGuestAccelerator>>('guestAccelerators', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageGuestAccelerator>(guardedValue, (value) => InstanceFromMachineImageGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); });
    hostname = registerOutput<String>('hostname');
    instanceEncryptionKey = registerOutput<InstanceFromMachineImageInstanceEncryptionKey>('instanceEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageInstanceEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    keyRevocationActionType = registerOutput<String>('keyRevocationActionType');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    machineType = registerOutput<String>('machineType');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metadataFingerprint = registerOutput<String>('metadataFingerprint');
    metadataStartupScript = registerOutput<String>('metadataStartupScript');
    minCpuPlatform = registerOutput<String>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<InstanceFromMachineImageNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterface>(guardedValue, (value) => InstanceFromMachineImageNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceConfig = registerOutput<InstanceFromMachineImageNetworkPerformanceConfig>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    params = registerOutput<InstanceFromMachineImageParams>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    partnerMetadata = registerOutput<Map<String, String>>('partnerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reservationAffinity = registerOutput<InstanceFromMachineImageReservationAffinity>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourcePolicies = registerOutput<String>('resourcePolicies');
    scheduling = registerOutput<InstanceFromMachineImageScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scratchDisks = registerOutput<List<InstanceFromMachineImageScratchDisk>>('scratchDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromMachineImageScratchDisk>(guardedValue, (value) => InstanceFromMachineImageScratchDisk.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    serviceAccount = registerOutput<InstanceFromMachineImageServiceAccount>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<InstanceFromMachineImageShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceMachineImage = registerOutput<String>('sourceMachineImage');
    sourceMachineImageEncryptionKey = registerOutput<InstanceFromMachineImageSourceMachineImageEncryptionKey?>('sourceMachineImageEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageSourceMachineImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<InstanceFromMachineImageWorkloadIdentityConfig>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromMachineImageWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zone = registerOutput<String>('zone');
  }
}
