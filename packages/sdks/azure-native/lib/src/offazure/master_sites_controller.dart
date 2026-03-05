import 'package:pulumi/pulumi.dart' as pulumi;
import 'master_sites_controller_args.dart';
import 'system_data_response.dart';

/// A MasterSite
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MasterSitesController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var masterSitesController = new AzureNative.OffAzure.MasterSitesController("masterSitesController", new()
///     {
///         AllowMultipleSites = true,
///         CustomerStorageAccountArmId = "tndgdhvguaaa",
///         Location = "g",
///         PublicNetworkAccess = AzureNative.OffAzure.MasterSitePropertiesPublicNetworkAccess.NotSpecified,
///         ResourceGroupName = "rgmigrate",
///         SiteName = "4Y-BY-44e-2fDcKpH-E5",
///         Sites = new[]
///         {
///             "lzbawsokqsbzpsocpiwbsjxf",
///         },
///         Tags =
///         {
///             { "key5556", "htomzlbxaiqgcmaaq" },
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
/// 		_, err := offazure.NewMasterSitesController(ctx, "masterSitesController", &offazure.MasterSitesControllerArgs{
/// 			AllowMultipleSites:          pulumi.Bool(true),
/// 			CustomerStorageAccountArmId: pulumi.String("tndgdhvguaaa"),
/// 			Location:                    pulumi.String("g"),
/// 			PublicNetworkAccess:         pulumi.String(offazure.MasterSitePropertiesPublicNetworkAccessNotSpecified),
/// 			ResourceGroupName:           pulumi.String("rgmigrate"),
/// 			SiteName:                    pulumi.String("4Y-BY-44e-2fDcKpH-E5"),
/// 			Sites: pulumi.StringArray{
/// 				pulumi.String("lzbawsokqsbzpsocpiwbsjxf"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key5556": pulumi.String("htomzlbxaiqgcmaaq"),
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
/// import com.pulumi.azurenative.offazure.MasterSitesController;
/// import com.pulumi.azurenative.offazure.MasterSitesControllerArgs;
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
///         var masterSitesController = new MasterSitesController("masterSitesController", MasterSitesControllerArgs.builder()
///             .allowMultipleSites(true)
///             .customerStorageAccountArmId("tndgdhvguaaa")
///             .location("g")
///             .publicNetworkAccess("NotSpecified")
///             .resourceGroupName("rgmigrate")
///             .siteName("4Y-BY-44e-2fDcKpH-E5")
///             .sites("lzbawsokqsbzpsocpiwbsjxf")
///             .tags(Map.of("key5556", "htomzlbxaiqgcmaaq"))
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
/// const masterSitesController = new azure_native.offazure.MasterSitesController("masterSitesController", {
///     allowMultipleSites: true,
///     customerStorageAccountArmId: "tndgdhvguaaa",
///     location: "g",
///     publicNetworkAccess: azure_native.offazure.MasterSitePropertiesPublicNetworkAccess.NotSpecified,
///     resourceGroupName: "rgmigrate",
///     siteName: "4Y-BY-44e-2fDcKpH-E5",
///     sites: ["lzbawsokqsbzpsocpiwbsjxf"],
///     tags: {
///         key5556: "htomzlbxaiqgcmaaq",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// master_sites_controller = azure_native.offazure.MasterSitesController("masterSitesController",
///     allow_multiple_sites=True,
///     customer_storage_account_arm_id="tndgdhvguaaa",
///     location="g",
///     public_network_access=azure_native.offazure.MasterSitePropertiesPublicNetworkAccess.NOT_SPECIFIED,
///     resource_group_name="rgmigrate",
///     site_name="4Y-BY-44e-2fDcKpH-E5",
///     sites=["lzbawsokqsbzpsocpiwbsjxf"],
///     tags={
///         "key5556": "htomzlbxaiqgcmaaq",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   masterSitesController:
///     type: azure-native:offazure:MasterSitesController
///     properties:
///       allowMultipleSites: true
///       customerStorageAccountArmId: tndgdhvguaaa
///       location: g
///       publicNetworkAccess: NotSpecified
///       resourceGroupName: rgmigrate
///       siteName: 4Y-BY-44e-2fDcKpH-E5
///       sites:
///         - lzbawsokqsbzpsocpiwbsjxf
///       tags:
///         key5556: htomzlbxaiqgcmaaq
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
/// $ pulumi import azure-native:offazure:MasterSitesController yrxubv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/masterSites/{siteName}
/// ```
class MasterSitesController extends pulumi.CustomResource {
  /// Gets or sets a value indicating whether multiple sites per site type are
  /// allowed.
  late final pulumi.Output<bool?> allowMultipleSites;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets a value for customer storage account ARM id.
  late final pulumi.Output<String?> customerStorageAccountArmId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the nested sites under Master Site.
  late final pulumi.Output<List<String>> nestedSites;
  /// Gets the private endpoint connections.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// provisioning state enum
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the state of public network access.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Gets or sets the sites that are a part of Master Site.
  /// The key
  /// should contain the Site ARM name.
  late final pulumi.Output<List<String>?> sites;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MasterSitesController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MasterSitesController]. {@macro pulumi_offazure_master_sites_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MasterSitesController(
    String name, {
    MasterSitesControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:MasterSitesController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowMultipleSites = registerOutput<bool?>('allowMultipleSites');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customerStorageAccountArmId = registerOutput<String?>('customerStorageAccountArmId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nestedSites = registerOutput<List<String>>('nestedSites');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    sites = registerOutput<List<String>?>('sites');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
