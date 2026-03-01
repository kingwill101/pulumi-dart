import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_args.dart';
import 'worker_pool_network_config.dart';
import 'worker_pool_private_service_connect.dart';
import 'worker_pool_state.dart';
import 'worker_pool_worker_config.dart';

/// Definition of custom Cloud Build WorkerPools for running jobs with custom configuration and custom networking.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.cloudbuild.WorkerPool("pool", {
///     name: "my-pool",
///     location: "europe-west1",
///     workerConfig: {
///         diskSizeGb: 100,
///         machineType: "e2-standard-4",
///         noExternalIp: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.cloudbuild.WorkerPool("pool",
///     name="my-pool",
///     location="europe-west1",
///     worker_config={
///         "disk_size_gb": 100,
///         "machine_type": "e2-standard-4",
///         "no_external_ip": False,
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
///     var pool = new Gcp.CloudBuild.WorkerPool("pool", new()
///     {
///         Name = "my-pool",
///         Location = "europe-west1",
///         WorkerConfig = new Gcp.CloudBuild.Inputs.WorkerPoolWorkerConfigArgs
///         {
///             DiskSizeGb = 100,
///             MachineType = "e2-standard-4",
///             NoExternalIp = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudbuild.NewWorkerPool(ctx, "pool", &cloudbuild.WorkerPoolArgs{
/// 			Name:     pulumi.String("my-pool"),
/// 			Location: pulumi.String("europe-west1"),
/// 			WorkerConfig: &cloudbuild.WorkerPoolWorkerConfigArgs{
/// 				DiskSizeGb:   pulumi.Int(100),
/// 				MachineType:  pulumi.String("e2-standard-4"),
/// 				NoExternalIp: pulumi.Bool(false),
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
/// import com.pulumi.gcp.cloudbuild.WorkerPool;
/// import com.pulumi.gcp.cloudbuild.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.WorkerPoolWorkerConfigArgs;
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
///         var pool = new WorkerPool("pool", WorkerPoolArgs.builder()
///             .name("my-pool")
///             .location("europe-west1")
///             .workerConfig(WorkerPoolWorkerConfigArgs.builder()
///                 .diskSizeGb(100)
///                 .machineType("e2-standard-4")
///                 .noExternalIp(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pool:
///     type: gcp:cloudbuild:WorkerPool
///     properties:
///       name: my-pool
///       location: europe-west1
///       workerConfig:
///         diskSizeGb: 100
///         machineType: e2-standard-4
///         noExternalIp: false
/// ```
///
///
/// ### Network Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicenetworking = new gcp.projects.Service("servicenetworking", {service: "servicenetworking.googleapis.com"});
/// const network = new gcp.compute.Network("network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// }, {
///     dependsOn: [servicenetworking],
/// });
/// const workerRange = new gcp.compute.GlobalAddress("worker_range", {
///     name: "worker-pool-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: network.id,
/// });
/// const workerPoolConn = new gcp.servicenetworking.Connection("worker_pool_conn", {
///     network: network.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [workerRange.name],
/// }, {
///     dependsOn: [servicenetworking],
/// });
/// const pool = new gcp.cloudbuild.WorkerPool("pool", {
///     name: "my-pool",
///     location: "europe-west1",
///     workerConfig: {
///         diskSizeGb: 100,
///         machineType: "e2-standard-4",
///         noExternalIp: false,
///     },
///     networkConfig: {
///         peeredNetwork: network.id,
///         peeredNetworkIpRange: "/29",
///     },
/// }, {
///     dependsOn: [workerPoolConn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// servicenetworking = gcp.projects.Service("servicenetworking", service="servicenetworking.googleapis.com")
/// network = gcp.compute.Network("network",
///     name="my-network",
///     auto_create_subnetworks=False,
///     opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// worker_range = gcp.compute.GlobalAddress("worker_range",
///     name="worker-pool-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=network.id)
/// worker_pool_conn = gcp.servicenetworking.Connection("worker_pool_conn",
///     network=network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[worker_range.name],
///     opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// pool = gcp.cloudbuild.WorkerPool("pool",
///     name="my-pool",
///     location="europe-west1",
///     worker_config={
///         "disk_size_gb": 100,
///         "machine_type": "e2-standard-4",
///         "no_external_ip": False,
///     },
///     network_config={
///         "peered_network": network.id,
///         "peered_network_ip_range": "/29",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[worker_pool_conn]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var servicenetworking = new Gcp.Projects.Service("servicenetworking", new()
///     {
///         ServiceName = "servicenetworking.googleapis.com",
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             servicenetworking,
///         },
///     });
///
///     var workerRange = new Gcp.Compute.GlobalAddress("worker_range", new()
///     {
///         Name = "worker-pool-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = network.Id,
///     });
///
///     var workerPoolConn = new Gcp.ServiceNetworking.Connection("worker_pool_conn", new()
///     {
///         Network = network.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             workerRange.Name,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             servicenetworking,
///         },
///     });
///
///     var pool = new Gcp.CloudBuild.WorkerPool("pool", new()
///     {
///         Name = "my-pool",
///         Location = "europe-west1",
///         WorkerConfig = new Gcp.CloudBuild.Inputs.WorkerPoolWorkerConfigArgs
///         {
///             DiskSizeGb = 100,
///             MachineType = "e2-standard-4",
///             NoExternalIp = false,
///         },
///         NetworkConfig = new Gcp.CloudBuild.Inputs.WorkerPoolNetworkConfigArgs
///         {
///             PeeredNetwork = network.Id,
///             PeeredNetworkIpRange = "/29",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             workerPoolConn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudbuild"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		servicenetworking, err := projects.NewService(ctx, "servicenetworking", &projects.ServiceArgs{
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			servicenetworking,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workerRange, err := compute.NewGlobalAddress(ctx, "worker_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("worker-pool-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workerPoolConn, err := servicenetworking.NewConnection(ctx, "worker_pool_conn", &servicenetworking.ConnectionArgs{
/// 			Network: network.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				workerRange.Name,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			servicenetworking,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudbuild.NewWorkerPool(ctx, "pool", &cloudbuild.WorkerPoolArgs{
/// 			Name:     pulumi.String("my-pool"),
/// 			Location: pulumi.String("europe-west1"),
/// 			WorkerConfig: &cloudbuild.WorkerPoolWorkerConfigArgs{
/// 				DiskSizeGb:   pulumi.Int(100),
/// 				MachineType:  pulumi.String("e2-standard-4"),
/// 				NoExternalIp: pulumi.Bool(false),
/// 			},
/// 			NetworkConfig: &cloudbuild.WorkerPoolNetworkConfigArgs{
/// 				PeeredNetwork:        network.ID(),
/// 				PeeredNetworkIpRange: pulumi.String("/29"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			workerPoolConn,
/// 		}))
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.cloudbuild.WorkerPool;
/// import com.pulumi.gcp.cloudbuild.WorkerPoolArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.WorkerPoolWorkerConfigArgs;
/// import com.pulumi.gcp.cloudbuild.inputs.WorkerPoolNetworkConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var servicenetworking = new Service("servicenetworking", ServiceArgs.builder()
///             .service("servicenetworking.googleapis.com")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(servicenetworking)
///                 .build());
///
///         var workerRange = new GlobalAddress("workerRange", GlobalAddressArgs.builder()
///             .name("worker-pool-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(network.id())
///             .build());
///
///         var workerPoolConn = new Connection("workerPoolConn", ConnectionArgs.builder()
///             .network(network.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(workerRange.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(servicenetworking)
///                 .build());
///
///         var pool = new WorkerPool("pool", WorkerPoolArgs.builder()
///             .name("my-pool")
///             .location("europe-west1")
///             .workerConfig(WorkerPoolWorkerConfigArgs.builder()
///                 .diskSizeGb(100)
///                 .machineType("e2-standard-4")
///                 .noExternalIp(false)
///                 .build())
///             .networkConfig(WorkerPoolNetworkConfigArgs.builder()
///                 .peeredNetwork(network.id())
///                 .peeredNetworkIpRange("/29")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(workerPoolConn)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   servicenetworking:
///     type: gcp:projects:Service
///     properties:
///       service: servicenetworking.googleapis.com
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///     options:
///       dependsOn:
///         - ${servicenetworking}
///   workerRange:
///     type: gcp:compute:GlobalAddress
///     name: worker_range
///     properties:
///       name: worker-pool-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${network.id}
///   workerPoolConn:
///     type: gcp:servicenetworking:Connection
///     name: worker_pool_conn
///     properties:
///       network: ${network.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${workerRange.name}
///     options:
///       dependsOn:
///         - ${servicenetworking}
///   pool:
///     type: gcp:cloudbuild:WorkerPool
///     properties:
///       name: my-pool
///       location: europe-west1
///       workerConfig:
///         diskSizeGb: 100
///         machineType: e2-standard-4
///         noExternalIp: false
///       networkConfig:
///         peeredNetwork: ${network.id}
///         peeredNetworkIpRange: /29
///     options:
///       dependsOn:
///         - ${workerPoolConn}
/// ```
///
///
/// ## Import
///
/// WorkerPool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workerPools/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, WorkerPool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/workerPool:WorkerPool default projects/{{project}}/locations/{{location}}/workerPools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/workerPool:WorkerPool default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/workerPool:WorkerPool default {{location}}/{{name}}
/// ```
class WorkerPool extends pulumi.CustomResource {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Output only. Time at which the request to create the `WorkerPool` was received.
  late final pulumi.Output<String> createTime;
  /// Output only. Time at which the request to delete the `WorkerPool` was received.
  late final pulumi.Output<String> deleteTime;
  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// User-defined name of the `WorkerPool`.
  ///
  ///
  /// - - -
  late final pulumi.Output<String> name;
  /// Network configuration for the `WorkerPool`. Structure is documented below.
  late final pulumi.Output<WorkerPoolNetworkConfig?> networkConfig;
  /// Private Service Connect configuration for the pool.
  late final pulumi.Output<WorkerPoolPrivateServiceConnect?> privateServiceConnect;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// Output only. WorkerPool state. Possible values: STATE_UNSPECIFIED, PENDING, APPROVED, REJECTED, CANCELLED
  late final pulumi.Output<String> state;
  /// Output only. A unique identifier for the `WorkerPool`.
  late final pulumi.Output<String> uid;
  /// Output only. Time at which the request to update the `WorkerPool` was received.
  late final pulumi.Output<String> updateTime;
  /// Configuration to be used for a creating workers in the `WorkerPool`. Structure is documented below.
  late final pulumi.Output<WorkerPoolWorkerConfig> workerConfig;

  /// Creates a new [WorkerPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerPool]. {@macro pulumi_cloudbuild_worker_pool_worker_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerPool(
    String name, {
    WorkerPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuild/workerPool:WorkerPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<WorkerPoolNetworkConfig?>('networkConfig');
    this.privateServiceConnect = registerOutput<WorkerPoolPrivateServiceConnect?>('privateServiceConnect');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workerConfig = registerOutput<WorkerPoolWorkerConfig>('workerConfig');
  }

  /// Gets an existing [WorkerPool] resource's state with the given [name] and [id].
  static WorkerPool get(
    String name,
    pulumi.Input<String> id, {
    WorkerPoolState? state,
  }) {
    return WorkerPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkerPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuild/workerPool:WorkerPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<WorkerPoolNetworkConfig?>('networkConfig');
    this.privateServiceConnect = registerOutput<WorkerPoolPrivateServiceConnect?>('privateServiceConnect');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workerConfig = registerOutput<WorkerPoolWorkerConfig>('workerConfig');
  }
}
