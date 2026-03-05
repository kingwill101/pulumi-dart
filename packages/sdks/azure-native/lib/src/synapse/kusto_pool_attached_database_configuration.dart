import 'package:pulumi/pulumi.dart' as pulumi;
import 'kusto_pool_attached_database_configuration_args.dart';
import 'system_data_response.dart';
import 'table_level_sharing_properties_response.dart';

/// Class representing an attached database configuration.
///
/// Uses Azure REST API version 2021-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoPoolAttachedDatabaseConfigurationsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kustoPoolAttachedDatabaseConfiguration = new AzureNative.Synapse.KustoPoolAttachedDatabaseConfiguration("kustoPoolAttachedDatabaseConfiguration", new()
///     {
///         AttachedDatabaseConfigurationName = "attachedDatabaseConfigurations1",
///         DatabaseName = "kustodatabase",
///         DefaultPrincipalsModificationKind = AzureNative.Synapse.DefaultPrincipalsModificationKind.Union,
///         KustoPoolName = "kustoclusterrptest4",
///         KustoPoolResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Synapse/Workspaces/kustorptest/KustoPools/kustoclusterrptest4",
///         Location = "westus",
///         ResourceGroupName = "kustorptest",
///         TableLevelSharingProperties = new AzureNative.Synapse.Inputs.TableLevelSharingPropertiesArgs
///         {
///             ExternalTablesToExclude = new[]
///             {
///                 "ExternalTable2",
///             },
///             ExternalTablesToInclude = new[]
///             {
///                 "ExternalTable1",
///             },
///             MaterializedViewsToExclude = new[]
///             {
///                 "MaterializedViewTable2",
///             },
///             MaterializedViewsToInclude = new[]
///             {
///                 "MaterializedViewTable1",
///             },
///             TablesToExclude = new[]
///             {
///                 "Table2",
///             },
///             TablesToInclude = new[]
///             {
///                 "Table1",
///             },
///         },
///         WorkspaceName = "kustorptest",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewKustoPoolAttachedDatabaseConfiguration(ctx, "kustoPoolAttachedDatabaseConfiguration", &synapse.KustoPoolAttachedDatabaseConfigurationArgs{
/// 			AttachedDatabaseConfigurationName: pulumi.String("attachedDatabaseConfigurations1"),
/// 			DatabaseName:                      pulumi.String("kustodatabase"),
/// 			DefaultPrincipalsModificationKind: pulumi.String(synapse.DefaultPrincipalsModificationKindUnion),
/// 			KustoPoolName:                     pulumi.String("kustoclusterrptest4"),
/// 			KustoPoolResourceId:               pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Synapse/Workspaces/kustorptest/KustoPools/kustoclusterrptest4"),
/// 			Location:                          pulumi.String("westus"),
/// 			ResourceGroupName:                 pulumi.String("kustorptest"),
/// 			TableLevelSharingProperties: &synapse.TableLevelSharingPropertiesArgs{
/// 				ExternalTablesToExclude: pulumi.StringArray{
/// 					pulumi.String("ExternalTable2"),
/// 				},
/// 				ExternalTablesToInclude: pulumi.StringArray{
/// 					pulumi.String("ExternalTable1"),
/// 				},
/// 				MaterializedViewsToExclude: pulumi.StringArray{
/// 					pulumi.String("MaterializedViewTable2"),
/// 				},
/// 				MaterializedViewsToInclude: pulumi.StringArray{
/// 					pulumi.String("MaterializedViewTable1"),
/// 				},
/// 				TablesToExclude: pulumi.StringArray{
/// 					pulumi.String("Table2"),
/// 				},
/// 				TablesToInclude: pulumi.StringArray{
/// 					pulumi.String("Table1"),
/// 				},
/// 			},
/// 			WorkspaceName: pulumi.String("kustorptest"),
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
/// import com.pulumi.azurenative.synapse.KustoPoolAttachedDatabaseConfiguration;
/// import com.pulumi.azurenative.synapse.KustoPoolAttachedDatabaseConfigurationArgs;
/// import com.pulumi.azurenative.synapse.inputs.TableLevelSharingPropertiesArgs;
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
///         var kustoPoolAttachedDatabaseConfiguration = new KustoPoolAttachedDatabaseConfiguration("kustoPoolAttachedDatabaseConfiguration", KustoPoolAttachedDatabaseConfigurationArgs.builder()
///             .attachedDatabaseConfigurationName("attachedDatabaseConfigurations1")
///             .databaseName("kustodatabase")
///             .defaultPrincipalsModificationKind("Union")
///             .kustoPoolName("kustoclusterrptest4")
///             .kustoPoolResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Synapse/Workspaces/kustorptest/KustoPools/kustoclusterrptest4")
///             .location("westus")
///             .resourceGroupName("kustorptest")
///             .tableLevelSharingProperties(TableLevelSharingPropertiesArgs.builder()
///                 .externalTablesToExclude("ExternalTable2")
///                 .externalTablesToInclude("ExternalTable1")
///                 .materializedViewsToExclude("MaterializedViewTable2")
///                 .materializedViewsToInclude("MaterializedViewTable1")
///                 .tablesToExclude("Table2")
///                 .tablesToInclude("Table1")
///                 .build())
///             .workspaceName("kustorptest")
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
/// const kustoPoolAttachedDatabaseConfiguration = new azure_native.synapse.KustoPoolAttachedDatabaseConfiguration("kustoPoolAttachedDatabaseConfiguration", {
///     attachedDatabaseConfigurationName: "attachedDatabaseConfigurations1",
///     databaseName: "kustodatabase",
///     defaultPrincipalsModificationKind: azure_native.synapse.DefaultPrincipalsModificationKind.Union,
///     kustoPoolName: "kustoclusterrptest4",
///     kustoPoolResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Synapse/Workspaces/kustorptest/KustoPools/kustoclusterrptest4",
///     location: "westus",
///     resourceGroupName: "kustorptest",
///     tableLevelSharingProperties: {
///         externalTablesToExclude: ["ExternalTable2"],
///         externalTablesToInclude: ["ExternalTable1"],
///         materializedViewsToExclude: ["MaterializedViewTable2"],
///         materializedViewsToInclude: ["MaterializedViewTable1"],
///         tablesToExclude: ["Table2"],
///         tablesToInclude: ["Table1"],
///     },
///     workspaceName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kusto_pool_attached_database_configuration = azure_native.synapse.KustoPoolAttachedDatabaseConfiguration("kustoPoolAttachedDatabaseConfiguration",
///     attached_database_configuration_name="attachedDatabaseConfigurations1",
///     database_name="kustodatabase",
///     default_principals_modification_kind=azure_native.synapse.DefaultPrincipalsModificationKind.UNION,
///     kusto_pool_name="kustoclusterrptest4",
///     kusto_pool_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Synapse/Workspaces/kustorptest/KustoPools/kustoclusterrptest4",
///     location="westus",
///     resource_group_name="kustorptest",
///     table_level_sharing_properties={
///         "external_tables_to_exclude": ["ExternalTable2"],
///         "external_tables_to_include": ["ExternalTable1"],
///         "materialized_views_to_exclude": ["MaterializedViewTable2"],
///         "materialized_views_to_include": ["MaterializedViewTable1"],
///         "tables_to_exclude": ["Table2"],
///         "tables_to_include": ["Table1"],
///     },
///     workspace_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   kustoPoolAttachedDatabaseConfiguration:
///     type: azure-native:synapse:KustoPoolAttachedDatabaseConfiguration
///     properties:
///       attachedDatabaseConfigurationName: attachedDatabaseConfigurations1
///       databaseName: kustodatabase
///       defaultPrincipalsModificationKind: Union
///       kustoPoolName: kustoclusterrptest4
///       kustoPoolResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Synapse/Workspaces/kustorptest/KustoPools/kustoclusterrptest4
///       location: westus
///       resourceGroupName: kustorptest
///       tableLevelSharingProperties:
///         externalTablesToExclude:
///           - ExternalTable2
///         externalTablesToInclude:
///           - ExternalTable1
///         materializedViewsToExclude:
///           - MaterializedViewTable2
///         materializedViewsToInclude:
///           - MaterializedViewTable1
///         tablesToExclude:
///           - Table2
///         tablesToInclude:
///           - Table1
///       workspaceName: kustorptest
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
/// $ pulumi import azure-native:synapse:KustoPoolAttachedDatabaseConfiguration KustoClusterRPTest4/attachedDatabaseConfigurations1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/kustoPools/{kustoPoolName}/attachedDatabaseConfigurations/{attachedDatabaseConfigurationName}
/// ```
class KustoPoolAttachedDatabaseConfiguration extends pulumi.CustomResource {
  /// The list of databases from the clusterResourceId which are currently attached to the kusto pool.
  late final pulumi.Output<List<String>> attachedDatabaseNames;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  late final pulumi.Output<String> databaseName;
  /// The default principals modification kind
  late final pulumi.Output<String> defaultPrincipalsModificationKind;
  /// The resource id of the kusto pool where the databases you would like to attach reside.
  late final pulumi.Output<String> kustoPoolResourceId;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Table level sharing specifications
  late final pulumi.Output<TableLevelSharingPropertiesResponse?> tableLevelSharingProperties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [KustoPoolAttachedDatabaseConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KustoPoolAttachedDatabaseConfiguration]. {@macro pulumi_synapse_kusto_pool_attached_database_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KustoPoolAttachedDatabaseConfiguration(
    String name, {
    KustoPoolAttachedDatabaseConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:KustoPoolAttachedDatabaseConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachedDatabaseNames = registerOutput<List<String>>('attachedDatabaseNames');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databaseName = registerOutput<String>('databaseName');
    defaultPrincipalsModificationKind = registerOutput<String>('defaultPrincipalsModificationKind');
    kustoPoolResourceId = registerOutput<String>('kustoPoolResourceId');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableLevelSharingProperties = registerOutput<TableLevelSharingPropertiesResponse?>('tableLevelSharingProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableLevelSharingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
