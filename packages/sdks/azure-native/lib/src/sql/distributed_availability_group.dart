import 'package:pulumi/pulumi.dart' as pulumi;
import 'distributed_availability_group_args.dart';

/// Distributed availability group between box and Sql Managed Instance.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a distributed availability group with all properties.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var distributedAvailabilityGroup = new AzureNative.Sql.DistributedAvailabilityGroup("distributedAvailabilityGroup", new()
///     {
///         Databases = new[]
///         {
///             new AzureNative.Sql.Inputs.DistributedAvailabilityGroupDatabaseArgs
///             {
///                 DatabaseName = "testdb",
///             },
///         },
///         DistributedAvailabilityGroupName = "dag",
///         FailoverMode = AzureNative.Sql.FailoverModeType.None,
///         InstanceAvailabilityGroupName = "testcl",
///         InstanceLinkRole = AzureNative.Sql.LinkRole.Primary,
///         ManagedInstanceName = "testcl",
///         PartnerAvailabilityGroupName = "BoxLocalAg1",
///         PartnerEndpoint = "TCP://SERVER:7022",
///         ResourceGroupName = "testrg",
///         SeedingMode = AzureNative.Sql.SeedingModeType.Automatic,
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
/// 		_, err := sql.NewDistributedAvailabilityGroup(ctx, "distributedAvailabilityGroup", &sql.DistributedAvailabilityGroupArgs{
/// 			Databases: sql.DistributedAvailabilityGroupDatabaseArray{
/// 				&sql.DistributedAvailabilityGroupDatabaseArgs{
/// 					DatabaseName: pulumi.String("testdb"),
/// 				},
/// 			},
/// 			DistributedAvailabilityGroupName: pulumi.String("dag"),
/// 			FailoverMode:                     pulumi.String(sql.FailoverModeTypeNone),
/// 			InstanceAvailabilityGroupName:    pulumi.String("testcl"),
/// 			InstanceLinkRole:                 pulumi.String(sql.LinkRolePrimary),
/// 			ManagedInstanceName:              pulumi.String("testcl"),
/// 			PartnerAvailabilityGroupName:     pulumi.String("BoxLocalAg1"),
/// 			PartnerEndpoint:                  pulumi.String("TCP://SERVER:7022"),
/// 			ResourceGroupName:                pulumi.String("testrg"),
/// 			SeedingMode:                      pulumi.String(sql.SeedingModeTypeAutomatic),
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
/// import com.pulumi.azurenative.sql.DistributedAvailabilityGroup;
/// import com.pulumi.azurenative.sql.DistributedAvailabilityGroupArgs;
/// import com.pulumi.azurenative.sql.inputs.DistributedAvailabilityGroupDatabaseArgs;
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
///         var distributedAvailabilityGroup = new DistributedAvailabilityGroup("distributedAvailabilityGroup", DistributedAvailabilityGroupArgs.builder()
///             .databases(DistributedAvailabilityGroupDatabaseArgs.builder()
///                 .databaseName("testdb")
///                 .build())
///             .distributedAvailabilityGroupName("dag")
///             .failoverMode("None")
///             .instanceAvailabilityGroupName("testcl")
///             .instanceLinkRole("Primary")
///             .managedInstanceName("testcl")
///             .partnerAvailabilityGroupName("BoxLocalAg1")
///             .partnerEndpoint("TCP://SERVER:7022")
///             .resourceGroupName("testrg")
///             .seedingMode("Automatic")
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
/// const distributedAvailabilityGroup = new azure_native.sql.DistributedAvailabilityGroup("distributedAvailabilityGroup", {
///     databases: [{
///         databaseName: "testdb",
///     }],
///     distributedAvailabilityGroupName: "dag",
///     failoverMode: azure_native.sql.FailoverModeType.None,
///     instanceAvailabilityGroupName: "testcl",
///     instanceLinkRole: azure_native.sql.LinkRole.Primary,
///     managedInstanceName: "testcl",
///     partnerAvailabilityGroupName: "BoxLocalAg1",
///     partnerEndpoint: "TCP://SERVER:7022",
///     resourceGroupName: "testrg",
///     seedingMode: azure_native.sql.SeedingModeType.Automatic,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// distributed_availability_group = azure_native.sql.DistributedAvailabilityGroup("distributedAvailabilityGroup",
///     databases=[{
///         "database_name": "testdb",
///     }],
///     distributed_availability_group_name="dag",
///     failover_mode=azure_native.sql.FailoverModeType.NONE,
///     instance_availability_group_name="testcl",
///     instance_link_role=azure_native.sql.LinkRole.PRIMARY,
///     managed_instance_name="testcl",
///     partner_availability_group_name="BoxLocalAg1",
///     partner_endpoint="TCP://SERVER:7022",
///     resource_group_name="testrg",
///     seeding_mode=azure_native.sql.SeedingModeType.AUTOMATIC)
///
/// ```
///
/// ```yaml
/// resources:
///   distributedAvailabilityGroup:
///     type: azure-native:sql:DistributedAvailabilityGroup
///     properties:
///       databases:
///         - databaseName: testdb
///       distributedAvailabilityGroupName: dag
///       failoverMode: None
///       instanceAvailabilityGroupName: testcl
///       instanceLinkRole: Primary
///       managedInstanceName: testcl
///       partnerAvailabilityGroupName: BoxLocalAg1
///       partnerEndpoint: TCP://SERVER:7022
///       resourceGroupName: testrg
///       seedingMode: Automatic
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a distributed availability group with minimal properties.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var distributedAvailabilityGroup = new AzureNative.Sql.DistributedAvailabilityGroup("distributedAvailabilityGroup", new()
///     {
///         Databases = new[]
///         {
///             new AzureNative.Sql.Inputs.DistributedAvailabilityGroupDatabaseArgs
///             {
///                 DatabaseName = "testdb",
///             },
///         },
///         DistributedAvailabilityGroupName = "dag",
///         InstanceAvailabilityGroupName = "testcl",
///         ManagedInstanceName = "testcl",
///         PartnerAvailabilityGroupName = "BoxLocalAg1",
///         PartnerEndpoint = "TCP://SERVER:7022",
///         ResourceGroupName = "testrg",
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
/// 		_, err := sql.NewDistributedAvailabilityGroup(ctx, "distributedAvailabilityGroup", &sql.DistributedAvailabilityGroupArgs{
/// 			Databases: sql.DistributedAvailabilityGroupDatabaseArray{
/// 				&sql.DistributedAvailabilityGroupDatabaseArgs{
/// 					DatabaseName: pulumi.String("testdb"),
/// 				},
/// 			},
/// 			DistributedAvailabilityGroupName: pulumi.String("dag"),
/// 			InstanceAvailabilityGroupName:    pulumi.String("testcl"),
/// 			ManagedInstanceName:              pulumi.String("testcl"),
/// 			PartnerAvailabilityGroupName:     pulumi.String("BoxLocalAg1"),
/// 			PartnerEndpoint:                  pulumi.String("TCP://SERVER:7022"),
/// 			ResourceGroupName:                pulumi.String("testrg"),
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
/// import com.pulumi.azurenative.sql.DistributedAvailabilityGroup;
/// import com.pulumi.azurenative.sql.DistributedAvailabilityGroupArgs;
/// import com.pulumi.azurenative.sql.inputs.DistributedAvailabilityGroupDatabaseArgs;
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
///         var distributedAvailabilityGroup = new DistributedAvailabilityGroup("distributedAvailabilityGroup", DistributedAvailabilityGroupArgs.builder()
///             .databases(DistributedAvailabilityGroupDatabaseArgs.builder()
///                 .databaseName("testdb")
///                 .build())
///             .distributedAvailabilityGroupName("dag")
///             .instanceAvailabilityGroupName("testcl")
///             .managedInstanceName("testcl")
///             .partnerAvailabilityGroupName("BoxLocalAg1")
///             .partnerEndpoint("TCP://SERVER:7022")
///             .resourceGroupName("testrg")
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
/// const distributedAvailabilityGroup = new azure_native.sql.DistributedAvailabilityGroup("distributedAvailabilityGroup", {
///     databases: [{
///         databaseName: "testdb",
///     }],
///     distributedAvailabilityGroupName: "dag",
///     instanceAvailabilityGroupName: "testcl",
///     managedInstanceName: "testcl",
///     partnerAvailabilityGroupName: "BoxLocalAg1",
///     partnerEndpoint: "TCP://SERVER:7022",
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// distributed_availability_group = azure_native.sql.DistributedAvailabilityGroup("distributedAvailabilityGroup",
///     databases=[{
///         "database_name": "testdb",
///     }],
///     distributed_availability_group_name="dag",
///     instance_availability_group_name="testcl",
///     managed_instance_name="testcl",
///     partner_availability_group_name="BoxLocalAg1",
///     partner_endpoint="TCP://SERVER:7022",
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   distributedAvailabilityGroup:
///     type: azure-native:sql:DistributedAvailabilityGroup
///     properties:
///       databases:
///         - databaseName: testdb
///       distributedAvailabilityGroupName: dag
///       instanceAvailabilityGroupName: testcl
///       managedInstanceName: testcl
///       partnerAvailabilityGroupName: BoxLocalAg1
///       partnerEndpoint: TCP://SERVER:7022
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:sql:DistributedAvailabilityGroup dag /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/distributedAvailabilityGroups/{distributedAvailabilityGroupName}
/// ```
class DistributedAvailabilityGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Databases in the distributed availability group
  late final pulumi.Output<List<Map<String, dynamic>>?> databases;
  /// ID of the distributed availability group
  late final pulumi.Output<String> distributedAvailabilityGroupId;
  /// Name of the distributed availability group
  late final pulumi.Output<String> distributedAvailabilityGroupName;
  /// The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
  late final pulumi.Output<String?> failoverMode;
  /// Managed instance side availability group name
  late final pulumi.Output<String?> instanceAvailabilityGroupName;
  /// Managed instance side link role
  late final pulumi.Output<String?> instanceLinkRole;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// SQL server side availability group name
  late final pulumi.Output<String?> partnerAvailabilityGroupName;
  /// SQL server side endpoint - IP or DNS resolvable name
  late final pulumi.Output<String?> partnerEndpoint;
  /// SQL server side link role
  late final pulumi.Output<String> partnerLinkRole;
  /// Replication mode of the link
  late final pulumi.Output<String?> replicationMode;
  /// Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
  late final pulumi.Output<String?> seedingMode;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DistributedAvailabilityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DistributedAvailabilityGroup]. {@macro pulumi_sql_distributed_availability_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DistributedAvailabilityGroup(
    String name, {
    DistributedAvailabilityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:DistributedAvailabilityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databases = registerOutput<List<Map<String, dynamic>>?>('databases');
    distributedAvailabilityGroupId = registerOutput<String>('distributedAvailabilityGroupId');
    distributedAvailabilityGroupName = registerOutput<String>('distributedAvailabilityGroupName');
    failoverMode = registerOutput<String?>('failoverMode');
    instanceAvailabilityGroupName = registerOutput<String?>('instanceAvailabilityGroupName');
    instanceLinkRole = registerOutput<String?>('instanceLinkRole');
    this.name = registerOutput<String>('name');
    partnerAvailabilityGroupName = registerOutput<String?>('partnerAvailabilityGroupName');
    partnerEndpoint = registerOutput<String?>('partnerEndpoint');
    partnerLinkRole = registerOutput<String>('partnerLinkRole');
    replicationMode = registerOutput<String?>('replicationMode');
    seedingMode = registerOutput<String?>('seedingMode');
    type = registerOutput<String>('type');
  }
}
