import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_maintenance_policy.dart';
import 'instance_memcache_parameters.dart';
import 'instance_node_config.dart';
import 'instance_state.dart';

/// A Google Cloud Memcache instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/memorystore/docs/memcached/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/memcache/docs/creating-instances)
///
/// ## Example Usage
///
/// ### Memcache Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Memcache instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// const memcacheNetwork = new gcp.compute.Network("memcache_network", {name: "test-network"});
/// const serviceRange = new gcp.compute.GlobalAddress("service_range", {
///     name: "address",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: memcacheNetwork.id,
/// });
/// const privateServiceConnection = new gcp.servicenetworking.Connection("private_service_connection", {
///     network: memcacheNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [serviceRange.name],
/// });
/// const instance = new gcp.memcache.Instance("instance", {
///     name: "test-instance",
///     authorizedNetwork: privateServiceConnection.network,
///     deletionProtection: false,
///     labels: {
///         env: "test",
///     },
///     nodeConfig: {
///         cpuCount: 1,
///         memorySizeMb: 1024,
///     },
///     nodeCount: 1,
///     memcacheVersion: "MEMCACHE_1_5",
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "SATURDAY",
///             duration: "14400s",
///             startTime: {
///                 hours: 0,
///                 minutes: 30,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This example assumes this network already exists.
/// # The API creates a tenant network per network authorized for a
/// # Memcache instance and that network is not deleted when the user-created
/// # network (authorized_network) is deleted, so this prevents issues
/// # with tenant network quota.
/// # If this network hasn't been created and you are using this example in your
/// # config, add an additional network resource or change
/// # this from "data"to "resource"
/// memcache_network = gcp.compute.Network("memcache_network", name="test-network")
/// service_range = gcp.compute.GlobalAddress("service_range",
///     name="address",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=memcache_network.id)
/// private_service_connection = gcp.servicenetworking.Connection("private_service_connection",
///     network=memcache_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[service_range.name])
/// instance = gcp.memcache.Instance("instance",
///     name="test-instance",
///     authorized_network=private_service_connection.network,
///     deletion_protection=False,
///     labels={
///         "env": "test",
///     },
///     node_config={
///         "cpu_count": 1,
///         "memory_size_mb": 1024,
///     },
///     node_count=1,
///     memcache_version="MEMCACHE_1_5",
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "SATURDAY",
///             "duration": "14400s",
///             "start_time": {
///                 "hours": 0,
///                 "minutes": 30,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
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
///     // This example assumes this network already exists.
///     // The API creates a tenant network per network authorized for a
///     // Memcache instance and that network is not deleted when the user-created
///     // network (authorized_network) is deleted, so this prevents issues
///     // with tenant network quota.
///     // If this network hasn't been created and you are using this example in your
///     // config, add an additional network resource or change
///     // this from "data"to "resource"
///     var memcacheNetwork = new Gcp.Compute.Network("memcache_network", new()
///     {
///         Name = "test-network",
///     });
///
///     var serviceRange = new Gcp.Compute.GlobalAddress("service_range", new()
///     {
///         Name = "address",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = memcacheNetwork.Id,
///     });
///
///     var privateServiceConnection = new Gcp.ServiceNetworking.Connection("private_service_connection", new()
///     {
///         Network = memcacheNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             serviceRange.Name,
///         },
///     });
///
///     var instance = new Gcp.Memcache.Instance("instance", new()
///     {
///         Name = "test-instance",
///         AuthorizedNetwork = privateServiceConnection.Network,
///         DeletionProtection = false,
///         Labels =
///         {
///             { "env", "test" },
///         },
///         NodeConfig = new Gcp.Memcache.Inputs.InstanceNodeConfigArgs
///         {
///             CpuCount = 1,
///             MemorySizeMb = 1024,
///         },
///         NodeCount = 1,
///         MemcacheVersion = "MEMCACHE_1_5",
///         MaintenancePolicy = new Gcp.Memcache.Inputs.InstanceMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.Memcache.Inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "SATURDAY",
///                     Duration = "14400s",
///                     StartTime = new Gcp.Memcache.Inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 0,
///                         Minutes = 30,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memcache"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This example assumes this network already exists.
/// 		// The API creates a tenant network per network authorized for a
/// 		// Memcache instance and that network is not deleted when the user-created
/// 		// network (authorized_network) is deleted, so this prevents issues
/// 		// with tenant network quota.
/// 		// If this network hasn't been created and you are using this example in your
/// 		// config, add an additional network resource or change
/// 		// this from "data"to "resource"
/// 		memcacheNetwork, err := compute.NewNetwork(ctx, "memcache_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("test-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceRange, err := compute.NewGlobalAddress(ctx, "service_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("address"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      memcacheNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateServiceConnection, err := servicenetworking.NewConnection(ctx, "private_service_connection", &servicenetworking.ConnectionArgs{
/// 			Network: memcacheNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				serviceRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memcache.NewInstance(ctx, "instance", &memcache.InstanceArgs{
/// 			Name:               pulumi.String("test-instance"),
/// 			AuthorizedNetwork:  privateServiceConnection.Network,
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 			NodeConfig: &memcache.InstanceNodeConfigArgs{
/// 				CpuCount:     pulumi.Int(1),
/// 				MemorySizeMb: pulumi.Int(1024),
/// 			},
/// 			NodeCount:       pulumi.Int(1),
/// 			MemcacheVersion: pulumi.String("MEMCACHE_1_5"),
/// 			MaintenancePolicy: &memcache.InstanceMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: memcache.InstanceMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&memcache.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day:      pulumi.String("SATURDAY"),
/// 						Duration: pulumi.String("14400s"),
/// 						StartTime: &memcache.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(0),
/// 							Minutes: pulumi.Int(30),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
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
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Memcache instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// resource "gcp_compute_network" "memcache_network" {
///   name = "test-network"
/// }
/// resource "gcp_compute_globaladdress" "service_range" {
///   name          = "address"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 16
///   network       = gcp_compute_network.memcache_network.id
/// }
/// resource "gcp_servicenetworking_connection" "private_service_connection" {
///   network                 = gcp_compute_network.memcache_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.service_range.name]
/// }
/// resource "gcp_memcache_instance" "instance" {
///   name                = "test-instance"
///   authorized_network  = gcp_servicenetworking_connection.private_service_connection.network
///   deletion_protection = false
///   labels = {
///     "env" = "test"
///   }
///   node_config = {
///     cpu_count      = 1
///     memory_size_mb = 1024
///   }
///   node_count       = 1
///   memcache_version = "MEMCACHE_1_5"
///   maintenance_policy = {
///     weekly_maintenance_windows = [{
///       "day"      = "SATURDAY"
///       "duration" = "14400s"
///       "startTime" = {
///         "hours"   = 0
///         "minutes" = 30
///         "seconds" = 0
///         "nanos"   = 0
///       }
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.memcache.Instance;
/// import com.pulumi.gcp.memcache.InstanceArgs;
/// import com.pulumi.gcp.memcache.inputs.InstanceNodeConfigArgs;
/// import com.pulumi.gcp.memcache.inputs.InstanceMaintenancePolicyArgs;
/// import com.pulumi.gcp.memcache.inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs;
/// import com.pulumi.gcp.memcache.inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs;
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
///         // This example assumes this network already exists.
///         // The API creates a tenant network per network authorized for a
///         // Memcache instance and that network is not deleted when the user-created
///         // network (authorized_network) is deleted, so this prevents issues
///         // with tenant network quota.
///         // If this network hasn't been created and you are using this example in your
///         // config, add an additional network resource or change
///         // this from "data"to "resource"
///         var memcacheNetwork = new Network("memcacheNetwork", NetworkArgs.builder()
///             .name("test-network")
///             .build());
///
///         var serviceRange = new GlobalAddress("serviceRange", GlobalAddressArgs.builder()
///             .name("address")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(memcacheNetwork.id())
///             .build());
///
///         var privateServiceConnection = new Connection("privateServiceConnection", ConnectionArgs.builder()
///             .network(memcacheNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(serviceRange.name())
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("test-instance")
///             .authorizedNetwork(privateServiceConnection.network())
///             .deletionProtection(false)
///             .labels(Map.of("env", "test"))
///             .nodeConfig(InstanceNodeConfigArgs.builder()
///                 .cpuCount(1)
///                 .memorySizeMb(1024)
///                 .build())
///             .nodeCount(1)
///             .memcacheVersion("MEMCACHE_1_5")
///             .maintenancePolicy(InstanceMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("SATURDAY")
///                     .duration("14400s")
///                     .startTime(InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(0)
///                         .minutes(30)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # This example assumes this network already exists.
///   # // The API creates a tenant network per network authorized for a
///   # // Memcache instance and that network is not deleted when the user-created
///   # // network (authorized_network) is deleted, so this prevents issues
///   # // with tenant network quota.
///   # // If this network hasn't been created and you are using this example in your
///   # // config, add an additional network resource or change
///   # // this from "data"to "resource"
///   memcacheNetwork:
///     type: gcp:compute:Network
///     name: memcache_network
///     properties:
///       name: test-network
///   serviceRange:
///     type: gcp:compute:GlobalAddress
///     name: service_range
///     properties:
///       name: address
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${memcacheNetwork.id}
///   privateServiceConnection:
///     type: gcp:servicenetworking:Connection
///     name: private_service_connection
///     properties:
///       network: ${memcacheNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${serviceRange.name}
///   instance:
///     type: gcp:memcache:Instance
///     properties:
///       name: test-instance
///       authorizedNetwork: ${privateServiceConnection.network}
///       deletionProtection: false
///       labels:
///         env: test
///       nodeConfig:
///         cpuCount: 1
///         memorySizeMb: 1024
///       nodeCount: 1
///       memcacheVersion: MEMCACHE_1_5
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: SATURDAY
///             duration: 14400s
///             startTime:
///               hours: 0
///               minutes: 30
///               seconds: 0
///               nanos: 0
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:memcache/instance:Instance default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// $ pulumi import gcp:memcache/instance:Instance default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:memcache/instance:Instance default {{region}}/{{name}}
/// $ pulumi import gcp:memcache/instance:Instance default {{name}}
/// ```
class Instance extends pulumi.CustomResource {
  /// The full name of the GCE network to connect the instance to.  If not provided,
  /// 'default' will be used.
  late final pulumi.Output<String> authorizedNetwork;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether Terraform will be prevented from destroying the instance.
  /// When a `terraform destroy` or `pulumi up` would delete the instance,
  /// the command will fail if this field is not set to false in Terraform state.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the instance will fail.
  /// When the field is set to false, deleting the instance is allowed.
  late final pulumi.Output<bool?> deletionProtection;
  /// Endpoint for Discovery API
  late final pulumi.Output<String> discoveryEndpoint;
  /// A user-visible name for the instance.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Maintenance policy for an instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceMaintenancePolicy?> maintenancePolicy;
  /// Output only. Published maintenance schedule.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> maintenanceSchedules;
  /// The full version of memcached server running on this instance.
  late final pulumi.Output<String> memcacheFullVersion;
  /// Additional information about the instance state, if available.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> memcacheNodes;
  /// User-specified parameters for this memcache instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceMemcacheParameters?> memcacheParameters;
  /// The major version of Memcached software. If not provided, latest supported version will be used.
  /// Currently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically
  /// determined by our system based on the latest supported minor version.
  /// Default value is `MEMCACHE_1_5`.
  /// Possible values are: `MEMCACHE_1_5`, `MEMCACHE_1_6_15`.
  late final pulumi.Output<String?> memcacheVersion;
  /// The resource name of the instance.
  late final pulumi.Output<String> name;
  /// Configuration for memcache nodes.
  /// Structure is documented below.
  late final pulumi.Output<InstanceNodeConfig> nodeConfig;
  /// Number of nodes in the memcache instance.
  late final pulumi.Output<int> nodeCount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the Memcache instance. If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// Contains the name of allocated IP address ranges associated with
  /// the private service access connection for example, "test-default"
  /// associated with IP range 10.0.0.0/29.
  late final pulumi.Output<List<String>?> reservedIpRangeIds;
  /// Zones where memcache nodes should be provisioned.  If not
  /// provided, all zones will be used.
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_memcache_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:memcache/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizedNetwork = registerOutput<String>('authorizedNetwork');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    discoveryEndpoint = registerOutput<String>('discoveryEndpoint');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceSchedules = registerOutput<List<Map<String, dynamic>>>('maintenanceSchedules');
    memcacheFullVersion = registerOutput<String>('memcacheFullVersion');
    memcacheNodes = registerOutput<List<Map<String, dynamic>>>('memcacheNodes');
    memcacheParameters = registerOutput<InstanceMemcacheParameters?>('memcacheParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMemcacheParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memcacheVersion = registerOutput<String?>('memcacheVersion');
    this.name = registerOutput<String>('name');
    nodeConfig = registerOutput<InstanceNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeCount = registerOutput<int>('nodeCount');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    reservedIpRangeIds = registerOutput<List<String>?>('reservedIpRangeIds');
    zones = registerOutput<List<String>>('zones');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:memcache/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizedNetwork = registerOutput<String>('authorizedNetwork');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    discoveryEndpoint = registerOutput<String>('discoveryEndpoint');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceSchedules = registerOutput<List<Map<String, dynamic>>>('maintenanceSchedules');
    memcacheFullVersion = registerOutput<String>('memcacheFullVersion');
    memcacheNodes = registerOutput<List<Map<String, dynamic>>>('memcacheNodes');
    memcacheParameters = registerOutput<InstanceMemcacheParameters?>('memcacheParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMemcacheParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memcacheVersion = registerOutput<String?>('memcacheVersion');
    this.name = registerOutput<String>('name');
    nodeConfig = registerOutput<InstanceNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeCount = registerOutput<int>('nodeCount');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    reservedIpRangeIds = registerOutput<List<String>?>('reservedIpRangeIds');
    zones = registerOutput<List<String>>('zones');
  }
}
