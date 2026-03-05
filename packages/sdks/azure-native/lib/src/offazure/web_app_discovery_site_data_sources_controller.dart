import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_discovery_site_data_sources_controller_args.dart';

/// Web app data source web model.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebAppDiscoverySiteDataSourcesController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppDiscoverySiteDataSourcesController = new AzureNative.OffAzure.WebAppDiscoverySiteDataSourcesController("webAppDiscoverySiteDataSourcesController", new()
///     {
///         DiscoverySiteDataSourceName = "XJ-V535YCO5L3PIWdB",
///         DiscoverySiteId = "gsqqojvnjtbdabo",
///         ResourceGroupName = "rgmigrate",
///         SiteName = "3363G4K-7-XWJ7384S",
///         WebAppSiteName = "42883RRtL4-CE155--u65v-",
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
/// 		_, err := offazure.NewWebAppDiscoverySiteDataSourcesController(ctx, "webAppDiscoverySiteDataSourcesController", &offazure.WebAppDiscoverySiteDataSourcesControllerArgs{
/// 			DiscoverySiteDataSourceName: pulumi.String("XJ-V535YCO5L3PIWdB"),
/// 			DiscoverySiteId:             pulumi.String("gsqqojvnjtbdabo"),
/// 			ResourceGroupName:           pulumi.String("rgmigrate"),
/// 			SiteName:                    pulumi.String("3363G4K-7-XWJ7384S"),
/// 			WebAppSiteName:              pulumi.String("42883RRtL4-CE155--u65v-"),
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
/// import com.pulumi.azurenative.offazure.WebAppDiscoverySiteDataSourcesController;
/// import com.pulumi.azurenative.offazure.WebAppDiscoverySiteDataSourcesControllerArgs;
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
///         var webAppDiscoverySiteDataSourcesController = new WebAppDiscoverySiteDataSourcesController("webAppDiscoverySiteDataSourcesController", WebAppDiscoverySiteDataSourcesControllerArgs.builder()
///             .discoverySiteDataSourceName("XJ-V535YCO5L3PIWdB")
///             .discoverySiteId("gsqqojvnjtbdabo")
///             .resourceGroupName("rgmigrate")
///             .siteName("3363G4K-7-XWJ7384S")
///             .webAppSiteName("42883RRtL4-CE155--u65v-")
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
/// const webAppDiscoverySiteDataSourcesController = new azure_native.offazure.WebAppDiscoverySiteDataSourcesController("webAppDiscoverySiteDataSourcesController", {
///     discoverySiteDataSourceName: "XJ-V535YCO5L3PIWdB",
///     discoverySiteId: "gsqqojvnjtbdabo",
///     resourceGroupName: "rgmigrate",
///     siteName: "3363G4K-7-XWJ7384S",
///     webAppSiteName: "42883RRtL4-CE155--u65v-",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_discovery_site_data_sources_controller = azure_native.offazure.WebAppDiscoverySiteDataSourcesController("webAppDiscoverySiteDataSourcesController",
///     discovery_site_data_source_name="XJ-V535YCO5L3PIWdB",
///     discovery_site_id="gsqqojvnjtbdabo",
///     resource_group_name="rgmigrate",
///     site_name="3363G4K-7-XWJ7384S",
///     web_app_site_name="42883RRtL4-CE155--u65v-")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppDiscoverySiteDataSourcesController:
///     type: azure-native:offazure:WebAppDiscoverySiteDataSourcesController
///     properties:
///       discoverySiteDataSourceName: XJ-V535YCO5L3PIWdB
///       discoverySiteId: gsqqojvnjtbdabo
///       resourceGroupName: rgmigrate
///       siteName: 3363G4K-7-XWJ7384S
///       webAppSiteName: 42883RRtL4-CE155--u65v-
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
/// $ pulumi import azure-native:offazure:WebAppDiscoverySiteDataSourcesController ctlzidatxazufjrtysorbfum /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/masterSites/{siteName}/webAppSites/{webAppSiteName}/discoverySiteDataSources/{discoverySiteDataSourceName}
/// ```
class WebAppDiscoverySiteDataSourcesController extends pulumi.CustomResource {
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

  /// Creates a new [WebAppDiscoverySiteDataSourcesController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppDiscoverySiteDataSourcesController]. {@macro pulumi_offazure_web_app_discovery_site_data_sources_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppDiscoverySiteDataSourcesController(
    String name, {
    WebAppDiscoverySiteDataSourcesControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:WebAppDiscoverySiteDataSourcesController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoverySiteId = registerOutput<String?>('discoverySiteId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
