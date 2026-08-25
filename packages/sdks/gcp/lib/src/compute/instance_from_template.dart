import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_template_advanced_machine_features.dart';
import 'instance_from_template_args.dart';
import 'instance_from_template_attached_disk.dart';
import 'instance_from_template_boot_disk.dart';
import 'instance_from_template_confidential_instance_config.dart';
import 'instance_from_template_guest_accelerator.dart';
import 'instance_from_template_instance_encryption_key.dart';
import 'instance_from_template_network_interface.dart';
import 'instance_from_template_network_performance_config.dart';
import 'instance_from_template_params.dart';
import 'instance_from_template_reservation_affinity.dart';
import 'instance_from_template_scheduling.dart';
import 'instance_from_template_scratch_disk.dart';
import 'instance_from_template_service_account.dart';
import 'instance_from_template_shielded_instance_config.dart';
import 'instance_from_template_state.dart';
import 'instance_from_template_workload_identity_config.dart';

/// Manages a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// This resource is specifically to create a compute instance from a given
/// `sourceInstanceTemplate`. To create an instance without a template, use the
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
/// const tpl = new gcp.compute.InstanceTemplate("tpl", {
///     name: "template",
///     machineType: "e2-medium",
///     disks: [{
///         sourceImage: "debian-cloud/debian-11",
///         autoDelete: true,
///         diskSizeGb: 100,
///         boot: true,
///     }],
///     networkInterfaces: [{
///         network: "default",
///     }],
///     metadata: {
///         foo: "bar",
///     },
///     canIpForward: true,
/// });
/// const tplInstanceFromTemplate = new gcp.compute.InstanceFromTemplate("tpl", {
///     name: "instance-from-template",
///     zone: "us-central1-a",
///     sourceInstanceTemplate: tpl.selfLinkUnique,
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
/// tpl = gcp.compute.InstanceTemplate("tpl",
///     name="template",
///     machine_type="e2-medium",
///     disks=[{
///         "source_image": "debian-cloud/debian-11",
///         "auto_delete": True,
///         "disk_size_gb": 100,
///         "boot": True,
///     }],
///     network_interfaces=[{
///         "network": "default",
///     }],
///     metadata={
///         "foo": "bar",
///     },
///     can_ip_forward=True)
/// tpl_instance_from_template = gcp.compute.InstanceFromTemplate("tpl",
///     name="instance-from-template",
///     zone="us-central1-a",
///     source_instance_template=tpl.self_link_unique,
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
///     var tpl = new Gcp.Compute.InstanceTemplate("tpl", new()
///     {
///         Name = "template",
///         MachineType = "e2-medium",
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = "debian-cloud/debian-11",
///                 AutoDelete = true,
///                 DiskSizeGb = 100,
///                 Boot = true,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Metadata =
///         {
///             { "foo", "bar" },
///         },
///         CanIpForward = true,
///     });
///
///     var tplInstanceFromTemplate = new Gcp.Compute.InstanceFromTemplate("tpl", new()
///     {
///         Name = "instance-from-template",
///         Zone = "us-central1-a",
///         SourceInstanceTemplate = tpl.SelfLinkUnique,
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
/// 		tpl, err := compute.NewInstanceTemplate(ctx, "tpl", &compute.InstanceTemplateArgs{
/// 			Name:        pulumi.String("template"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String("debian-cloud/debian-11"),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					DiskSizeGb:  pulumi.Int(100),
/// 					Boot:        pulumi.Bool(true),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			CanIpForward: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceFromTemplate(ctx, "tpl", &compute.InstanceFromTemplateArgs{
/// 			Name:                   pulumi.String("instance-from-template"),
/// 			Zone:                   pulumi.String("us-central1-a"),
/// 			SourceInstanceTemplate: tpl.SelfLinkUnique,
/// 			CanIpForward:           pulumi.Bool(false),
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
/// resource "gcp_compute_instancetemplate" "tpl" {
///   name         = "template"
///   machine_type = "e2-medium"
///   disks {
///     source_image = "debian-cloud/debian-11"
///     auto_delete  = true
///     disk_size_gb = 100
///     boot         = true
///   }
///   network_interfaces {
///     network = "default"
///   }
///   metadata = {
///     "foo" = "bar"
///   }
///   can_ip_forward = true
/// }
/// resource "gcp_compute_instancefromtemplate" "tpl" {
///   name                     = "instance-from-template"
///   zone                     = "us-central1-a"
///   source_instance_template = gcp_compute_instancetemplate.tpl.self_link_unique
///   can_ip_forward           = false
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
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.InstanceFromTemplate;
/// import com.pulumi.gcp.compute.InstanceFromTemplateArgs;
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
///         var tpl = new InstanceTemplate("tpl", InstanceTemplateArgs.builder()
///             .name("template")
///             .machineType("e2-medium")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage("debian-cloud/debian-11")
///                 .autoDelete(true)
///                 .diskSizeGb(100)
///                 .boot(true)
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .metadata(Map.of("foo", "bar"))
///             .canIpForward(true)
///             .build());
///
///         var tplInstanceFromTemplate = new InstanceFromTemplate("tplInstanceFromTemplate", InstanceFromTemplateArgs.builder()
///             .name("instance-from-template")
///             .zone("us-central1-a")
///             .sourceInstanceTemplate(tpl.selfLinkUnique())
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
///     type: gcp:compute:InstanceTemplate
///     properties:
///       name: template
///       machineType: e2-medium
///       disks:
///         - sourceImage: debian-cloud/debian-11
///           autoDelete: true
///           diskSizeGb: 100
///           boot: true
///       networkInterfaces:
///         - network: default
///       metadata:
///         foo: bar
///       canIpForward: true
///   tplInstanceFromTemplate:
///     type: gcp:compute:InstanceFromTemplate
///     name: tpl
///     properties:
///       name: instance-from-template
///       zone: us-central1-a
///       sourceInstanceTemplate: ${tpl.selfLinkUnique}
///       canIpForward: false
///       labels:
///         my_key: my_value
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class InstanceFromTemplate extends pulumi.CustomResource {
  /// Controls for advanced machine-related behavior features.
  late final pulumi.Output<InstanceFromTemplateAdvancedMachineFeatures> advancedMachineFeatures;
  /// If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail.
  late final pulumi.Output<bool> allowStoppingForUpdate;
  /// List of disks attached to the instance
  late final pulumi.Output<List<InstanceFromTemplateAttachedDisk>> attachedDisks;
  /// The boot disk for the instance.
  late final pulumi.Output<InstanceFromTemplateBootDisk> bootDisk;
  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  late final pulumi.Output<bool> canIpForward;
  /// The Confidential VM config being used by the instance.  onHostMaintenance has to be set to TERMINATE or this will fail to create.
  late final pulumi.Output<InstanceFromTemplateConfidentialInstanceConfig> confidentialInstanceConfig;
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
  late final pulumi.Output<List<InstanceFromTemplateGuestAccelerator>> guestAccelerators;
  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  late final pulumi.Output<String> hostname;
  /// Encryption key used to provide data encryption on the given instance.
  late final pulumi.Output<InstanceFromTemplateInstanceEncryptionKey> instanceEncryptionKey;
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
  late final pulumi.Output<List<InstanceFromTemplateNetworkInterface>> networkInterfaces;
  /// Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  late final pulumi.Output<InstanceFromTemplateNetworkPerformanceConfig> networkPerformanceConfig;
  /// Stores additional params passed with the request, but not persisted as part of resource payload.
  late final pulumi.Output<InstanceFromTemplateParams> params;
  /// Partner Metadata Map made available within the instance.
  late final pulumi.Output<Map<String, String>> partnerMetadata;
  /// The ID of the project in which the resource belongs. If selfLink is provided, this value is ignored. If neither selfLink nor project are provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Specifies the reservations that this instance can consume from.
  late final pulumi.Output<InstanceFromTemplateReservationAffinity> reservationAffinity;
  /// A list of selfLinks of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  late final pulumi.Output<String> resourcePolicies;
  /// The scheduling strategy being used by the instance.
  late final pulumi.Output<InstanceFromTemplateScheduling> scheduling;
  /// * `network_interface.alias_ip_range`
  /// * `network_interface.alias_ipv6_range` [Beta]
  /// * `network_interface.access_config`
  late final pulumi.Output<List<InstanceFromTemplateScratchDisk>> scratchDisks;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The service account to attach to the instance.
  late final pulumi.Output<InstanceFromTemplateServiceAccount> serviceAccount;
  /// The shielded vm config being used by the instance.
  late final pulumi.Output<InstanceFromTemplateShieldedInstanceConfig> shieldedInstanceConfig;
  /// Name or self link of an instance
  /// template to create the instance based on. It is recommended to reference
  /// instance templates through their unique id (`selfLinkUnique` attribute).
  ///
  /// - - -
  late final pulumi.Output<String> sourceInstanceTemplate;
  /// The list of tags attached to the instance.
  late final pulumi.Output<List<String>> tags;
  /// The unique fingerprint of the tags.
  late final pulumi.Output<String> tagsFingerprint;
  /// Workload identity config.
  late final pulumi.Output<InstanceFromTemplateWorkloadIdentityConfig> workloadIdentityConfig;
  /// The zone that the machine should be created in. If not
  /// set, the provider zone is used.
  ///
  /// In addition to these, all arguments from `gcp.compute.Instance` are supported
  /// as a way to override the properties in the template. All exported attributes
  /// from `gcp.compute.Instance` are likewise exported here.
  ///
  /// To support removal of Optional/Computed fields in Terraform 0.12 the following fields
  /// are marked [Attributes as Blocks](https://www.terraform.io/docs/configuration/attr-as-blocks.html):
  late final pulumi.Output<String> zone;

  /// Creates a new [InstanceFromTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceFromTemplate]. {@macro pulumi_compute_instance_from_template_instance_from_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceFromTemplate(
    String name, {
    InstanceFromTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceFromTemplate:InstanceFromTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    advancedMachineFeatures = registerOutput<InstanceFromTemplateAdvancedMachineFeatures>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    allowStoppingForUpdate = registerOutput<bool>('allowStoppingForUpdate');
    attachedDisks = registerOutput<List<InstanceFromTemplateAttachedDisk>>('attachedDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateAttachedDisk>(guardedValue, (value) => InstanceFromTemplateAttachedDisk.fromMap((value as Map).cast<String, dynamic>())); });
    bootDisk = registerOutput<InstanceFromTemplateBootDisk>('bootDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canIpForward = registerOutput<bool>('canIpForward');
    confidentialInstanceConfig = registerOutput<InstanceFromTemplateConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    guestAccelerators = registerOutput<List<InstanceFromTemplateGuestAccelerator>>('guestAccelerators', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateGuestAccelerator>(guardedValue, (value) => InstanceFromTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); });
    hostname = registerOutput<String>('hostname');
    instanceEncryptionKey = registerOutput<InstanceFromTemplateInstanceEncryptionKey>('instanceEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateInstanceEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    networkInterfaces = registerOutput<List<InstanceFromTemplateNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateNetworkInterface>(guardedValue, (value) => InstanceFromTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceConfig = registerOutput<InstanceFromTemplateNetworkPerformanceConfig>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    params = registerOutput<InstanceFromTemplateParams>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    partnerMetadata = registerOutput<Map<String, String>>('partnerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reservationAffinity = registerOutput<InstanceFromTemplateReservationAffinity>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourcePolicies = registerOutput<String>('resourcePolicies');
    scheduling = registerOutput<InstanceFromTemplateScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scratchDisks = registerOutput<List<InstanceFromTemplateScratchDisk>>('scratchDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateScratchDisk>(guardedValue, (value) => InstanceFromTemplateScratchDisk.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    serviceAccount = registerOutput<InstanceFromTemplateServiceAccount>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<InstanceFromTemplateShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceInstanceTemplate = registerOutput<String>('sourceInstanceTemplate');
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<InstanceFromTemplateWorkloadIdentityConfig>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [InstanceFromTemplate] resource's state with the given [name] and [id].
  static InstanceFromTemplate get(
    String name,
    pulumi.Input<String> id, {
    InstanceFromTemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceFromTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceFromTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceFromTemplate:InstanceFromTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedMachineFeatures = registerOutput<InstanceFromTemplateAdvancedMachineFeatures>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    allowStoppingForUpdate = registerOutput<bool>('allowStoppingForUpdate');
    attachedDisks = registerOutput<List<InstanceFromTemplateAttachedDisk>>('attachedDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateAttachedDisk>(guardedValue, (value) => InstanceFromTemplateAttachedDisk.fromMap((value as Map).cast<String, dynamic>())); });
    bootDisk = registerOutput<InstanceFromTemplateBootDisk>('bootDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canIpForward = registerOutput<bool>('canIpForward');
    confidentialInstanceConfig = registerOutput<InstanceFromTemplateConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    guestAccelerators = registerOutput<List<InstanceFromTemplateGuestAccelerator>>('guestAccelerators', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateGuestAccelerator>(guardedValue, (value) => InstanceFromTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); });
    hostname = registerOutput<String>('hostname');
    instanceEncryptionKey = registerOutput<InstanceFromTemplateInstanceEncryptionKey>('instanceEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateInstanceEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    networkInterfaces = registerOutput<List<InstanceFromTemplateNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateNetworkInterface>(guardedValue, (value) => InstanceFromTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceConfig = registerOutput<InstanceFromTemplateNetworkPerformanceConfig>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    params = registerOutput<InstanceFromTemplateParams>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    partnerMetadata = registerOutput<Map<String, String>>('partnerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reservationAffinity = registerOutput<InstanceFromTemplateReservationAffinity>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourcePolicies = registerOutput<String>('resourcePolicies');
    scheduling = registerOutput<InstanceFromTemplateScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scratchDisks = registerOutput<List<InstanceFromTemplateScratchDisk>>('scratchDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateScratchDisk>(guardedValue, (value) => InstanceFromTemplateScratchDisk.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    serviceAccount = registerOutput<InstanceFromTemplateServiceAccount>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<InstanceFromTemplateShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceInstanceTemplate = registerOutput<String>('sourceInstanceTemplate');
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<InstanceFromTemplateWorkloadIdentityConfig>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [InstanceFromTemplate] resource.
  InstanceFromTemplate.reference(String urn)
    : super(
        'gcp:compute/instanceFromTemplate:InstanceFromTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    advancedMachineFeatures = registerOutput<InstanceFromTemplateAdvancedMachineFeatures>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    allowStoppingForUpdate = registerOutput<bool>('allowStoppingForUpdate');
    attachedDisks = registerOutput<List<InstanceFromTemplateAttachedDisk>>('attachedDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateAttachedDisk>(guardedValue, (value) => InstanceFromTemplateAttachedDisk.fromMap((value as Map).cast<String, dynamic>())); });
    bootDisk = registerOutput<InstanceFromTemplateBootDisk>('bootDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canIpForward = registerOutput<bool>('canIpForward');
    confidentialInstanceConfig = registerOutput<InstanceFromTemplateConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    guestAccelerators = registerOutput<List<InstanceFromTemplateGuestAccelerator>>('guestAccelerators', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateGuestAccelerator>(guardedValue, (value) => InstanceFromTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); });
    hostname = registerOutput<String>('hostname');
    instanceEncryptionKey = registerOutput<InstanceFromTemplateInstanceEncryptionKey>('instanceEncryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateInstanceEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    networkInterfaces = registerOutput<List<InstanceFromTemplateNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateNetworkInterface>(guardedValue, (value) => InstanceFromTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceConfig = registerOutput<InstanceFromTemplateNetworkPerformanceConfig>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    params = registerOutput<InstanceFromTemplateParams>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    partnerMetadata = registerOutput<Map<String, String>>('partnerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reservationAffinity = registerOutput<InstanceFromTemplateReservationAffinity>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourcePolicies = registerOutput<String>('resourcePolicies');
    scheduling = registerOutput<InstanceFromTemplateScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scratchDisks = registerOutput<List<InstanceFromTemplateScratchDisk>>('scratchDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFromTemplateScratchDisk>(guardedValue, (value) => InstanceFromTemplateScratchDisk.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    serviceAccount = registerOutput<InstanceFromTemplateServiceAccount>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<InstanceFromTemplateShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceInstanceTemplate = registerOutput<String>('sourceInstanceTemplate');
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<InstanceFromTemplateWorkloadIdentityConfig>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFromTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zone = registerOutput<String>('zone');
  }
}
