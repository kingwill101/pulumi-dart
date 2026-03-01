import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_args.dart';
import 'region_resize_request_requested_run_duration.dart';
import 'region_resize_request_state.dart';
import 'region_resize_request_status.dart';

/// Represents a Regional Managed Instance Group Resize Request
///
/// Resize Requests are the Managed Instance Group implementation of Dynamic Workload Scheduler Flex Start.
///
/// With Dynamic Workload Scheduler in Flex Start mode, you submit a GPU capacity request for your AI/ML jobs by indicating how many you need, a duration, and your preferred region. Dynamic Workload Scheduler intelligently persists the request; once the capacity becomes available, it automatically provisions your VMs enabling your workloads to run continuously for the entire duration of the capacity allocation.
///
/// To get more information about RegionResizeRequest, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionInstanceGroupManagerResizeRequests)
/// * How-to Guides
/// * [About resize requests in a MIG](https://cloud.google.com/compute/docs/instance-groups/about-resize-requests-mig)
///
/// ## Example Usage
///
/// ### Compute Rmig Resize Request
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const a3Dws = new gcp.compute.RegionInstanceTemplate("a3_dws", {
///     name: "a3-dws",
///     region: "us-central1",
///     description: "This template is used to create a mig instance that is compatible with DWS resize requests.",
///     instanceDescription: "A3 GPU",
///     machineType: "a3-highgpu-8g",
///     canIpForward: false,
///     scheduling: {
///         automaticRestart: false,
///         onHostMaintenance: "TERMINATE",
///     },
///     disks: [{
///         sourceImage: "cos-cloud/cos-121-lts",
///         autoDelete: true,
///         boot: true,
///         diskType: "pd-ssd",
///         diskSizeGb: 960,
///         mode: "READ_WRITE",
///     }],
///     guestAccelerators: [{
///         type: "nvidia-h100-80gb",
///         count: 8,
///     }],
///     reservationAffinity: {
///         type: "NO_RESERVATION",
///     },
///     shieldedInstanceConfig: {
///         enableVtpm: true,
///         enableIntegrityMonitoring: true,
///     },
///     networkInterfaces: [{
///         network: "default",
///     }],
/// });
/// const a3DwsRegionInstanceGroupManager = new gcp.compute.RegionInstanceGroupManager("a3_dws", {
///     name: "a3-dws",
///     baseInstanceName: "a3-dws",
///     region: "us-central1",
///     versions: [{
///         instanceTemplate: a3Dws.selfLink,
///     }],
///     instanceLifecyclePolicy: {
///         defaultActionOnFailure: "DO_NOTHING",
///     },
///     distributionPolicyTargetShape: "ANY_SINGLE_ZONE",
///     distributionPolicyZones: [
///         "us-central1-a",
///         "us-central1-b",
///         "us-central1-c",
///         "us-central1-f",
///     ],
///     updatePolicy: {
///         instanceRedistributionType: "NONE",
///         type: "OPPORTUNISTIC",
///         minimalAction: "REPLACE",
///         maxSurgeFixed: 0,
///         maxUnavailableFixed: 6,
///     },
///     waitForInstances: false,
/// });
/// const a3ResizeRequest = new gcp.compute.RegionResizeRequest("a3_resize_request", {
///     name: "a3-dws",
///     instanceGroupManager: a3DwsRegionInstanceGroupManager.name,
///     region: "us-central1",
///     description: "Test resize request resource",
///     resizeBy: 2,
///     requestedRunDuration: {
///         seconds: "14400",
///         nanos: 0,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// a3_dws = gcp.compute.RegionInstanceTemplate("a3_dws",
///     name="a3-dws",
///     region="us-central1",
///     description="This template is used to create a mig instance that is compatible with DWS resize requests.",
///     instance_description="A3 GPU",
///     machine_type="a3-highgpu-8g",
///     can_ip_forward=False,
///     scheduling={
///         "automatic_restart": False,
///         "on_host_maintenance": "TERMINATE",
///     },
///     disks=[{
///         "source_image": "cos-cloud/cos-121-lts",
///         "auto_delete": True,
///         "boot": True,
///         "disk_type": "pd-ssd",
///         "disk_size_gb": 960,
///         "mode": "READ_WRITE",
///     }],
///     guest_accelerators=[{
///         "type": "nvidia-h100-80gb",
///         "count": 8,
///     }],
///     reservation_affinity={
///         "type": "NO_RESERVATION",
///     },
///     shielded_instance_config={
///         "enable_vtpm": True,
///         "enable_integrity_monitoring": True,
///     },
///     network_interfaces=[{
///         "network": "default",
///     }])
/// a3_dws_region_instance_group_manager = gcp.compute.RegionInstanceGroupManager("a3_dws",
///     name="a3-dws",
///     base_instance_name="a3-dws",
///     region="us-central1",
///     versions=[{
///         "instance_template": a3_dws.self_link,
///     }],
///     instance_lifecycle_policy={
///         "default_action_on_failure": "DO_NOTHING",
///     },
///     distribution_policy_target_shape="ANY_SINGLE_ZONE",
///     distribution_policy_zones=[
///         "us-central1-a",
///         "us-central1-b",
///         "us-central1-c",
///         "us-central1-f",
///     ],
///     update_policy={
///         "instance_redistribution_type": "NONE",
///         "type": "OPPORTUNISTIC",
///         "minimal_action": "REPLACE",
///         "max_surge_fixed": 0,
///         "max_unavailable_fixed": 6,
///     },
///     wait_for_instances=False)
/// a3_resize_request = gcp.compute.RegionResizeRequest("a3_resize_request",
///     name="a3-dws",
///     instance_group_manager=a3_dws_region_instance_group_manager.name,
///     region="us-central1",
///     description="Test resize request resource",
///     resize_by=2,
///     requested_run_duration={
///         "seconds": "14400",
///         "nanos": 0,
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
///     var a3Dws = new Gcp.Compute.RegionInstanceTemplate("a3_dws", new()
///     {
///         Name = "a3-dws",
///         Region = "us-central1",
///         Description = "This template is used to create a mig instance that is compatible with DWS resize requests.",
///         InstanceDescription = "A3 GPU",
///         MachineType = "a3-highgpu-8g",
///         CanIpForward = false,
///         Scheduling = new Gcp.Compute.Inputs.RegionInstanceTemplateSchedulingArgs
///         {
///             AutomaticRestart = false,
///             OnHostMaintenance = "TERMINATE",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceTemplateDiskArgs
///             {
///                 SourceImage = "cos-cloud/cos-121-lts",
///                 AutoDelete = true,
///                 Boot = true,
///                 DiskType = "pd-ssd",
///                 DiskSizeGb = 960,
///                 Mode = "READ_WRITE",
///             },
///         },
///         GuestAccelerators = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceTemplateGuestAcceleratorArgs
///             {
///                 Type = "nvidia-h100-80gb",
///                 Count = 8,
///             },
///         },
///         ReservationAffinity = new Gcp.Compute.Inputs.RegionInstanceTemplateReservationAffinityArgs
///         {
///             Type = "NO_RESERVATION",
///         },
///         ShieldedInstanceConfig = new Gcp.Compute.Inputs.RegionInstanceTemplateShieldedInstanceConfigArgs
///         {
///             EnableVtpm = true,
///             EnableIntegrityMonitoring = true,
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///     });
///
///     var a3DwsRegionInstanceGroupManager = new Gcp.Compute.RegionInstanceGroupManager("a3_dws", new()
///     {
///         Name = "a3-dws",
///         BaseInstanceName = "a3-dws",
///         Region = "us-central1",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = a3Dws.SelfLink,
///             },
///         },
///         InstanceLifecyclePolicy = new Gcp.Compute.Inputs.RegionInstanceGroupManagerInstanceLifecyclePolicyArgs
///         {
///             DefaultActionOnFailure = "DO_NOTHING",
///         },
///         DistributionPolicyTargetShape = "ANY_SINGLE_ZONE",
///         DistributionPolicyZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-b",
///             "us-central1-c",
///             "us-central1-f",
///         },
///         UpdatePolicy = new Gcp.Compute.Inputs.RegionInstanceGroupManagerUpdatePolicyArgs
///         {
///             InstanceRedistributionType = "NONE",
///             Type = "OPPORTUNISTIC",
///             MinimalAction = "REPLACE",
///             MaxSurgeFixed = 0,
///             MaxUnavailableFixed = 6,
///         },
///         WaitForInstances = false,
///     });
///
///     var a3ResizeRequest = new Gcp.Compute.RegionResizeRequest("a3_resize_request", new()
///     {
///         Name = "a3-dws",
///         InstanceGroupManager = a3DwsRegionInstanceGroupManager.Name,
///         Region = "us-central1",
///         Description = "Test resize request resource",
///         ResizeBy = 2,
///         RequestedRunDuration = new Gcp.Compute.Inputs.RegionResizeRequestRequestedRunDurationArgs
///         {
///             Seconds = "14400",
///             Nanos = 0,
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
/// 		a3Dws, err := compute.NewRegionInstanceTemplate(ctx, "a3_dws", &compute.RegionInstanceTemplateArgs{
/// 			Name:                pulumi.String("a3-dws"),
/// 			Region:              pulumi.String("us-central1"),
/// 			Description:         pulumi.String("This template is used to create a mig instance that is compatible with DWS resize requests."),
/// 			InstanceDescription: pulumi.String("A3 GPU"),
/// 			MachineType:         pulumi.String("a3-highgpu-8g"),
/// 			CanIpForward:        pulumi.Bool(false),
/// 			Scheduling: &compute.RegionInstanceTemplateSchedulingArgs{
/// 				AutomaticRestart:  pulumi.Bool(false),
/// 				OnHostMaintenance: pulumi.String("TERMINATE"),
/// 			},
/// 			Disks: compute.RegionInstanceTemplateDiskArray{
/// 				&compute.RegionInstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String("cos-cloud/cos-121-lts"),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 					DiskType:    pulumi.String("pd-ssd"),
/// 					DiskSizeGb:  pulumi.Int(960),
/// 					Mode:        pulumi.String("READ_WRITE"),
/// 				},
/// 			},
/// 			GuestAccelerators: compute.RegionInstanceTemplateGuestAcceleratorArray{
/// 				&compute.RegionInstanceTemplateGuestAcceleratorArgs{
/// 					Type:  pulumi.String("nvidia-h100-80gb"),
/// 					Count: pulumi.Int(8),
/// 				},
/// 			},
/// 			ReservationAffinity: &compute.RegionInstanceTemplateReservationAffinityArgs{
/// 				Type: pulumi.String("NO_RESERVATION"),
/// 			},
/// 			ShieldedInstanceConfig: &compute.RegionInstanceTemplateShieldedInstanceConfigArgs{
/// 				EnableVtpm:                pulumi.Bool(true),
/// 				EnableIntegrityMonitoring: pulumi.Bool(true),
/// 			},
/// 			NetworkInterfaces: compute.RegionInstanceTemplateNetworkInterfaceArray{
/// 				&compute.RegionInstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		a3DwsRegionInstanceGroupManager, err := compute.NewRegionInstanceGroupManager(ctx, "a3_dws", &compute.RegionInstanceGroupManagerArgs{
/// 			Name:             pulumi.String("a3-dws"),
/// 			BaseInstanceName: pulumi.String("a3-dws"),
/// 			Region:           pulumi.String("us-central1"),
/// 			Versions: compute.RegionInstanceGroupManagerVersionArray{
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: a3Dws.SelfLink,
/// 				},
/// 			},
/// 			InstanceLifecyclePolicy: &compute.RegionInstanceGroupManagerInstanceLifecyclePolicyArgs{
/// 				DefaultActionOnFailure: pulumi.String("DO_NOTHING"),
/// 			},
/// 			DistributionPolicyTargetShape: pulumi.String("ANY_SINGLE_ZONE"),
/// 			DistributionPolicyZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-b"),
/// 				pulumi.String("us-central1-c"),
/// 				pulumi.String("us-central1-f"),
/// 			},
/// 			UpdatePolicy: &compute.RegionInstanceGroupManagerUpdatePolicyArgs{
/// 				InstanceRedistributionType: pulumi.String("NONE"),
/// 				Type:                       pulumi.String("OPPORTUNISTIC"),
/// 				MinimalAction:              pulumi.String("REPLACE"),
/// 				MaxSurgeFixed:              pulumi.Int(0),
/// 				MaxUnavailableFixed:        pulumi.Int(6),
/// 			},
/// 			WaitForInstances: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionResizeRequest(ctx, "a3_resize_request", &compute.RegionResizeRequestArgs{
/// 			Name:                 pulumi.String("a3-dws"),
/// 			InstanceGroupManager: a3DwsRegionInstanceGroupManager.Name,
/// 			Region:               pulumi.String("us-central1"),
/// 			Description:          pulumi.String("Test resize request resource"),
/// 			ResizeBy:             pulumi.Int(2),
/// 			RequestedRunDuration: &compute.RegionResizeRequestRequestedRunDurationArgs{
/// 				Seconds: pulumi.String("14400"),
/// 				Nanos:   pulumi.Int(0),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionInstanceTemplate;
/// import com.pulumi.gcp.compute.RegionInstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateSchedulingArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateGuestAcceleratorArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateReservationAffinityArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerInstanceLifecyclePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerUpdatePolicyArgs;
/// import com.pulumi.gcp.compute.RegionResizeRequest;
/// import com.pulumi.gcp.compute.RegionResizeRequestArgs;
/// import com.pulumi.gcp.compute.inputs.RegionResizeRequestRequestedRunDurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var a3Dws = new RegionInstanceTemplate("a3Dws", RegionInstanceTemplateArgs.builder()
///             .name("a3-dws")
///             .region("us-central1")
///             .description("This template is used to create a mig instance that is compatible with DWS resize requests.")
///             .instanceDescription("A3 GPU")
///             .machineType("a3-highgpu-8g")
///             .canIpForward(false)
///             .scheduling(RegionInstanceTemplateSchedulingArgs.builder()
///                 .automaticRestart(false)
///                 .onHostMaintenance("TERMINATE")
///                 .build())
///             .disks(RegionInstanceTemplateDiskArgs.builder()
///                 .sourceImage("cos-cloud/cos-121-lts")
///                 .autoDelete(true)
///                 .boot(true)
///                 .diskType("pd-ssd")
///                 .diskSizeGb(960)
///                 .mode("READ_WRITE")
///                 .build())
///             .guestAccelerators(RegionInstanceTemplateGuestAcceleratorArgs.builder()
///                 .type("nvidia-h100-80gb")
///                 .count(8)
///                 .build())
///             .reservationAffinity(RegionInstanceTemplateReservationAffinityArgs.builder()
///                 .type("NO_RESERVATION")
///                 .build())
///             .shieldedInstanceConfig(RegionInstanceTemplateShieldedInstanceConfigArgs.builder()
///                 .enableVtpm(true)
///                 .enableIntegrityMonitoring(true)
///                 .build())
///             .networkInterfaces(RegionInstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .build());
///
///         var a3DwsRegionInstanceGroupManager = new RegionInstanceGroupManager("a3DwsRegionInstanceGroupManager", RegionInstanceGroupManagerArgs.builder()
///             .name("a3-dws")
///             .baseInstanceName("a3-dws")
///             .region("us-central1")
///             .versions(RegionInstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(a3Dws.selfLink())
///                 .build())
///             .instanceLifecyclePolicy(RegionInstanceGroupManagerInstanceLifecyclePolicyArgs.builder()
///                 .defaultActionOnFailure("DO_NOTHING")
///                 .build())
///             .distributionPolicyTargetShape("ANY_SINGLE_ZONE")
///             .distributionPolicyZones(
///                 "us-central1-a",
///                 "us-central1-b",
///                 "us-central1-c",
///                 "us-central1-f")
///             .updatePolicy(RegionInstanceGroupManagerUpdatePolicyArgs.builder()
///                 .instanceRedistributionType("NONE")
///                 .type("OPPORTUNISTIC")
///                 .minimalAction("REPLACE")
///                 .maxSurgeFixed(0)
///                 .maxUnavailableFixed(6)
///                 .build())
///             .waitForInstances(false)
///             .build());
///
///         var a3ResizeRequest = new RegionResizeRequest("a3ResizeRequest", RegionResizeRequestArgs.builder()
///             .name("a3-dws")
///             .instanceGroupManager(a3DwsRegionInstanceGroupManager.name())
///             .region("us-central1")
///             .description("Test resize request resource")
///             .resizeBy(2)
///             .requestedRunDuration(RegionResizeRequestRequestedRunDurationArgs.builder()
///                 .seconds("14400")
///                 .nanos(0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   a3Dws:
///     type: gcp:compute:RegionInstanceTemplate
///     name: a3_dws
///     properties:
///       name: a3-dws
///       region: us-central1
///       description: This template is used to create a mig instance that is compatible with DWS resize requests.
///       instanceDescription: A3 GPU
///       machineType: a3-highgpu-8g
///       canIpForward: false
///       scheduling:
///         automaticRestart: false
///         onHostMaintenance: TERMINATE
///       disks:
///         - sourceImage: cos-cloud/cos-121-lts
///           autoDelete: true
///           boot: true
///           diskType: pd-ssd
///           diskSizeGb: '960'
///           mode: READ_WRITE
///       guestAccelerators:
///         - type: nvidia-h100-80gb
///           count: 8
///       reservationAffinity:
///         type: NO_RESERVATION
///       shieldedInstanceConfig:
///         enableVtpm: true
///         enableIntegrityMonitoring: true
///       networkInterfaces:
///         - network: default
///   a3DwsRegionInstanceGroupManager:
///     type: gcp:compute:RegionInstanceGroupManager
///     name: a3_dws
///     properties:
///       name: a3-dws
///       baseInstanceName: a3-dws
///       region: us-central1
///       versions:
///         - instanceTemplate: ${a3Dws.selfLink}
///       instanceLifecyclePolicy:
///         defaultActionOnFailure: DO_NOTHING
///       distributionPolicyTargetShape: ANY_SINGLE_ZONE
///       distributionPolicyZones:
///         - us-central1-a
///         - us-central1-b
///         - us-central1-c
///         - us-central1-f
///       updatePolicy:
///         instanceRedistributionType: NONE
///         type: OPPORTUNISTIC
///         minimalAction: REPLACE
///         maxSurgeFixed: 0
///         maxUnavailableFixed: 6
///       waitForInstances: false
///   a3ResizeRequest:
///     type: gcp:compute:RegionResizeRequest
///     name: a3_resize_request
///     properties:
///       name: a3-dws
///       instanceGroupManager: ${a3DwsRegionInstanceGroupManager.name}
///       region: us-central1
///       description: Test resize request resource
///       resizeBy: 2
///       requestedRunDuration:
///         seconds: 14400
///         nanos: 0
/// ```
///
///
/// ## Import
///
/// RegionResizeRequest can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/instanceGroupManagers/{{instance_group_manager}}/resizeRequests/{{name}}`
///
/// * `{{project}}/{{region}}/{{instance_group_manager}}/{{name}}`
///
/// * `{{region}}/{{instance_group_manager}}/{{name}}`
///
/// * `{{instance_group_manager}}/{{name}}`
///
/// When using the `pulumi import` command, RegionResizeRequest can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionResizeRequest:RegionResizeRequest default projects/{{project}}/regions/{{region}}/instanceGroupManagers/{{instance_group_manager}}/resizeRequests/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionResizeRequest:RegionResizeRequest default {{project}}/{{region}}/{{instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionResizeRequest:RegionResizeRequest default {{region}}/{{instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionResizeRequest:RegionResizeRequest default {{instance_group_manager}}/{{name}}
/// ```
class RegionResizeRequest extends pulumi.CustomResource {
  /// The creation timestamp for this resize request in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resize-request.
  late final pulumi.Output<String?> description;
  /// The reference of the regional instance group manager this ResizeRequest is a part of.
  late final pulumi.Output<String> instanceGroupManager;
  /// The name of this resize request. The name must be 1-63 characters long, and comply with RFC1035.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The reference of the compute region scoping this request. If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// Requested run duration for instances that will be created by this request. At the end of the run duration instances will be deleted.
  /// Structure is documented below.
  late final pulumi.Output<RegionResizeRequestRequestedRunDuration?> requestedRunDuration;
  /// The number of instances to be created by this resize request. The group's target size will be increased by this number.
  late final pulumi.Output<int> resizeBy;
  /// Current state of the request.
  late final pulumi.Output<String> state;
  /// Status of the request.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionResizeRequestStatus>> statuses;

  /// Creates a new [RegionResizeRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionResizeRequest]. {@macro pulumi_compute_region_resize_request_region_resize_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionResizeRequest(
    String name, {
    RegionResizeRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionResizeRequest:RegionResizeRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.instanceGroupManager = registerOutput<String>('instanceGroupManager');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestedRunDuration = registerOutput<RegionResizeRequestRequestedRunDuration?>('requestedRunDuration');
    this.resizeBy = registerOutput<int>('resizeBy');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<RegionResizeRequestStatus>>('statuses');
  }

  /// Gets an existing [RegionResizeRequest] resource's state with the given [name] and [id].
  static RegionResizeRequest get(
    String name,
    pulumi.Input<String> id, {
    RegionResizeRequestState? state,
  }) {
    return RegionResizeRequest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionResizeRequest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionResizeRequest:RegionResizeRequest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.instanceGroupManager = registerOutput<String>('instanceGroupManager');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestedRunDuration = registerOutput<RegionResizeRequestRequestedRunDuration?>('requestedRunDuration');
    this.resizeBy = registerOutput<int>('resizeBy');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<RegionResizeRequestStatus>>('statuses');
  }
}
