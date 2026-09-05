import 'package:pulumi/pulumi.dart' as pulumi;
import 'bulk_per_instance_config_args.dart';
import 'bulk_per_instance_config_instance.dart';
import 'bulk_per_instance_config_state.dart';

/// A config defined for multiple managed instances that belong to an instance group manager with target_size_policy.mode=BULK.
///
///
/// To get more information about BulkPerInstanceConfig, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/instance-groups/bulk-create-instances-in-mig)
///
/// ## Example Usage
///
/// ### Compute Bulk Per Instance Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-12",
///     project: "debian-cloud",
/// });
/// const bulk_igm = new gcp.compute.InstanceTemplate("bulk-igm", {
///     name: "bulk-igm-template",
///     machineType: "e2-medium",
///     disks: [{
///         sourceImage: myImage.then(myImage => myImage.selfLink),
///         autoDelete: true,
///         boot: true,
///     }],
///     networkInterfaces: [{
///         network: "default",
///     }],
/// });
/// const bulk_igmInstanceGroupManager = new gcp.compute.InstanceGroupManager("bulk-igm", {
///     description: "Terraform test bulk instance group manager",
///     name: "bulk-igm",
///     zone: "us-central1-a",
///     baseInstanceName: "bulk-igm",
///     versions: [{
///         name: "prod",
///         instanceTemplate: bulk_igm.selfLink,
///     }],
/// });
/// const bulk_igm_per_instance_config = new gcp.compute.BulkPerInstanceConfig("bulk-igm-per-instance-config", {
///     zone: bulk_igmInstanceGroupManager.zone,
///     instanceGroupManager: bulk_igmInstanceGroupManager.name,
///     instances: [
///         {
///             name: "per-instance-config-instance-1",
///         },
///         {
///             name: "per-instance-config-instance-2",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-12",
///     project="debian-cloud")
/// bulk_igm = gcp.compute.InstanceTemplate("bulk-igm",
///     name="bulk-igm-template",
///     machine_type="e2-medium",
///     disks=[{
///         "source_image": my_image.self_link,
///         "auto_delete": True,
///         "boot": True,
///     }],
///     network_interfaces=[{
///         "network": "default",
///     }])
/// bulk_igm_instance_group_manager = gcp.compute.InstanceGroupManager("bulk-igm",
///     description="Terraform test bulk instance group manager",
///     name="bulk-igm",
///     zone="us-central1-a",
///     base_instance_name="bulk-igm",
///     versions=[{
///         "name": "prod",
///         "instance_template": bulk_igm.self_link,
///     }])
/// bulk_igm_per_instance_config = gcp.compute.BulkPerInstanceConfig("bulk-igm-per-instance-config",
///     zone=bulk_igm_instance_group_manager.zone,
///     instance_group_manager=bulk_igm_instance_group_manager.name,
///     instances=[
///         {
///             "name": "per-instance-config-instance-1",
///         },
///         {
///             "name": "per-instance-config-instance-2",
///         },
///     ])
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
///         Family = "debian-12",
///         Project = "debian-cloud",
///     });
///
///     var bulk_igm = new Gcp.Compute.InstanceTemplate("bulk-igm", new()
///     {
///         Name = "bulk-igm-template",
///         MachineType = "e2-medium",
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
///     });
///
///     var bulk_igmInstanceGroupManager = new Gcp.Compute.InstanceGroupManager("bulk-igm", new()
///     {
///         Description = "Terraform test bulk instance group manager",
///         Name = "bulk-igm",
///         Zone = "us-central1-a",
///         BaseInstanceName = "bulk-igm",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 Name = "prod",
///                 InstanceTemplate = bulk_igm.SelfLink,
///             },
///         },
///     });
///
///     var bulk_igm_per_instance_config = new Gcp.Compute.BulkPerInstanceConfig("bulk-igm-per-instance-config", new()
///     {
///         Zone = bulk_igmInstanceGroupManager.Zone,
///         InstanceGroupManager = bulk_igmInstanceGroupManager.Name,
///         Instances = new[]
///         {
///             new Gcp.Compute.Inputs.BulkPerInstanceConfigInstanceArgs
///             {
///                 Name = "per-instance-config-instance-1",
///             },
///             new Gcp.Compute.Inputs.BulkPerInstanceConfigInstanceArgs
///             {
///                 Name = "per-instance-config-instance-2",
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
/// 			Family:  pulumi.StringRef("debian-12"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bulk_igm, err := compute.NewInstanceTemplate(ctx, "bulk-igm", &compute.InstanceTemplateArgs{
/// 			Name:        pulumi.String("bulk-igm-template"),
/// 			MachineType: pulumi.String("e2-medium"),
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bulk_igmInstanceGroupManager, err := compute.NewInstanceGroupManager(ctx, "bulk-igm", &compute.InstanceGroupManagerArgs{
/// 			Description:      pulumi.String("Terraform test bulk instance group manager"),
/// 			Name:             pulumi.String("bulk-igm"),
/// 			Zone:             pulumi.String("us-central1-a"),
/// 			BaseInstanceName: pulumi.String("bulk-igm"),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					Name:             pulumi.String("prod"),
/// 					InstanceTemplate: bulk_igm.SelfLink,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBulkPerInstanceConfig(ctx, "bulk-igm-per-instance-config", &compute.BulkPerInstanceConfigArgs{
/// 			Zone:                 bulk_igmInstanceGroupManager.Zone,
/// 			InstanceGroupManager: bulk_igmInstanceGroupManager.Name,
/// 			Instances: compute.BulkPerInstanceConfigInstanceArray{
/// 				&compute.BulkPerInstanceConfigInstanceArgs{
/// 					Name: pulumi.String("per-instance-config-instance-1"),
/// 				},
/// 				&compute.BulkPerInstanceConfigInstanceArgs{
/// 					Name: pulumi.String("per-instance-config-instance-2"),
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
///   family  = "debian-12"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_instancetemplate" "bulk-igm" {
///   name         = "bulk-igm-template"
///   machine_type = "e2-medium"
///   disks {
///     source_image = data.gcp_compute_getimage.myImage.self_link
///     auto_delete  = true
///     boot         = true
///   }
///   network_interfaces {
///     network = "default"
///   }
/// }
/// resource "gcp_compute_instancegroupmanager" "bulk-igm" {
///   description        = "Terraform test bulk instance group manager"
///   name               = "bulk-igm"
///   zone               = "us-central1-a"
///   base_instance_name = "bulk-igm"
///   versions {
///     name              = "prod"
///     instance_template = gcp_compute_instancetemplate.bulk-igm.self_link
///   }
/// }
/// resource "gcp_compute_bulkperinstanceconfig" "bulk-igm-per-instance-config" {
///   zone                   = gcp_compute_instancegroupmanager.bulk-igm.zone
///   instance_group_manager = gcp_compute_instancegroupmanager.bulk-igm.name
///   instances {
///     name = "per-instance-config-instance-1"
///   }
///   instances {
///     name = "per-instance-config-instance-2"
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
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.BulkPerInstanceConfig;
/// import com.pulumi.gcp.compute.BulkPerInstanceConfigArgs;
/// import com.pulumi.gcp.compute.inputs.BulkPerInstanceConfigInstanceArgs;
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
///             .family("debian-12")
///             .project("debian-cloud")
///             .build());
///
///         var bulk_igm = new InstanceTemplate("bulk-igm", InstanceTemplateArgs.builder()
///             .name("bulk-igm-template")
///             .machineType("e2-medium")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage(myImage.selfLink())
///                 .autoDelete(true)
///                 .boot(true)
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .build());
///
///         var bulk_igmInstanceGroupManager = new InstanceGroupManager("bulk-igmInstanceGroupManager", InstanceGroupManagerArgs.builder()
///             .description("Terraform test bulk instance group manager")
///             .name("bulk-igm")
///             .zone("us-central1-a")
///             .baseInstanceName("bulk-igm")
///             .versions(InstanceGroupManagerVersionArgs.builder()
///                 .name("prod")
///                 .instanceTemplate(bulk_igm.selfLink())
///                 .build())
///             .build());
///
///         var bulk_igm_per_instance_config = new BulkPerInstanceConfig("bulk-igm-per-instance-config", BulkPerInstanceConfigArgs.builder()
///             .zone(bulk_igmInstanceGroupManager.zone())
///             .instanceGroupManager(bulk_igmInstanceGroupManager.name())
///             .instances(
///                 BulkPerInstanceConfigInstanceArgs.builder()
///                     .name("per-instance-config-instance-1")
///                     .build(),
///                 BulkPerInstanceConfigInstanceArgs.builder()
///                     .name("per-instance-config-instance-2")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bulk-igm:
///     type: gcp:compute:InstanceTemplate
///     properties:
///       name: bulk-igm-template
///       machineType: e2-medium
///       disks:
///         - sourceImage: ${myImage.selfLink}
///           autoDelete: true
///           boot: true
///       networkInterfaces:
///         - network: default
///   bulk-igmInstanceGroupManager:
///     type: gcp:compute:InstanceGroupManager
///     name: bulk-igm
///     properties:
///       description: Terraform test bulk instance group manager
///       name: bulk-igm
///       zone: us-central1-a
///       baseInstanceName: bulk-igm
///       versions:
///         - name: prod
///           instanceTemplate: ${["bulk-igm"].selfLink}
///   bulk-igm-per-instance-config:
///     type: gcp:compute:BulkPerInstanceConfig
///     properties:
///       zone: ${["bulk-igmInstanceGroupManager"].zone}
///       instanceGroupManager: ${["bulk-igmInstanceGroupManager"].name}
///       instances:
///         - name: per-instance-config-instance-1
///         - name: per-instance-config-instance-2
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-12
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// BulkPerInstanceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{instance_group_manager}}`
/// * `{{project}}/{{zone}}/{{instance_group_manager}}`
/// * `{{zone}}/{{instance_group_manager}}`
/// * `{{instance_group_manager}}`
///
///
/// When using the `pulumi import` command, BulkPerInstanceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/bulkPerInstanceConfig:BulkPerInstanceConfig default projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{instance_group_manager}}
/// $ pulumi import gcp:compute/bulkPerInstanceConfig:BulkPerInstanceConfig default {{project}}/{{zone}}/{{instance_group_manager}}
/// $ pulumi import gcp:compute/bulkPerInstanceConfig:BulkPerInstanceConfig default {{zone}}/{{instance_group_manager}}
/// $ pulumi import gcp:compute/bulkPerInstanceConfig:BulkPerInstanceConfig default {{instance_group_manager}}
/// ```
class BulkPerInstanceConfig extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The instance group manager this instance config is part of.
  late final pulumi.Output<String> instanceGroupManager;
  /// The list of per-instance configs.
  /// Structure is documented below.
  late final pulumi.Output<List<BulkPerInstanceConfigInstance>?> instances;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Zone where the containing instance group manager is located
  late final pulumi.Output<String> zone;

  /// Creates a new [BulkPerInstanceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BulkPerInstanceConfig]. {@macro pulumi_compute_bulk_per_instance_config_bulk_per_instance_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BulkPerInstanceConfig(
    String name, {
    BulkPerInstanceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/bulkPerInstanceConfig:BulkPerInstanceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instanceGroupManager = registerOutput<String>('instanceGroupManager');
    instances = registerOutput<List<BulkPerInstanceConfigInstance>?>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BulkPerInstanceConfigInstance>(guardedValue, (value) => BulkPerInstanceConfigInstance.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [BulkPerInstanceConfig] resource's state with the given [name] and [id].
  static BulkPerInstanceConfig get(
    String name,
    pulumi.Input<String> id, {
    BulkPerInstanceConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BulkPerInstanceConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BulkPerInstanceConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/bulkPerInstanceConfig:BulkPerInstanceConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instanceGroupManager = registerOutput<String>('instanceGroupManager');
    instances = registerOutput<List<BulkPerInstanceConfigInstance>?>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BulkPerInstanceConfigInstance>(guardedValue, (value) => BulkPerInstanceConfigInstance.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [BulkPerInstanceConfig] resource.
  BulkPerInstanceConfig.reference(String urn)
    : super(
        'gcp:compute/bulkPerInstanceConfig:BulkPerInstanceConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instanceGroupManager = registerOutput<String>('instanceGroupManager');
    instances = registerOutput<List<BulkPerInstanceConfigInstance>?>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BulkPerInstanceConfigInstance>(guardedValue, (value) => BulkPerInstanceConfigInstance.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }
}
