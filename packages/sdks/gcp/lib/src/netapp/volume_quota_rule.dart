import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_quota_rule_args.dart';
import 'volume_quota_rule_state.dart';

/// QuotaRule specifies the maximum capacity a user or group can use within a volume. They can be used for creating default and individual quota rules.
///
///
/// To get more information about VolumeQuotaRule, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.volumes.quotaRules)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/volumes/overview#volume_user_and_group_quotas)
///
/// ## Example Usage
///
/// ### Netapp Volume Quota Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
///     name: "test-network",
/// });
/// const defaultStoragePool = new gcp.netapp.StoragePool("default", {
///     name: "test-pool",
///     location: "us-west2",
///     serviceLevel: "PREMIUM",
///     capacityGib: "2048",
///     network: _default.then(_default => _default.id),
/// });
/// const defaultVolume = new gcp.netapp.Volume("default", {
///     location: defaultStoragePool.location,
///     name: "test-volume",
///     capacityGib: "100",
///     shareName: "test-volume",
///     storagePool: defaultStoragePool.name,
///     protocols: ["NFSV3"],
/// });
/// const testQuotaRule = new gcp.netapp.VolumeQuotaRule("test_quota_rule", {
///     location: defaultVolume.location,
///     volumeName: defaultVolume.name,
///     type: "DEFAULT_USER_QUOTA",
///     diskLimitMib: 50,
///     name: "test-volume-quota-rule",
/// }, {
///     dependsOn: [defaultVolume],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="test-network")
/// default_storage_pool = gcp.netapp.StoragePool("default",
///     name="test-pool",
///     location="us-west2",
///     service_level="PREMIUM",
///     capacity_gib="2048",
///     network=default.id)
/// default_volume = gcp.netapp.Volume("default",
///     location=default_storage_pool.location,
///     name="test-volume",
///     capacity_gib="100",
///     share_name="test-volume",
///     storage_pool=default_storage_pool.name,
///     protocols=["NFSV3"])
/// test_quota_rule = gcp.netapp.VolumeQuotaRule("test_quota_rule",
///     location=default_volume.location,
///     volume_name=default_volume.name,
///     type="DEFAULT_USER_QUOTA",
///     disk_limit_mib=50,
///     name="test-volume-quota-rule",
///     opts = pulumi.ResourceOptions(depends_on=[default_volume]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "test-network",
///     });
///
///     var defaultStoragePool = new Gcp.Netapp.StoragePool("default", new()
///     {
///         Name = "test-pool",
///         Location = "us-west2",
///         ServiceLevel = "PREMIUM",
///         CapacityGib = "2048",
///         Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///     });
///
///     var defaultVolume = new Gcp.Netapp.Volume("default", new()
///     {
///         Location = defaultStoragePool.Location,
///         Name = "test-volume",
///         CapacityGib = "100",
///         ShareName = "test-volume",
///         StoragePool = defaultStoragePool.Name,
///         Protocols = new[]
///         {
///             "NFSV3",
///         },
///     });
///
///     var testQuotaRule = new Gcp.Netapp.VolumeQuotaRule("test_quota_rule", new()
///     {
///         Location = defaultVolume.Location,
///         VolumeName = defaultVolume.Name,
///         Type = "DEFAULT_USER_QUOTA",
///         DiskLimitMib = 50,
///         Name = "test-volume-quota-rule",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultVolume,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: pulumi.StringRef("test-network"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStoragePool, err := netapp.NewStoragePool(ctx, "default", &netapp.StoragePoolArgs{
/// 			Name:         pulumi.String("test-pool"),
/// 			Location:     pulumi.String("us-west2"),
/// 			ServiceLevel: pulumi.String("PREMIUM"),
/// 			CapacityGib:  pulumi.String("2048"),
/// 			Network:      pulumi.String(_default.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVolume, err := netapp.NewVolume(ctx, "default", &netapp.VolumeArgs{
/// 			Location:    defaultStoragePool.Location,
/// 			Name:        pulumi.String("test-volume"),
/// 			CapacityGib: pulumi.String("100"),
/// 			ShareName:   pulumi.String("test-volume"),
/// 			StoragePool: defaultStoragePool.Name,
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSV3"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeQuotaRule(ctx, "test_quota_rule", &netapp.VolumeQuotaRuleArgs{
/// 			Location:     defaultVolume.Location,
/// 			VolumeName:   defaultVolume.Name,
/// 			Type:         pulumi.String("DEFAULT_USER_QUOTA"),
/// 			DiskLimitMib: pulumi.Int(50),
/// 			Name:         pulumi.String("test-volume-quota-rule"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultVolume,
/// 		}))
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
/// data "gcp_compute_getnetwork" "default" {
///   name = "test-network"
/// }
///
/// resource "gcp_netapp_storagepool" "default" {
///   name          = "test-pool"
///   location      = "us-west2"
///   service_level = "PREMIUM"
///   capacity_gib  = 2048
///   network       = data.gcp_compute_getnetwork.default.id
/// }
/// resource "gcp_netapp_volume" "default" {
///   location     = gcp_netapp_storagepool.default.location
///   name         = "test-volume"
///   capacity_gib = 100
///   share_name   = "test-volume"
///   storage_pool = gcp_netapp_storagepool.default.name
///   protocols    = ["NFSV3"]
/// }
/// resource "gcp_netapp_volumequotarule" "test_quota_rule" {
///   depends_on     = [gcp_netapp_volume.default]
///   location       = gcp_netapp_volume.default.location
///   volume_name    = gcp_netapp_volume.default.name
///   type           = "DEFAULT_USER_QUOTA"
///   disk_limit_mib = 50
///   name           = "test-volume-quota-rule"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.netapp.StoragePool;
/// import com.pulumi.gcp.netapp.StoragePoolArgs;
/// import com.pulumi.gcp.netapp.Volume;
/// import com.pulumi.gcp.netapp.VolumeArgs;
/// import com.pulumi.gcp.netapp.VolumeQuotaRule;
/// import com.pulumi.gcp.netapp.VolumeQuotaRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("test-network")
///             .build());
///
///         var defaultStoragePool = new StoragePool("defaultStoragePool", StoragePoolArgs.builder()
///             .name("test-pool")
///             .location("us-west2")
///             .serviceLevel("PREMIUM")
///             .capacityGib("2048")
///             .network(default_.id())
///             .build());
///
///         var defaultVolume = new Volume("defaultVolume", VolumeArgs.builder()
///             .location(defaultStoragePool.location())
///             .name("test-volume")
///             .capacityGib("100")
///             .shareName("test-volume")
///             .storagePool(defaultStoragePool.name())
///             .protocols("NFSV3")
///             .build());
///
///         var testQuotaRule = new VolumeQuotaRule("testQuotaRule", VolumeQuotaRuleArgs.builder()
///             .location(defaultVolume.location())
///             .volumeName(defaultVolume.name())
///             .type("DEFAULT_USER_QUOTA")
///             .diskLimitMib(50)
///             .name("test-volume-quota-rule")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultVolume)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultStoragePool:
///     type: gcp:netapp:StoragePool
///     name: default
///     properties:
///       name: test-pool
///       location: us-west2
///       serviceLevel: PREMIUM
///       capacityGib: 2048
///       network: ${default.id}
///   defaultVolume:
///     type: gcp:netapp:Volume
///     name: default
///     properties:
///       location: ${defaultStoragePool.location}
///       name: test-volume
///       capacityGib: 100
///       shareName: test-volume
///       storagePool: ${defaultStoragePool.name}
///       protocols:
///         - NFSV3
///   testQuotaRule:
///     type: gcp:netapp:VolumeQuotaRule
///     name: test_quota_rule
///     properties:
///       location: ${defaultVolume.location}
///       volumeName: ${defaultVolume.name}
///       type: DEFAULT_USER_QUOTA
///       diskLimitMib: 50
///       name: test-volume-quota-rule
///     options:
///       dependsOn:
///         - ${defaultVolume}
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: test-network
/// ```
///
///
/// ## Import
///
/// VolumeQuotaRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/quotaRules/{{name}}`
/// * `{{project}}/{{location}}/{{volume_name}}/{{name}}`
/// * `{{location}}/{{volume_name}}/{{name}}`
///
///
/// When using the `pulumi import` command, VolumeQuotaRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeQuotaRule:VolumeQuotaRule default projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/quotaRules/{{name}}
/// $ pulumi import gcp:netapp/volumeQuotaRule:VolumeQuotaRule default {{project}}/{{location}}/{{volume_name}}/{{name}}
/// $ pulumi import gcp:netapp/volumeQuotaRule:VolumeQuotaRule default {{location}}/{{volume_name}}/{{name}}
/// ```
class VolumeQuotaRule extends pulumi.CustomResource {
  /// Create time of the quota rule. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description for the quota rule.
  late final pulumi.Output<String?> description;
  /// The maximum allowed capacity in MiB.
  late final pulumi.Output<int> diskLimitMib;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key value pairs of the quota rule. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Loction of the quotaRule. QuotaRules are child resources of volumes and live in the same location.
  late final pulumi.Output<String?> location;
  /// The resource name of the quotaRule.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The state of the quota rule. Possible Values : [STATE_UNSPECIFIED, CREATING, UPDATING, READY, DELETING, ERROR]
  late final pulumi.Output<String> state;
  /// State details of the quota rule
  late final pulumi.Output<String> stateDetails;
  /// The quota rule applies to the specified user or group.
  /// Valid targets for volumes with NFS protocol enabled:
  /// - UNIX UID for individual user quota
  /// - UNIX GID for individual group quota
  /// Valid targets for volumes with SMB protocol enabled:
  /// - Windows SID for individual user quota
  /// Leave empty for default quotas
  late final pulumi.Output<String?> target;
  /// Types of Quota Rule.
  /// Possible values are: `INDIVIDUAL_USER_QUOTA`, `INDIVIDUAL_GROUP_QUOTA`, `DEFAULT_USER_QUOTA`, `DEFAULT_GROUP_QUOTA`.
  late final pulumi.Output<String> type;
  /// Name of the volume to create the quotaRule in.
  late final pulumi.Output<String> volumeName;

  /// Creates a new [VolumeQuotaRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeQuotaRule]. {@macro pulumi_netapp_volume_quota_rule_volume_quota_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeQuotaRule(
    String name, {
    VolumeQuotaRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/volumeQuotaRule:VolumeQuotaRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskLimitMib = registerOutput<int>('diskLimitMib');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
    stateDetails = registerOutput<String>('stateDetails');
    target = registerOutput<String?>('target');
    type = registerOutput<String>('type');
    volumeName = registerOutput<String>('volumeName');
  }

  /// Gets an existing [VolumeQuotaRule] resource's state with the given [name] and [id].
  static VolumeQuotaRule get(
    String name,
    pulumi.Input<String> id, {
    VolumeQuotaRuleState? state,
  }) {
    return VolumeQuotaRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeQuotaRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/volumeQuotaRule:VolumeQuotaRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    diskLimitMib = registerOutput<int>('diskLimitMib');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    stateDetails = registerOutput<String>('stateDetails');
    target = registerOutput<String?>('target');
    type = registerOutput<String>('type');
    volumeName = registerOutput<String>('volumeName');
  }
}
