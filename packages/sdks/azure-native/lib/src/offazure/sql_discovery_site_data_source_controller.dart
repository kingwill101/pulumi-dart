import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_discovery_site_data_source_controller_args.dart';
import 'system_data_response.dart';

/// A SQL discovery site data source resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SqlDiscoverySiteDataSourceController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlDiscoverySiteDataSourceController = new AzureNative.OffAzure.SqlDiscoverySiteDataSourceController("sqlDiscoverySiteDataSourceController", new()
///     {
///         DiscoverySiteDataSourceName = "jN--823UiQ",
///         DiscoverySiteId = "ndmdh",
///         ResourceGroupName = "rgmigrate",
///         SiteName = "v-MwBCpvV-",
///         SqlSiteName = "NO-8-W75XK5-4Xfs54I-n",
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
/// 	offazure "github.com/pulumi/pulumi-azure-native-sdk/offazure/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazure.NewSqlDiscoverySiteDataSourceController(ctx, "sqlDiscoverySiteDataSourceController", &offazure.SqlDiscoverySiteDataSourceControllerArgs{
/// 			DiscoverySiteDataSourceName: pulumi.String("jN--823UiQ"),
/// 			DiscoverySiteId:             pulumi.String("ndmdh"),
/// 			ResourceGroupName:           pulumi.String("rgmigrate"),
/// 			SiteName:                    pulumi.String("v-MwBCpvV-"),
/// 			SqlSiteName:                 pulumi.String("NO-8-W75XK5-4Xfs54I-n"),
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
/// import com.pulumi.azurenative.offazure.SqlDiscoverySiteDataSourceController;
/// import com.pulumi.azurenative.offazure.SqlDiscoverySiteDataSourceControllerArgs;
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
///         var sqlDiscoverySiteDataSourceController = new SqlDiscoverySiteDataSourceController("sqlDiscoverySiteDataSourceController", SqlDiscoverySiteDataSourceControllerArgs.builder()
///             .discoverySiteDataSourceName("jN--823UiQ")
///             .discoverySiteId("ndmdh")
///             .resourceGroupName("rgmigrate")
///             .siteName("v-MwBCpvV-")
///             .sqlSiteName("NO-8-W75XK5-4Xfs54I-n")
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
/// const sqlDiscoverySiteDataSourceController = new azure_native.offazure.SqlDiscoverySiteDataSourceController("sqlDiscoverySiteDataSourceController", {
///     discoverySiteDataSourceName: "jN--823UiQ",
///     discoverySiteId: "ndmdh",
///     resourceGroupName: "rgmigrate",
///     siteName: "v-MwBCpvV-",
///     sqlSiteName: "NO-8-W75XK5-4Xfs54I-n",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_discovery_site_data_source_controller = azure_native.offazure.SqlDiscoverySiteDataSourceController("sqlDiscoverySiteDataSourceController",
///     discovery_site_data_source_name="jN--823UiQ",
///     discovery_site_id="ndmdh",
///     resource_group_name="rgmigrate",
///     site_name="v-MwBCpvV-",
///     sql_site_name="NO-8-W75XK5-4Xfs54I-n")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlDiscoverySiteDataSourceController:
///     type: azure-native:offazure:SqlDiscoverySiteDataSourceController
///     properties:
///       discoverySiteDataSourceName: jN--823UiQ
///       discoverySiteId: ndmdh
///       resourceGroupName: rgmigrate
///       siteName: v-MwBCpvV-
///       sqlSiteName: NO-8-W75XK5-4Xfs54I-n
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
/// $ pulumi import azure-native:offazure:SqlDiscoverySiteDataSourceController ogoambuklhacaucjkaxgzyvfm /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/masterSites/{siteName}/sqlSites/{sqlSiteName}/discoverySiteDataSources/{discoverySiteDataSourceName}
/// ```
class SqlDiscoverySiteDataSourceController extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets or sets the discovery site Id.
  late final pulumi.Output<String?> discoverySiteId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// provisioning state enum
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlDiscoverySiteDataSourceController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlDiscoverySiteDataSourceController]. {@macro pulumi_offazure_sql_discovery_site_data_source_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlDiscoverySiteDataSourceController(
    String name, {
    SqlDiscoverySiteDataSourceControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:offazure:SqlDiscoverySiteDataSourceController',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoverySiteId = registerOutput<String?>('discoverySiteId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
