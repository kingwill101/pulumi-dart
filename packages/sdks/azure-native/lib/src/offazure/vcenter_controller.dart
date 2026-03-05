import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'vcenter_controller_args.dart';

/// A vcenter resource belonging to a site resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VcenterController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vcenterController = new AzureNative.OffAzure.VcenterController("vcenterController", new()
///     {
///         Fqdn = "fuclodcnofphkcrnex",
///         FriendlyName = "qvycnab",
///         Port = "bdospcacndrchuqluozmwrvetxul",
///         ProvisioningState = AzureNative.OffAzure.ProvisioningState.Created,
///         ResourceGroupName = "rgmigrate",
///         RunAsAccountId = "pqbieohxxmfri",
///         SiteName = "6T42r-99CFg-44-gFP",
///         VcenterName = "23LDJ0XB7UT-L",
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
/// 		_, err := offazure.NewVcenterController(ctx, "vcenterController", &offazure.VcenterControllerArgs{
/// 			Fqdn:              pulumi.String("fuclodcnofphkcrnex"),
/// 			FriendlyName:      pulumi.String("qvycnab"),
/// 			Port:              pulumi.String("bdospcacndrchuqluozmwrvetxul"),
/// 			ProvisioningState: pulumi.String(offazure.ProvisioningStateCreated),
/// 			ResourceGroupName: pulumi.String("rgmigrate"),
/// 			RunAsAccountId:    pulumi.String("pqbieohxxmfri"),
/// 			SiteName:          pulumi.String("6T42r-99CFg-44-gFP"),
/// 			VcenterName:       pulumi.String("23LDJ0XB7UT-L"),
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
/// import com.pulumi.azurenative.offazure.VcenterController;
/// import com.pulumi.azurenative.offazure.VcenterControllerArgs;
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
///         var vcenterController = new VcenterController("vcenterController", VcenterControllerArgs.builder()
///             .fqdn("fuclodcnofphkcrnex")
///             .friendlyName("qvycnab")
///             .port("bdospcacndrchuqluozmwrvetxul")
///             .provisioningState("Created")
///             .resourceGroupName("rgmigrate")
///             .runAsAccountId("pqbieohxxmfri")
///             .siteName("6T42r-99CFg-44-gFP")
///             .vcenterName("23LDJ0XB7UT-L")
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
/// const vcenterController = new azure_native.offazure.VcenterController("vcenterController", {
///     fqdn: "fuclodcnofphkcrnex",
///     friendlyName: "qvycnab",
///     port: "bdospcacndrchuqluozmwrvetxul",
///     provisioningState: azure_native.offazure.ProvisioningState.Created,
///     resourceGroupName: "rgmigrate",
///     runAsAccountId: "pqbieohxxmfri",
///     siteName: "6T42r-99CFg-44-gFP",
///     vcenterName: "23LDJ0XB7UT-L",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vcenter_controller = azure_native.offazure.VcenterController("vcenterController",
///     fqdn="fuclodcnofphkcrnex",
///     friendly_name="qvycnab",
///     port="bdospcacndrchuqluozmwrvetxul",
///     provisioning_state=azure_native.offazure.ProvisioningState.CREATED,
///     resource_group_name="rgmigrate",
///     run_as_account_id="pqbieohxxmfri",
///     site_name="6T42r-99CFg-44-gFP",
///     vcenter_name="23LDJ0XB7UT-L")
///
/// ```
///
/// ```yaml
/// resources:
///   vcenterController:
///     type: azure-native:offazure:VcenterController
///     properties:
///       fqdn: fuclodcnofphkcrnex
///       friendlyName: qvycnab
///       port: bdospcacndrchuqluozmwrvetxul
///       provisioningState: Created
///       resourceGroupName: rgmigrate
///       runAsAccountId: pqbieohxxmfri
///       siteName: 6T42r-99CFg-44-gFP
///       vcenterName: 23LDJ0XB7UT-L
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
/// $ pulumi import azure-native:offazure:VcenterController ziadgvbgdceiuody /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/vmwareSites/{siteName}/vcenters/{vcenterName}
/// ```
class VcenterController extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the timestamp marking vCenter creation.
  late final pulumi.Output<String> createdTimestamp;
  /// Gets the errors.
  late final pulumi.Output<List<Map<String, dynamic>>> errors;
  /// Gets or sets the FQDN/IPAddress of the vCenter.
  late final pulumi.Output<String?> fqdn;
  /// Gets or sets the friendly name of the vCenter.
  late final pulumi.Output<String?> friendlyName;
  /// Gets the instance UUID of the vCenter.
  late final pulumi.Output<String> instanceUuid;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the performance statistics enabled on the vCenter.
  late final pulumi.Output<String> perfStatisticsLevel;
  /// Gets or sets the port of the vCenter.
  late final pulumi.Output<String?> port;
  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;
  /// Gets or sets the run as account ID of the vCenter.
  late final pulumi.Output<String?> runAsAccountId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets the timestamp marking last updated on the vCenter.
  late final pulumi.Output<String> updatedTimestamp;
  /// Gets the version of the vCenter.
  late final pulumi.Output<String> version;

  /// Creates a new [VcenterController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VcenterController]. {@macro pulumi_offazure_vcenter_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VcenterController(
    String name, {
    VcenterControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:VcenterController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    fqdn = registerOutput<String?>('fqdn');
    friendlyName = registerOutput<String?>('friendlyName');
    instanceUuid = registerOutput<String>('instanceUuid');
    this.name = registerOutput<String>('name');
    perfStatisticsLevel = registerOutput<String>('perfStatisticsLevel');
    port = registerOutput<String?>('port');
    provisioningState = registerOutput<String?>('provisioningState');
    runAsAccountId = registerOutput<String?>('runAsAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
    version = registerOutput<String>('version');
  }
}
