import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_failover_group_args.dart';
import 'instance_failover_group_read_only_endpoint_response.dart';
import 'instance_failover_group_read_write_endpoint_response.dart';

/// An instance failover group.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create failover group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instanceFailoverGroup = new AzureNative.Sql.InstanceFailoverGroup("instanceFailoverGroup", new()
///     {
///         FailoverGroupName = "failover-group-test-3",
///         LocationName = "Japan East",
///         ManagedInstancePairs = new[]
///         {
///             new AzureNative.Sql.Inputs.ManagedInstancePairInfoArgs
///             {
///                 PartnerManagedInstanceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-secondary-mngdInstance",
///                 PrimaryManagedInstanceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-primary-mngdInstance",
///             },
///         },
///         PartnerRegions = new[]
///         {
///             new AzureNative.Sql.Inputs.PartnerRegionInfoArgs
///             {
///                 Location = "Japan West",
///             },
///         },
///         ReadOnlyEndpoint = new AzureNative.Sql.Inputs.InstanceFailoverGroupReadOnlyEndpointArgs
///         {
///             FailoverPolicy = AzureNative.Sql.ReadOnlyEndpointFailoverPolicy.Disabled,
///         },
///         ReadWriteEndpoint = new AzureNative.Sql.Inputs.InstanceFailoverGroupReadWriteEndpointArgs
///         {
///             FailoverPolicy = AzureNative.Sql.ReadWriteEndpointFailoverPolicy.Automatic,
///             FailoverWithDataLossGracePeriodMinutes = 480,
///         },
///         ResourceGroupName = "Default",
///         SecondaryType = AzureNative.Sql.SecondaryInstanceType.Geo,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewInstanceFailoverGroup(ctx, "instanceFailoverGroup", &sql.InstanceFailoverGroupArgs{
/// 			FailoverGroupName: pulumi.String("failover-group-test-3"),
/// 			LocationName:      pulumi.String("Japan East"),
/// 			ManagedInstancePairs: sql.ManagedInstancePairInfoArray{
/// 				&sql.ManagedInstancePairInfoArgs{
/// 					PartnerManagedInstanceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-secondary-mngdInstance"),
/// 					PrimaryManagedInstanceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-primary-mngdInstance"),
/// 				},
/// 			},
/// 			PartnerRegions: sql.PartnerRegionInfoArray{
/// 				&sql.PartnerRegionInfoArgs{
/// 					Location: pulumi.String("Japan West"),
/// 				},
/// 			},
/// 			ReadOnlyEndpoint: &sql.InstanceFailoverGroupReadOnlyEndpointArgs{
/// 				FailoverPolicy: pulumi.String(sql.ReadOnlyEndpointFailoverPolicyDisabled),
/// 			},
/// 			ReadWriteEndpoint: &sql.InstanceFailoverGroupReadWriteEndpointArgs{
/// 				FailoverPolicy:                         pulumi.String(sql.ReadWriteEndpointFailoverPolicyAutomatic),
/// 				FailoverWithDataLossGracePeriodMinutes: pulumi.Int(480),
/// 			},
/// 			ResourceGroupName: pulumi.String("Default"),
/// 			SecondaryType:     pulumi.String(sql.SecondaryInstanceTypeGeo),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.InstanceFailoverGroup;
/// import com.pulumi.azurenative.sql.InstanceFailoverGroupArgs;
/// import com.pulumi.azurenative.sql.inputs.ManagedInstancePairInfoArgs;
/// import com.pulumi.azurenative.sql.inputs.PartnerRegionInfoArgs;
/// import com.pulumi.azurenative.sql.inputs.InstanceFailoverGroupReadOnlyEndpointArgs;
/// import com.pulumi.azurenative.sql.inputs.InstanceFailoverGroupReadWriteEndpointArgs;
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
///         var instanceFailoverGroup = new InstanceFailoverGroup("instanceFailoverGroup", InstanceFailoverGroupArgs.builder()
///             .failoverGroupName("failover-group-test-3")
///             .locationName("Japan East")
///             .managedInstancePairs(ManagedInstancePairInfoArgs.builder()
///                 .partnerManagedInstanceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-secondary-mngdInstance")
///                 .primaryManagedInstanceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-primary-mngdInstance")
///                 .build())
///             .partnerRegions(PartnerRegionInfoArgs.builder()
///                 .location("Japan West")
///                 .build())
///             .readOnlyEndpoint(InstanceFailoverGroupReadOnlyEndpointArgs.builder()
///                 .failoverPolicy("Disabled")
///                 .build())
///             .readWriteEndpoint(InstanceFailoverGroupReadWriteEndpointArgs.builder()
///                 .failoverPolicy("Automatic")
///                 .failoverWithDataLossGracePeriodMinutes(480)
///                 .build())
///             .resourceGroupName("Default")
///             .secondaryType("Geo")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const instanceFailoverGroup = new azure_native.sql.InstanceFailoverGroup("instanceFailoverGroup", {
///     failoverGroupName: "failover-group-test-3",
///     locationName: "Japan East",
///     managedInstancePairs: [{
///         partnerManagedInstanceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-secondary-mngdInstance",
///         primaryManagedInstanceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-primary-mngdInstance",
///     }],
///     partnerRegions: [{
///         location: "Japan West",
///     }],
///     readOnlyEndpoint: {
///         failoverPolicy: azure_native.sql.ReadOnlyEndpointFailoverPolicy.Disabled,
///     },
///     readWriteEndpoint: {
///         failoverPolicy: azure_native.sql.ReadWriteEndpointFailoverPolicy.Automatic,
///         failoverWithDataLossGracePeriodMinutes: 480,
///     },
///     resourceGroupName: "Default",
///     secondaryType: azure_native.sql.SecondaryInstanceType.Geo,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// instance_failover_group = azure_native.sql.InstanceFailoverGroup("instanceFailoverGroup",
///     failover_group_name="failover-group-test-3",
///     location_name="Japan East",
///     managed_instance_pairs=[{
///         "partner_managed_instance_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-secondary-mngdInstance",
///         "primary_managed_instance_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-primary-mngdInstance",
///     }],
///     partner_regions=[{
///         "location": "Japan West",
///     }],
///     read_only_endpoint={
///         "failover_policy": azure_native.sql.ReadOnlyEndpointFailoverPolicy.DISABLED,
///     },
///     read_write_endpoint={
///         "failover_policy": azure_native.sql.ReadWriteEndpointFailoverPolicy.AUTOMATIC,
///         "failover_with_data_loss_grace_period_minutes": 480,
///     },
///     resource_group_name="Default",
///     secondary_type=azure_native.sql.SecondaryInstanceType.GEO)
///
/// ```
///
/// ```yaml
/// resources:
///   instanceFailoverGroup:
///     type: azure-native:sql:InstanceFailoverGroup
///     properties:
///       failoverGroupName: failover-group-test-3
///       locationName: Japan East
///       managedInstancePairs:
///         - partnerManagedInstanceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-secondary-mngdInstance
///           primaryManagedInstanceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/managedInstances/failover-group-primary-mngdInstance
///       partnerRegions:
///         - location: Japan West
///       readOnlyEndpoint:
///         failoverPolicy: Disabled
///       readWriteEndpoint:
///         failoverPolicy: Automatic
///         failoverWithDataLossGracePeriodMinutes: 480
///       resourceGroupName: Default
///       secondaryType: Geo
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:sql:InstanceFailoverGroup failover-group-test-3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/locations/{locationName}/instanceFailoverGroups/{failoverGroupName}
/// ```
class InstanceFailoverGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// List of managed instance pairs in the failover group.
  late final pulumi.Output<List<Map<String, dynamic>>> managedInstancePairs;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Partner region information for the failover group.
  late final pulumi.Output<List<Map<String, dynamic>>> partnerRegions;

  /// Read-only endpoint of the failover group instance.
  late final pulumi.Output<InstanceFailoverGroupReadOnlyEndpointResponse?>
  readOnlyEndpoint;

  /// Read-write endpoint of the failover group instance.
  late final pulumi.Output<InstanceFailoverGroupReadWriteEndpointResponse>
  readWriteEndpoint;

  /// Local replication role of the failover group instance.
  late final pulumi.Output<String> replicationRole;

  /// Replication state of the failover group instance.
  late final pulumi.Output<String> replicationState;

  /// Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
  late final pulumi.Output<String?> secondaryType;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [InstanceFailoverGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceFailoverGroup]. {@macro pulumi_sql_instance_failover_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceFailoverGroup(
    String name, {
    InstanceFailoverGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:InstanceFailoverGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    managedInstancePairs = registerOutput<List<Map<String, dynamic>>>(
      'managedInstancePairs',
    );
    this.name = registerOutput<String>('name');
    partnerRegions = registerOutput<List<Map<String, dynamic>>>(
      'partnerRegions',
    );
    readOnlyEndpoint =
        registerOutput<InstanceFailoverGroupReadOnlyEndpointResponse?>(
          'readOnlyEndpoint',
        );
    readWriteEndpoint =
        registerOutput<InstanceFailoverGroupReadWriteEndpointResponse>(
          'readWriteEndpoint',
        );
    replicationRole = registerOutput<String>('replicationRole');
    replicationState = registerOutput<String>('replicationState');
    secondaryType = registerOutput<String?>('secondaryType');
    type = registerOutput<String>('type');
  }
}
