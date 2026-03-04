import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_args.dart';
import 'failover_group_read_only_endpoint_response.dart';
import 'failover_group_read_write_endpoint_response.dart';

/// A failover group.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var failoverGroup = new AzureNative.Sql.FailoverGroup("failoverGroup", new()
///     {
///         Databases = new[]
///         {
///             "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1",
///             "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2",
///         },
///         FailoverGroupName = "failover-group-test-3",
///         PartnerServers = new[]
///         {
///             new AzureNative.Sql.Inputs.PartnerInfoArgs
///             {
///                 Id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server",
///             },
///         },
///         ReadOnlyEndpoint = new AzureNative.Sql.Inputs.FailoverGroupReadOnlyEndpointArgs
///         {
///             FailoverPolicy = AzureNative.Sql.ReadOnlyEndpointFailoverPolicy.Disabled,
///         },
///         ReadWriteEndpoint = new AzureNative.Sql.Inputs.FailoverGroupReadWriteEndpointArgs
///         {
///             FailoverPolicy = AzureNative.Sql.ReadWriteEndpointFailoverPolicy.Automatic,
///             FailoverWithDataLossGracePeriodMinutes = 480,
///         },
///         ResourceGroupName = "Default",
///         ServerName = "failover-group-primary-server",
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
/// 		_, err := sql.NewFailoverGroup(ctx, "failoverGroup", &sql.FailoverGroupArgs{
/// 			Databases: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1"),
/// 				pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2"),
/// 			},
/// 			FailoverGroupName: pulumi.String("failover-group-test-3"),
/// 			PartnerServers: sql.PartnerInfoArray{
/// 				&sql.PartnerInfoArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server"),
/// 				},
/// 			},
/// 			ReadOnlyEndpoint: &sql.FailoverGroupReadOnlyEndpointArgs{
/// 				FailoverPolicy: pulumi.String(sql.ReadOnlyEndpointFailoverPolicyDisabled),
/// 			},
/// 			ReadWriteEndpoint: &sql.FailoverGroupReadWriteEndpointArgs{
/// 				FailoverPolicy:                         pulumi.String(sql.ReadWriteEndpointFailoverPolicyAutomatic),
/// 				FailoverWithDataLossGracePeriodMinutes: pulumi.Int(480),
/// 			},
/// 			ResourceGroupName: pulumi.String("Default"),
/// 			ServerName:        pulumi.String("failover-group-primary-server"),
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
/// import com.pulumi.azurenative.sql.FailoverGroup;
/// import com.pulumi.azurenative.sql.FailoverGroupArgs;
/// import com.pulumi.azurenative.sql.inputs.PartnerInfoArgs;
/// import com.pulumi.azurenative.sql.inputs.FailoverGroupReadOnlyEndpointArgs;
/// import com.pulumi.azurenative.sql.inputs.FailoverGroupReadWriteEndpointArgs;
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
///         var failoverGroup = new FailoverGroup("failoverGroup", FailoverGroupArgs.builder()
///             .databases(
///                 "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1",
///                 "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2")
///             .failoverGroupName("failover-group-test-3")
///             .partnerServers(PartnerInfoArgs.builder()
///                 .id("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server")
///                 .build())
///             .readOnlyEndpoint(FailoverGroupReadOnlyEndpointArgs.builder()
///                 .failoverPolicy("Disabled")
///                 .build())
///             .readWriteEndpoint(FailoverGroupReadWriteEndpointArgs.builder()
///                 .failoverPolicy("Automatic")
///                 .failoverWithDataLossGracePeriodMinutes(480)
///                 .build())
///             .resourceGroupName("Default")
///             .serverName("failover-group-primary-server")
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
/// const failoverGroup = new azure_native.sql.FailoverGroup("failoverGroup", {
///     databases: [
///         "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1",
///         "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2",
///     ],
///     failoverGroupName: "failover-group-test-3",
///     partnerServers: [{
///         id: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server",
///     }],
///     readOnlyEndpoint: {
///         failoverPolicy: azure_native.sql.ReadOnlyEndpointFailoverPolicy.Disabled,
///     },
///     readWriteEndpoint: {
///         failoverPolicy: azure_native.sql.ReadWriteEndpointFailoverPolicy.Automatic,
///         failoverWithDataLossGracePeriodMinutes: 480,
///     },
///     resourceGroupName: "Default",
///     serverName: "failover-group-primary-server",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// failover_group = azure_native.sql.FailoverGroup("failoverGroup",
///     databases=[
///         "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1",
///         "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2",
///     ],
///     failover_group_name="failover-group-test-3",
///     partner_servers=[{
///         "id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server",
///     }],
///     read_only_endpoint={
///         "failover_policy": azure_native.sql.ReadOnlyEndpointFailoverPolicy.DISABLED,
///     },
///     read_write_endpoint={
///         "failover_policy": azure_native.sql.ReadWriteEndpointFailoverPolicy.AUTOMATIC,
///         "failover_with_data_loss_grace_period_minutes": 480,
///     },
///     resource_group_name="Default",
///     server_name="failover-group-primary-server")
///
/// ```
///
/// ```yaml
/// resources:
///   failoverGroup:
///     type: azure-native:sql:FailoverGroup
///     properties:
///       databases:
///         - /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1
///         - /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2
///       failoverGroupName: failover-group-test-3
///       partnerServers:
///         - id: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server
///       readOnlyEndpoint:
///         failoverPolicy: Disabled
///       readWriteEndpoint:
///         failoverPolicy: Automatic
///         failoverWithDataLossGracePeriodMinutes: 480
///       resourceGroupName: Default
///       serverName: failover-group-primary-server
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create failover group with standby secondary database on partner server.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var failoverGroup = new AzureNative.Sql.FailoverGroup("failoverGroup", new()
///     {
///         Databases = new[]
///         {
///             "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1",
///             "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2",
///         },
///         FailoverGroupName = "failover-group-test-3",
///         PartnerServers = new[]
///         {
///             new AzureNative.Sql.Inputs.PartnerInfoArgs
///             {
///                 Id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server",
///             },
///         },
///         ReadOnlyEndpoint = new AzureNative.Sql.Inputs.FailoverGroupReadOnlyEndpointArgs
///         {
///             FailoverPolicy = AzureNative.Sql.ReadOnlyEndpointFailoverPolicy.Disabled,
///         },
///         ReadWriteEndpoint = new AzureNative.Sql.Inputs.FailoverGroupReadWriteEndpointArgs
///         {
///             FailoverPolicy = AzureNative.Sql.ReadWriteEndpointFailoverPolicy.Automatic,
///             FailoverWithDataLossGracePeriodMinutes = 480,
///         },
///         ResourceGroupName = "Default",
///         SecondaryType = AzureNative.Sql.FailoverGroupDatabasesSecondaryType.Standby,
///         ServerName = "failover-group-primary-server",
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
/// 		_, err := sql.NewFailoverGroup(ctx, "failoverGroup", &sql.FailoverGroupArgs{
/// 			Databases: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1"),
/// 				pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2"),
/// 			},
/// 			FailoverGroupName: pulumi.String("failover-group-test-3"),
/// 			PartnerServers: sql.PartnerInfoArray{
/// 				&sql.PartnerInfoArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server"),
/// 				},
/// 			},
/// 			ReadOnlyEndpoint: &sql.FailoverGroupReadOnlyEndpointArgs{
/// 				FailoverPolicy: pulumi.String(sql.ReadOnlyEndpointFailoverPolicyDisabled),
/// 			},
/// 			ReadWriteEndpoint: &sql.FailoverGroupReadWriteEndpointArgs{
/// 				FailoverPolicy:                         pulumi.String(sql.ReadWriteEndpointFailoverPolicyAutomatic),
/// 				FailoverWithDataLossGracePeriodMinutes: pulumi.Int(480),
/// 			},
/// 			ResourceGroupName: pulumi.String("Default"),
/// 			SecondaryType:     pulumi.String(sql.FailoverGroupDatabasesSecondaryTypeStandby),
/// 			ServerName:        pulumi.String("failover-group-primary-server"),
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
/// import com.pulumi.azurenative.sql.FailoverGroup;
/// import com.pulumi.azurenative.sql.FailoverGroupArgs;
/// import com.pulumi.azurenative.sql.inputs.PartnerInfoArgs;
/// import com.pulumi.azurenative.sql.inputs.FailoverGroupReadOnlyEndpointArgs;
/// import com.pulumi.azurenative.sql.inputs.FailoverGroupReadWriteEndpointArgs;
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
///         var failoverGroup = new FailoverGroup("failoverGroup", FailoverGroupArgs.builder()
///             .databases(
///                 "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1",
///                 "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2")
///             .failoverGroupName("failover-group-test-3")
///             .partnerServers(PartnerInfoArgs.builder()
///                 .id("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server")
///                 .build())
///             .readOnlyEndpoint(FailoverGroupReadOnlyEndpointArgs.builder()
///                 .failoverPolicy("Disabled")
///                 .build())
///             .readWriteEndpoint(FailoverGroupReadWriteEndpointArgs.builder()
///                 .failoverPolicy("Automatic")
///                 .failoverWithDataLossGracePeriodMinutes(480)
///                 .build())
///             .resourceGroupName("Default")
///             .secondaryType("Standby")
///             .serverName("failover-group-primary-server")
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
/// const failoverGroup = new azure_native.sql.FailoverGroup("failoverGroup", {
///     databases: [
///         "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1",
///         "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2",
///     ],
///     failoverGroupName: "failover-group-test-3",
///     partnerServers: [{
///         id: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server",
///     }],
///     readOnlyEndpoint: {
///         failoverPolicy: azure_native.sql.ReadOnlyEndpointFailoverPolicy.Disabled,
///     },
///     readWriteEndpoint: {
///         failoverPolicy: azure_native.sql.ReadWriteEndpointFailoverPolicy.Automatic,
///         failoverWithDataLossGracePeriodMinutes: 480,
///     },
///     resourceGroupName: "Default",
///     secondaryType: azure_native.sql.FailoverGroupDatabasesSecondaryType.Standby,
///     serverName: "failover-group-primary-server",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// failover_group = azure_native.sql.FailoverGroup("failoverGroup",
///     databases=[
///         "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1",
///         "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2",
///     ],
///     failover_group_name="failover-group-test-3",
///     partner_servers=[{
///         "id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server",
///     }],
///     read_only_endpoint={
///         "failover_policy": azure_native.sql.ReadOnlyEndpointFailoverPolicy.DISABLED,
///     },
///     read_write_endpoint={
///         "failover_policy": azure_native.sql.ReadWriteEndpointFailoverPolicy.AUTOMATIC,
///         "failover_with_data_loss_grace_period_minutes": 480,
///     },
///     resource_group_name="Default",
///     secondary_type=azure_native.sql.FailoverGroupDatabasesSecondaryType.STANDBY,
///     server_name="failover-group-primary-server")
///
/// ```
///
/// ```yaml
/// resources:
///   failoverGroup:
///     type: azure-native:sql:FailoverGroup
///     properties:
///       databases:
///         - /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-1
///         - /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-primary-server/databases/testdb-2
///       failoverGroupName: failover-group-test-3
///       partnerServers:
///         - id: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Sql/servers/failover-group-secondary-server
///       readOnlyEndpoint:
///         failoverPolicy: Disabled
///       readWriteEndpoint:
///         failoverPolicy: Automatic
///         failoverWithDataLossGracePeriodMinutes: 480
///       resourceGroupName: Default
///       secondaryType: Standby
///       serverName: failover-group-primary-server
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
/// $ pulumi import azure-native:sql:FailoverGroup failover-group-test-3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/failoverGroups/{failoverGroupName}
/// ```
class FailoverGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// List of databases in the failover group.
  late final pulumi.Output<List<String>?> databases;

  /// Resource location.
  late final pulumi.Output<String> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// List of partner server information for the failover group.
  late final pulumi.Output<List<Map<String, dynamic>>> partnerServers;

  /// Read-only endpoint of the failover group instance.
  late final pulumi.Output<FailoverGroupReadOnlyEndpointResponse?>
  readOnlyEndpoint;

  /// Read-write endpoint of the failover group instance.
  late final pulumi.Output<FailoverGroupReadWriteEndpointResponse>
  readWriteEndpoint;

  /// Local replication role of the failover group instance.
  late final pulumi.Output<String> replicationRole;

  /// Replication state of the failover group instance.
  late final pulumi.Output<String> replicationState;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [FailoverGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FailoverGroup]. {@macro pulumi_sql_failover_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FailoverGroup(
    String name, {
    FailoverGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:FailoverGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databases = registerOutput<List<String>?>('databases');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partnerServers = registerOutput<List<Map<String, dynamic>>>(
      'partnerServers',
    );
    readOnlyEndpoint = registerOutput<FailoverGroupReadOnlyEndpointResponse?>(
      'readOnlyEndpoint',
    );
    readWriteEndpoint = registerOutput<FailoverGroupReadWriteEndpointResponse>(
      'readWriteEndpoint',
    );
    replicationRole = registerOutput<String>('replicationRole');
    replicationState = registerOutput<String>('replicationState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
