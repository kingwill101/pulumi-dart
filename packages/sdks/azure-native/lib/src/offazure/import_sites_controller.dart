import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_sites_controller_args.dart';
import 'system_data_response.dart';

/// A ImportSite
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ImportSitesController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var importSitesController = new AzureNative.OffAzure.ImportSitesController("importSitesController", new()
///     {
///         DiscoverySolutionId = "cgwjekybxrlaunxf",
///         Location = "adfizitxdfwwrkgywpqqupuhkvwie",
///         ProvisioningState = AzureNative.OffAzure.ProvisioningState.Created,
///         ResourceGroupName = "rgmigrate",
///         SiteName = "44GV2SnONP-cPFOQ18Zmn",
///         Tags =
///         {
///             { "key592", "pj" },
///         },
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
/// 		_, err := offazure.NewImportSitesController(ctx, "importSitesController", &offazure.ImportSitesControllerArgs{
/// 			DiscoverySolutionId: pulumi.String("cgwjekybxrlaunxf"),
/// 			Location:            pulumi.String("adfizitxdfwwrkgywpqqupuhkvwie"),
/// 			ProvisioningState:   pulumi.String(offazure.ProvisioningStateCreated),
/// 			ResourceGroupName:   pulumi.String("rgmigrate"),
/// 			SiteName:            pulumi.String("44GV2SnONP-cPFOQ18Zmn"),
/// 			Tags: pulumi.StringMap{
/// 				"key592": pulumi.String("pj"),
/// 			},
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
/// import com.pulumi.azurenative.offazure.ImportSitesController;
/// import com.pulumi.azurenative.offazure.ImportSitesControllerArgs;
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
///         var importSitesController = new ImportSitesController("importSitesController", ImportSitesControllerArgs.builder()
///             .discoverySolutionId("cgwjekybxrlaunxf")
///             .location("adfizitxdfwwrkgywpqqupuhkvwie")
///             .provisioningState("Created")
///             .resourceGroupName("rgmigrate")
///             .siteName("44GV2SnONP-cPFOQ18Zmn")
///             .tags(Map.of("key592", "pj"))
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
/// const importSitesController = new azure_native.offazure.ImportSitesController("importSitesController", {
///     discoverySolutionId: "cgwjekybxrlaunxf",
///     location: "adfizitxdfwwrkgywpqqupuhkvwie",
///     provisioningState: azure_native.offazure.ProvisioningState.Created,
///     resourceGroupName: "rgmigrate",
///     siteName: "44GV2SnONP-cPFOQ18Zmn",
///     tags: {
///         key592: "pj",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// import_sites_controller = azure_native.offazure.ImportSitesController("importSitesController",
///     discovery_solution_id="cgwjekybxrlaunxf",
///     location="adfizitxdfwwrkgywpqqupuhkvwie",
///     provisioning_state=azure_native.offazure.ProvisioningState.CREATED,
///     resource_group_name="rgmigrate",
///     site_name="44GV2SnONP-cPFOQ18Zmn",
///     tags={
///         "key592": "pj",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   importSitesController:
///     type: azure-native:offazure:ImportSitesController
///     properties:
///       discoverySolutionId: cgwjekybxrlaunxf
///       location: adfizitxdfwwrkgywpqqupuhkvwie
///       provisioningState: Created
///       resourceGroupName: rgmigrate
///       siteName: 44GV2SnONP-cPFOQ18Zmn
///       tags:
///         key592: pj
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
/// $ pulumi import azure-native:offazure:ImportSitesController czihdkszxssaxzvpogzksxyqdg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/importSites/{siteName}
/// ```
class ImportSitesController extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the ARM ID of migration hub solution for SDS.
  late final pulumi.Output<String?> discoverySolutionId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Gets the Master Site this site is linked to.
  late final pulumi.Output<String> masterSiteId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;
  /// Gets the service endpoint.
  late final pulumi.Output<String> serviceEndpoint;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ImportSitesController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportSitesController]. {@macro pulumi_offazure_import_sites_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportSitesController(
    String name, {
    ImportSitesControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:ImportSitesController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoverySolutionId = registerOutput<String?>('discoverySolutionId');
    location = registerOutput<String>('location');
    masterSiteId = registerOutput<String>('masterSiteId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    serviceEndpoint = registerOutput<String>('serviceEndpoint');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
