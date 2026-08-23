import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_pool_args.dart';
import 'storage_pool_params.dart';
import 'storage_pool_state.dart';

/// A Hyperdisk Storage Pool is a pre-purchased collection of capacity, throughput, and IOPS
/// which you can then provision to your applications as needed.
/// You can use Hyperdisk Storage Pools to create and manage disks in pools and use the disks across multiple workloads.
///
///
/// To get more information about StoragePool, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools)
/// * How-to Guides
/// * [Create Hyperdisk Storage Pools](https://cloud.google.com/compute/docs/disks/create-storage-pools)
///
/// ## Example Usage
///
/// ### Compute Storage Pool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test_storage_pool_basic = new gcp.compute.StoragePool("test-storage-pool-basic", {
///     name: "storage-pool-basic",
///     poolProvisionedCapacityGb: "10240",
///     poolProvisionedThroughput: "100",
///     storagePoolType: "hyperdisk-throughput",
///     zone: "us-central1-a",
///     labels: {
///         environment: "test",
///         purpose: "storage-pool-testing",
///         team: "infrastructure",
///         cost_center: "engineering",
///     },
///     deletionProtection: false,
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_storage_pool_basic = gcp.compute.StoragePool("test-storage-pool-basic",
///     name="storage-pool-basic",
///     pool_provisioned_capacity_gb="10240",
///     pool_provisioned_throughput="100",
///     storage_pool_type="hyperdisk-throughput",
///     zone="us-central1-a",
///     labels={
///         "environment": "test",
///         "purpose": "storage-pool-testing",
///         "team": "infrastructure",
///         "cost_center": "engineering",
///     },
///     deletion_protection=False)
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_storage_pool_basic = new Gcp.Compute.StoragePool("test-storage-pool-basic", new()
///     {
///         Name = "storage-pool-basic",
///         PoolProvisionedCapacityGb = "10240",
///         PoolProvisionedThroughput = "100",
///         StoragePoolType = "hyperdisk-throughput",
///         Zone = "us-central1-a",
///         Labels =
///         {
///             { "environment", "test" },
///             { "purpose", "storage-pool-testing" },
///             { "team", "infrastructure" },
///             { "cost_center", "engineering" },
///         },
///         DeletionProtection = false,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewStoragePool(ctx, "test-storage-pool-basic", &compute.StoragePoolArgs{
/// 			Name:                      pulumi.String("storage-pool-basic"),
/// 			PoolProvisionedCapacityGb: pulumi.String("10240"),
/// 			PoolProvisionedThroughput: pulumi.String("100"),
/// 			StoragePoolType:           pulumi.String("hyperdisk-throughput"),
/// 			Zone:                      pulumi.String("us-central1-a"),
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("test"),
/// 				"purpose":     pulumi.String("storage-pool-testing"),
/// 				"team":        pulumi.String("infrastructure"),
/// 				"cost_center": pulumi.String("engineering"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_compute_storagepool" "test-storage-pool-basic" {
///   name                         = "storage-pool-basic"
///   pool_provisioned_capacity_gb = "10240"
///   pool_provisioned_throughput  = 100
///   storage_pool_type            = "hyperdisk-throughput"
///   zone                         = "us-central1-a"
///   labels = {
///     "environment" = "test"
///     "purpose"     = "storage-pool-testing"
///     "team"        = "infrastructure"
///     "cost_center" = "engineering"
///   }
///   deletion_protection = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.StoragePool;
/// import com.pulumi.gcp.compute.StoragePoolArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var test_storage_pool_basic = new StoragePool("test-storage-pool-basic", StoragePoolArgs.builder()
///             .name("storage-pool-basic")
///             .poolProvisionedCapacityGb("10240")
///             .poolProvisionedThroughput("100")
///             .storagePoolType("hyperdisk-throughput")
///             .zone("us-central1-a")
///             .labels(Map.ofEntries(
///                 Map.entry("environment", "test"),
///                 Map.entry("purpose", "storage-pool-testing"),
///                 Map.entry("team", "infrastructure"),
///                 Map.entry("cost_center", "engineering")
///             ))
///             .deletionProtection(false)
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-storage-pool-basic:
///     type: gcp:compute:StoragePool
///     properties:
///       name: storage-pool-basic
///       poolProvisionedCapacityGb: '10240'
///       poolProvisionedThroughput: 100
///       storagePoolType: hyperdisk-throughput
///       zone: us-central1-a
///       labels:
///         environment: test
///         purpose: storage-pool-testing
///         team: infrastructure
///         cost_center: engineering
///       deletionProtection: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Compute Storage Pool Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const balanced = gcp.compute.getStoragePoolTypes({
///     zone: "us-central1-a",
///     storagePoolType: "hyperdisk-balanced",
/// });
/// const test_storage_pool_full = new gcp.compute.StoragePool("test-storage-pool-full", {
///     name: "storage-pool-full",
///     description: "Hyperdisk Balanced storage pool",
///     capacityProvisioningType: "STANDARD",
///     poolProvisionedCapacityGb: "10240",
///     performanceProvisioningType: "STANDARD",
///     poolProvisionedIops: "10000",
///     poolProvisionedThroughput: "1024",
///     storagePoolType: balanced.then(balanced => balanced.selfLink),
///     labels: {
///         environment: "test",
///         purpose: "storage-pool-testing",
///         team: "infrastructure",
///         cost_center: "engineering",
///     },
///     deletionProtection: false,
///     zone: "us-central1-a",
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// balanced = gcp.compute.get_storage_pool_types(zone="us-central1-a",
///     storage_pool_type="hyperdisk-balanced")
/// test_storage_pool_full = gcp.compute.StoragePool("test-storage-pool-full",
///     name="storage-pool-full",
///     description="Hyperdisk Balanced storage pool",
///     capacity_provisioning_type="STANDARD",
///     pool_provisioned_capacity_gb="10240",
///     performance_provisioning_type="STANDARD",
///     pool_provisioned_iops="10000",
///     pool_provisioned_throughput="1024",
///     storage_pool_type=balanced.self_link,
///     labels={
///         "environment": "test",
///         "purpose": "storage-pool-testing",
///         "team": "infrastructure",
///         "cost_center": "engineering",
///     },
///     deletion_protection=False,
///     zone="us-central1-a")
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var balanced = Gcp.Compute.GetStoragePoolTypes.Invoke(new()
///     {
///         Zone = "us-central1-a",
///         StoragePoolType = "hyperdisk-balanced",
///     });
///
///     var test_storage_pool_full = new Gcp.Compute.StoragePool("test-storage-pool-full", new()
///     {
///         Name = "storage-pool-full",
///         Description = "Hyperdisk Balanced storage pool",
///         CapacityProvisioningType = "STANDARD",
///         PoolProvisionedCapacityGb = "10240",
///         PerformanceProvisioningType = "STANDARD",
///         PoolProvisionedIops = "10000",
///         PoolProvisionedThroughput = "1024",
///         StoragePoolType = balanced.Apply(getStoragePoolTypesResult => getStoragePoolTypesResult.SelfLink),
///         Labels =
///         {
///             { "environment", "test" },
///             { "purpose", "storage-pool-testing" },
///             { "team", "infrastructure" },
///             { "cost_center", "engineering" },
///         },
///         DeletionProtection = false,
///         Zone = "us-central1-a",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		balanced, err := compute.GetStoragePoolTypes(ctx, &compute.GetStoragePoolTypesArgs{
/// 			Zone:            "us-central1-a",
/// 			StoragePoolType: "hyperdisk-balanced",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewStoragePool(ctx, "test-storage-pool-full", &compute.StoragePoolArgs{
/// 			Name:                        pulumi.String("storage-pool-full"),
/// 			Description:                 pulumi.String("Hyperdisk Balanced storage pool"),
/// 			CapacityProvisioningType:    pulumi.String("STANDARD"),
/// 			PoolProvisionedCapacityGb:   pulumi.String("10240"),
/// 			PerformanceProvisioningType: pulumi.String("STANDARD"),
/// 			PoolProvisionedIops:         pulumi.String("10000"),
/// 			PoolProvisionedThroughput:   pulumi.String("1024"),
/// 			StoragePoolType:             pulumi.String(balanced.SelfLink),
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("test"),
/// 				"purpose":     pulumi.String("storage-pool-testing"),
/// 				"team":        pulumi.String("infrastructure"),
/// 				"cost_center": pulumi.String("engineering"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Zone:               pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// data "gcp_organizations_getproject" "project" {
/// }
/// data "gcp_compute_getstoragepooltypes" "balanced" {
///   zone              = "us-central1-a"
///   storage_pool_type = "hyperdisk-balanced"
/// }
///
/// resource "gcp_compute_storagepool" "test-storage-pool-full" {
///   name                          = "storage-pool-full"
///   description                   = "Hyperdisk Balanced storage pool"
///   capacity_provisioning_type    = "STANDARD"
///   pool_provisioned_capacity_gb  = "10240"
///   performance_provisioning_type = "STANDARD"
///   pool_provisioned_iops         = "10000"
///   pool_provisioned_throughput   = "1024"
///   storage_pool_type             = data.gcp_compute_getstoragepooltypes.balanced.self_link
///   labels = {
///     "environment" = "test"
///     "purpose"     = "storage-pool-testing"
///     "team"        = "infrastructure"
///     "cost_center" = "engineering"
///   }
///   deletion_protection = false
///   zone                = "us-central1-a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetStoragePoolTypesArgs;
/// import com.pulumi.gcp.compute.StoragePool;
/// import com.pulumi.gcp.compute.StoragePoolArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         final var balanced = ComputeFunctions.getStoragePoolTypes(GetStoragePoolTypesArgs.builder()
///             .zone("us-central1-a")
///             .storagePoolType("hyperdisk-balanced")
///             .build());
///
///         var test_storage_pool_full = new StoragePool("test-storage-pool-full", StoragePoolArgs.builder()
///             .name("storage-pool-full")
///             .description("Hyperdisk Balanced storage pool")
///             .capacityProvisioningType("STANDARD")
///             .poolProvisionedCapacityGb("10240")
///             .performanceProvisioningType("STANDARD")
///             .poolProvisionedIops("10000")
///             .poolProvisionedThroughput("1024")
///             .storagePoolType(balanced.selfLink())
///             .labels(Map.ofEntries(
///                 Map.entry("environment", "test"),
///                 Map.entry("purpose", "storage-pool-testing"),
///                 Map.entry("team", "infrastructure"),
///                 Map.entry("cost_center", "engineering")
///             ))
///             .deletionProtection(false)
///             .zone("us-central1-a")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-storage-pool-full:
///     type: gcp:compute:StoragePool
///     properties:
///       name: storage-pool-full
///       description: Hyperdisk Balanced storage pool
///       capacityProvisioningType: STANDARD
///       poolProvisionedCapacityGb: '10240'
///       performanceProvisioningType: STANDARD
///       poolProvisionedIops: '10000'
///       poolProvisionedThroughput: '1024'
///       storagePoolType: ${balanced.selfLink}
///       labels:
///         environment: test
///         purpose: storage-pool-testing
///         team: infrastructure
///         cost_center: engineering
///       deletionProtection: false
///       zone: us-central1-a
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
///   balanced:
///     fn::invoke:
///       function: gcp:compute:getStoragePoolTypes
///       arguments:
///         zone: us-central1-a
///         storagePoolType: hyperdisk-balanced
/// ```
///
///
/// ## Import
///
/// StoragePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/storagePools/{{name}}`
/// * `{{project}}/{{zone}}/{{name}}`
/// * `{{zone}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, StoragePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/storagePool:StoragePool default projects/{{project}}/zones/{{zone}}/storagePools/{{name}}
/// $ pulumi import gcp:compute/storagePool:StoragePool default {{project}}/{{zone}}/{{name}}
/// $ pulumi import gcp:compute/storagePool:StoragePool default {{zone}}/{{name}}
/// $ pulumi import gcp:compute/storagePool:StoragePool default {{name}}
/// ```
class StoragePool extends pulumi.CustomResource {
  /// Provisioning type of the byte capacity of the pool.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  late final pulumi.Output<String> capacityProvisioningType;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether Terraform will be prevented from destroying the StoragePool.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the StoragePool will fail.
  /// When the field is set to false, deleting the StoragePool is allowed.
  late final pulumi.Output<bool?> deletionProtection;
  /// A description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Type of the resource.
  late final pulumi.Output<String> kind;
  /// The fingerprint used for optimistic locking of this resource.
  /// Used internally during updates.
  late final pulumi.Output<String> labelFingerprint;
  /// Labels to apply to this storage pool. These can be later modified by the setLabels method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?`
  /// which means the first character must be a lowercase letter,
  /// and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<StoragePoolParams?> params;
  /// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  late final pulumi.Output<String> performanceProvisioningType;
  /// Size, in GiB, of the storage pool. For more information about the size limits,
  /// see https://cloud.google.com/compute/docs/disks/storage-pools.
  late final pulumi.Output<String> poolProvisionedCapacityGb;
  /// Provisioned IOPS of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced`.
  late final pulumi.Output<String?> poolProvisionedIops;
  /// Provisioned throughput, in MB/s, of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced` or `hyperdisk-throughput`.
  late final pulumi.Output<String> poolProvisionedThroughput;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Status information for the storage pool resource.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> resourceStatuses;
  /// Status information for the storage pool resource.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;
  /// Type of the storage pool. For example, the
  /// following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone}/storagePoolTypes/hyperdisk-balanced`
  /// * `hyperdisk-throughput`
  late final pulumi.Output<String> storagePoolType;
  /// A reference to the zone where the storage pool resides.
  late final pulumi.Output<String> zone;

  /// Creates a new [StoragePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StoragePool]. {@macro pulumi_compute_storage_pool_storage_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StoragePool(
    String name, {
    StoragePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/storagePool:StoragePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    capacityProvisioningType = registerOutput<String>('capacityProvisioningType');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    kind = registerOutput<String>('kind');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    params = registerOutput<StoragePoolParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StoragePoolParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    performanceProvisioningType = registerOutput<String>('performanceProvisioningType');
    poolProvisionedCapacityGb = registerOutput<String>('poolProvisionedCapacityGb');
    poolProvisionedIops = registerOutput<String?>('poolProvisionedIops');
    poolProvisionedThroughput = registerOutput<String>('poolProvisionedThroughput');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    resourceStatuses = registerOutput<List<Map<String, dynamic>>>('resourceStatuses');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    storagePoolType = registerOutput<String>('storagePoolType');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [StoragePool] resource's state with the given [name] and [id].
  static StoragePool get(
    String name,
    pulumi.Input<String> id, {
    StoragePoolState? state,
  }) {
    return StoragePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StoragePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/storagePool:StoragePool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    capacityProvisioningType = registerOutput<String>('capacityProvisioningType');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    kind = registerOutput<String>('kind');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    params = registerOutput<StoragePoolParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StoragePoolParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    performanceProvisioningType = registerOutput<String>('performanceProvisioningType');
    poolProvisionedCapacityGb = registerOutput<String>('poolProvisionedCapacityGb');
    poolProvisionedIops = registerOutput<String?>('poolProvisionedIops');
    poolProvisionedThroughput = registerOutput<String>('poolProvisionedThroughput');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    resourceStatuses = registerOutput<List<Map<String, dynamic>>>('resourceStatuses');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    storagePoolType = registerOutput<String>('storagePoolType');
    zone = registerOutput<String>('zone');
  }
}
