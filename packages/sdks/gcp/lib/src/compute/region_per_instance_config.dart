import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_per_instance_config_args.dart';
import 'region_per_instance_config_preserved_state.dart';
import 'region_per_instance_config_state.dart';

/// A config defined for a single managed instance that belongs to an instance group manager. It preserves the instance name
/// across instance group manager operations and can define stateful disks or metadata that are unique to the instance.
/// This resource works with regional instance group managers.
///
///
/// To get more information about RegionPerInstanceConfig, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/instance-groups/stateful-migs#per-instance_configs)
///
/// ## Example Usage
///
/// ### Stateful Rigm
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const igm_basic = new gcp.compute.InstanceTemplate("igm-basic", {
///     name: "my-template",
///     machineType: "e2-medium",
///     canIpForward: false,
///     tags: [
///         "foo",
///         "bar",
///     ],
///     disks: [{
///         sourceImage: myImage.then(myImage => myImage.selfLink),
///         autoDelete: true,
///         boot: true,
///     }],
///     networkInterfaces: [{
///         network: "default",
///     }],
///     serviceAccount: {
///         scopes: [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     },
/// });
/// const rigm = new gcp.compute.RegionInstanceGroupManager("rigm", {
///     description: "Demo test instance group manager",
///     name: "my-rigm",
///     versions: [{
///         name: "prod",
///         instanceTemplate: igm_basic.selfLink,
///     }],
///     updatePolicy: {
///         type: "OPPORTUNISTIC",
///         instanceRedistributionType: "NONE",
///         minimalAction: "RESTART",
///     },
///     baseInstanceName: "rigm",
///     region: "us-central1",
///     targetSize: 2,
/// });
/// const _default = new gcp.compute.Disk("default", {
///     name: "my-disk-name",
///     type: "pd-ssd",
///     zone: "us-central1-a",
///     image: "debian-11-bullseye-v20220719",
///     physicalBlockSizeBytes: 4096,
/// });
/// const withDisk = new gcp.compute.RegionPerInstanceConfig("with_disk", {
///     region: igm.region,
///     regionInstanceGroupManager: rigm.name,
///     name: "instance-1",
///     preservedState: {
///         metadata: {
///             foo: "bar",
///             instance_template: igm_basic.selfLink,
///         },
///         disks: [{
///             deviceName: "my-stateful-disk",
///             source: _default.id,
///             mode: "READ_ONLY",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// igm_basic = gcp.compute.InstanceTemplate("igm-basic",
///     name="my-template",
///     machine_type="e2-medium",
///     can_ip_forward=False,
///     tags=[
///         "foo",
///         "bar",
///     ],
///     disks=[{
///         "source_image": my_image.self_link,
///         "auto_delete": True,
///         "boot": True,
///     }],
///     network_interfaces=[{
///         "network": "default",
///     }],
///     service_account={
///         "scopes": [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     })
/// rigm = gcp.compute.RegionInstanceGroupManager("rigm",
///     description="Demo test instance group manager",
///     name="my-rigm",
///     versions=[{
///         "name": "prod",
///         "instance_template": igm_basic.self_link,
///     }],
///     update_policy={
///         "type": "OPPORTUNISTIC",
///         "instance_redistribution_type": "NONE",
///         "minimal_action": "RESTART",
///     },
///     base_instance_name="rigm",
///     region="us-central1",
///     target_size=2)
/// default = gcp.compute.Disk("default",
///     name="my-disk-name",
///     type="pd-ssd",
///     zone="us-central1-a",
///     image="debian-11-bullseye-v20220719",
///     physical_block_size_bytes=4096)
/// with_disk = gcp.compute.RegionPerInstanceConfig("with_disk",
///     region=igm["region"],
///     region_instance_group_manager=rigm.name,
///     name="instance-1",
///     preserved_state={
///         "metadata": {
///             "foo": "bar",
///             "instance_template": igm_basic.self_link,
///         },
///         "disks": [{
///             "device_name": "my-stateful-disk",
///             "source": default.id,
///             "mode": "READ_ONLY",
///         }],
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
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var igm_basic = new Gcp.Compute.InstanceTemplate("igm-basic", new()
///     {
///         Name = "my-template",
///         MachineType = "e2-medium",
///         CanIpForward = false,
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = myImage.Apply(getImageResult => getImageResult.SelfLink),
///                 AutoDelete = true,
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
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
///         {
///             Scopes = new[]
///             {
///                 "userinfo-email",
///                 "compute-ro",
///                 "storage-ro",
///             },
///         },
///     });
///
///     var rigm = new Gcp.Compute.RegionInstanceGroupManager("rigm", new()
///     {
///         Description = "Demo test instance group manager",
///         Name = "my-rigm",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 Name = "prod",
///                 InstanceTemplate = igm_basic.SelfLink,
///             },
///         },
///         UpdatePolicy = new Gcp.Compute.Inputs.RegionInstanceGroupManagerUpdatePolicyArgs
///         {
///             Type = "OPPORTUNISTIC",
///             InstanceRedistributionType = "NONE",
///             MinimalAction = "RESTART",
///         },
///         BaseInstanceName = "rigm",
///         Region = "us-central1",
///         TargetSize = 2,
///     });
///
///     var @default = new Gcp.Compute.Disk("default", new()
///     {
///         Name = "my-disk-name",
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///         Image = "debian-11-bullseye-v20220719",
///         PhysicalBlockSizeBytes = 4096,
///     });
///
///     var withDisk = new Gcp.Compute.RegionPerInstanceConfig("with_disk", new()
///     {
///         Region = igm.Region,
///         RegionInstanceGroupManager = rigm.Name,
///         Name = "instance-1",
///         PreservedState = new Gcp.Compute.Inputs.RegionPerInstanceConfigPreservedStateArgs
///         {
///             Metadata =
///             {
///                 { "foo", "bar" },
///                 { "instance_template", igm_basic.SelfLink },
///             },
///             Disks = new[]
///             {
///                 new Gcp.Compute.Inputs.RegionPerInstanceConfigPreservedStateDiskArgs
///                 {
///                     DeviceName = "my-stateful-disk",
///                     Source = @default.Id,
///                     Mode = "READ_ONLY",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		igm_basic, err := compute.NewInstanceTemplate(ctx, "igm-basic", &compute.InstanceTemplateArgs{
/// 			Name:         pulumi.String("my-template"),
/// 			MachineType:  pulumi.String("e2-medium"),
/// 			CanIpForward: pulumi.Bool(false),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String(myImage.SelfLink),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("userinfo-email"),
/// 					pulumi.String("compute-ro"),
/// 					pulumi.String("storage-ro"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rigm, err := compute.NewRegionInstanceGroupManager(ctx, "rigm", &compute.RegionInstanceGroupManagerArgs{
/// 			Description: pulumi.String("Demo test instance group manager"),
/// 			Name:        pulumi.String("my-rigm"),
/// 			Versions: compute.RegionInstanceGroupManagerVersionArray{
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					Name:             pulumi.String("prod"),
/// 					InstanceTemplate: igm_basic.SelfLink,
/// 				},
/// 			},
/// 			UpdatePolicy: &compute.RegionInstanceGroupManagerUpdatePolicyArgs{
/// 				Type:                       pulumi.String("OPPORTUNISTIC"),
/// 				InstanceRedistributionType: pulumi.String("NONE"),
/// 				MinimalAction:              pulumi.String("RESTART"),
/// 			},
/// 			BaseInstanceName: pulumi.String("rigm"),
/// 			Region:           pulumi.String("us-central1"),
/// 			TargetSize:       pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewDisk(ctx, "default", &compute.DiskArgs{
/// 			Name:                   pulumi.String("my-disk-name"),
/// 			Type:                   pulumi.String("pd-ssd"),
/// 			Zone:                   pulumi.String("us-central1-a"),
/// 			Image:                  pulumi.String("debian-11-bullseye-v20220719"),
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionPerInstanceConfig(ctx, "with_disk", &compute.RegionPerInstanceConfigArgs{
/// 			Region:                     pulumi.Any(igm.Region),
/// 			RegionInstanceGroupManager: rigm.Name,
/// 			Name:                       pulumi.String("instance-1"),
/// 			PreservedState: &compute.RegionPerInstanceConfigPreservedStateArgs{
/// 				Metadata: pulumi.StringMap{
/// 					"foo":               pulumi.String("bar"),
/// 					"instance_template": igm_basic.SelfLink,
/// 				},
/// 				Disks: compute.RegionPerInstanceConfigPreservedStateDiskArray{
/// 					&compute.RegionPerInstanceConfigPreservedStateDiskArgs{
/// 						DeviceName: pulumi.String("my-stateful-disk"),
/// 						Source:     _default.ID().ToIDOutput().ToStringOutput(),
/// 						Mode:       pulumi.String("READ_ONLY"),
/// 					},
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
/// data "gcp_compute_getimage" "myImage" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_instancetemplate" "igm-basic" {
///   name           = "my-template"
///   machine_type   = "e2-medium"
///   can_ip_forward = false
///   tags           = ["foo", "bar"]
///   disks {
///     source_image = data.gcp_compute_getimage.myImage.self_link
///     auto_delete  = true
///     boot         = true
///   }
///   network_interfaces {
///     network = "default"
///   }
///   service_account = {
///     scopes = ["userinfo-email", "compute-ro", "storage-ro"]
///   }
/// }
/// resource "gcp_compute_regioninstancegroupmanager" "rigm" {
///   description = "Demo test instance group manager"
///   name        = "my-rigm"
///   versions {
///     name              = "prod"
///     instance_template = gcp_compute_instancetemplate.igm-basic.self_link
///   }
///   update_policy = {
///     type                         = "OPPORTUNISTIC"
///     instance_redistribution_type = "NONE"
///     minimal_action               = "RESTART"
///   }
///   base_instance_name = "rigm"
///   region             = "us-central1"
///   target_size        = 2
/// }
/// resource "gcp_compute_disk" "default" {
///   name                      = "my-disk-name"
///   type                      = "pd-ssd"
///   zone                      = "us-central1-a"
///   image                     = "debian-11-bullseye-v20220719"
///   physical_block_size_bytes = 4096
/// }
/// resource "gcp_compute_regionperinstanceconfig" "with_disk" {
///   region                        = igm.region
///   region_instance_group_manager = gcp_compute_regioninstancegroupmanager.rigm.name
///   name                          = "instance-1"
///   preserved_state = {
///     metadata = {
///       "foo"               = "bar"
///       "instance_template" = gcp_compute_instancetemplate.igm-basic.self_link
///     }
///     disks = [{
///       "deviceName" = "my-stateful-disk"
///       "source"     = gcp_compute_disk.default.id
///       "mode"       = "READ_ONLY"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerUpdatePolicyArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.RegionPerInstanceConfig;
/// import com.pulumi.gcp.compute.RegionPerInstanceConfigArgs;
/// import com.pulumi.gcp.compute.inputs.RegionPerInstanceConfigPreservedStateArgs;
/// import com.pulumi.gcp.compute.inputs.RegionPerInstanceConfigPreservedStateDiskArgs;
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
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var igm_basic = new InstanceTemplate("igm-basic", InstanceTemplateArgs.builder()
///             .name("my-template")
///             .machineType("e2-medium")
///             .canIpForward(false)
///             .tags(
///                 "foo",
///                 "bar")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage(myImage.selfLink())
///                 .autoDelete(true)
///                 .boot(true)
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
///                 .scopes(
///                     "userinfo-email",
///                     "compute-ro",
///                     "storage-ro")
///                 .build())
///             .build());
///
///         var rigm = new RegionInstanceGroupManager("rigm", RegionInstanceGroupManagerArgs.builder()
///             .description("Demo test instance group manager")
///             .name("my-rigm")
///             .versions(RegionInstanceGroupManagerVersionArgs.builder()
///                 .name("prod")
///                 .instanceTemplate(igm_basic.selfLink())
///                 .build())
///             .updatePolicy(RegionInstanceGroupManagerUpdatePolicyArgs.builder()
///                 .type("OPPORTUNISTIC")
///                 .instanceRedistributionType("NONE")
///                 .minimalAction("RESTART")
///                 .build())
///             .baseInstanceName("rigm")
///             .region("us-central1")
///             .targetSize(2)
///             .build());
///
///         var default_ = new Disk("default", DiskArgs.builder()
///             .name("my-disk-name")
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .image("debian-11-bullseye-v20220719")
///             .physicalBlockSizeBytes(4096)
///             .build());
///
///         var withDisk = new RegionPerInstanceConfig("withDisk", RegionPerInstanceConfigArgs.builder()
///             .region(igm.get("region"))
///             .regionInstanceGroupManager(rigm.name())
///             .name("instance-1")
///             .preservedState(RegionPerInstanceConfigPreservedStateArgs.builder()
///                 .metadata(Map.ofEntries(
///                     Map.entry("foo", "bar"),
///                     Map.entry("instance_template", igm_basic.selfLink())
///                 ))
///                 .disks(RegionPerInstanceConfigPreservedStateDiskArgs.builder()
///                     .deviceName("my-stateful-disk")
///                     .source(default_.id())
///                     .mode("READ_ONLY")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   igm-basic:
///     type: gcp:compute:InstanceTemplate
///     properties:
///       name: my-template
///       machineType: e2-medium
///       canIpForward: false
///       tags:
///         - foo
///         - bar
///       disks:
///         - sourceImage: ${myImage.selfLink}
///           autoDelete: true
///           boot: true
///       networkInterfaces:
///         - network: default
///       serviceAccount:
///         scopes:
///           - userinfo-email
///           - compute-ro
///           - storage-ro
///   rigm:
///     type: gcp:compute:RegionInstanceGroupManager
///     properties:
///       description: Demo test instance group manager
///       name: my-rigm
///       versions:
///         - name: prod
///           instanceTemplate: ${["igm-basic"].selfLink}
///       updatePolicy:
///         type: OPPORTUNISTIC
///         instanceRedistributionType: NONE
///         minimalAction: RESTART
///       baseInstanceName: rigm
///       region: us-central1
///       targetSize: 2
///   default:
///     type: gcp:compute:Disk
///     properties:
///       name: my-disk-name
///       type: pd-ssd
///       zone: us-central1-a
///       image: debian-11-bullseye-v20220719
///       physicalBlockSizeBytes: 4096
///   withDisk:
///     type: gcp:compute:RegionPerInstanceConfig
///     name: with_disk
///     properties:
///       region: ${igm.region}
///       regionInstanceGroupManager: ${rigm.name}
///       name: instance-1
///       preservedState:
///         metadata:
///           foo: bar
///           instance_template: ${["igm-basic"].selfLink}
///         disks:
///           - deviceName: my-stateful-disk
///             source: ${default.id}
///             mode: READ_ONLY
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// RegionPerInstanceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/instanceGroupManagers/{{region_instance_group_manager}}/{{name}}`
/// * `{{project}}/{{region}}/{{region_instance_group_manager}}/{{name}}`
/// * `{{region}}/{{region_instance_group_manager}}/{{name}}`
/// * `{{region_instance_group_manager}}/{{name}}`
///
///
/// When using the `pulumi import` command, RegionPerInstanceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig default projects/{{project}}/regions/{{region}}/instanceGroupManagers/{{region_instance_group_manager}}/{{name}}
/// $ pulumi import gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig default {{project}}/{{region}}/{{region_instance_group_manager}}/{{name}}
/// $ pulumi import gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig default {{region}}/{{region_instance_group_manager}}/{{name}}
/// $ pulumi import gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig default {{region_instance_group_manager}}/{{name}}
/// ```
class RegionPerInstanceConfig extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The minimal action to perform on the instance during an update.
  /// Default is `NONE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  late final pulumi.Output<String?> minimalAction;
  /// The most disruptive action to perform on the instance during an update.
  /// Default is `REPLACE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  late final pulumi.Output<String?> mostDisruptiveAllowedAction;
  /// The name for this per-instance config and its corresponding instance.
  late final pulumi.Output<String> name;
  /// The preserved state for this instance.
  /// Structure is documented below.
  late final pulumi.Output<RegionPerInstanceConfigPreservedState?> preservedState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Region where the containing instance group manager is located
  late final pulumi.Output<String> region;
  /// The region instance group manager this instance config is part of.
  late final pulumi.Output<String> regionInstanceGroupManager;
  /// When true, deleting this config will immediately remove the underlying instance.
  /// When false, deleting this config will use the behavior as determined by remove_instance_on_destroy.
  late final pulumi.Output<bool?> removeInstanceOnDestroy;
  /// When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// When false, deleting this config will *not* immediately remove any state from the underlying instance.
  /// State will be removed on the next instance recreation or update.
  late final pulumi.Output<bool?> removeInstanceStateOnDestroy;

  /// Creates a new [RegionPerInstanceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionPerInstanceConfig]. {@macro pulumi_compute_region_per_instance_config_region_per_instance_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionPerInstanceConfig(
    String name, {
    RegionPerInstanceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    minimalAction = registerOutput<String?>('minimalAction');
    mostDisruptiveAllowedAction = registerOutput<String?>('mostDisruptiveAllowedAction');
    this.name = registerOutput<String>('name');
    preservedState = registerOutput<RegionPerInstanceConfigPreservedState?>('preservedState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionPerInstanceConfigPreservedState.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    regionInstanceGroupManager = registerOutput<String>('regionInstanceGroupManager');
    removeInstanceOnDestroy = registerOutput<bool?>('removeInstanceOnDestroy');
    removeInstanceStateOnDestroy = registerOutput<bool?>('removeInstanceStateOnDestroy');
  }

  /// Gets an existing [RegionPerInstanceConfig] resource's state with the given [name] and [id].
  static RegionPerInstanceConfig get(
    String name,
    pulumi.Input<String> id, {
    RegionPerInstanceConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionPerInstanceConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionPerInstanceConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    minimalAction = registerOutput<String?>('minimalAction');
    mostDisruptiveAllowedAction = registerOutput<String?>('mostDisruptiveAllowedAction');
    this.name = registerOutput<String>('name');
    preservedState = registerOutput<RegionPerInstanceConfigPreservedState?>('preservedState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionPerInstanceConfigPreservedState.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    regionInstanceGroupManager = registerOutput<String>('regionInstanceGroupManager');
    removeInstanceOnDestroy = registerOutput<bool?>('removeInstanceOnDestroy');
    removeInstanceStateOnDestroy = registerOutput<bool?>('removeInstanceStateOnDestroy');
  }

  /// Creates a typed reference to an existing [RegionPerInstanceConfig] resource.
  RegionPerInstanceConfig.reference(String urn)
    : super(
        'gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    minimalAction = registerOutput<String?>('minimalAction');
    mostDisruptiveAllowedAction = registerOutput<String?>('mostDisruptiveAllowedAction');
    this.name = registerOutput<String>('name');
    preservedState = registerOutput<RegionPerInstanceConfigPreservedState?>('preservedState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionPerInstanceConfigPreservedState.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    regionInstanceGroupManager = registerOutput<String>('regionInstanceGroupManager');
    removeInstanceOnDestroy = registerOutput<bool?>('removeInstanceOnDestroy');
    removeInstanceStateOnDestroy = registerOutput<bool?>('removeInstanceStateOnDestroy');
  }
}
