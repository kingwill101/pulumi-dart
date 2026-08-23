import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperv_host_controller_args.dart';
import 'system_data_response.dart';

/// A host resource belonging to a site resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HypervHostController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hypervHostController = new AzureNative.OffAzure.HypervHostController("hypervHostController", new()
///     {
///         Fqdn = "lk",
///         HostName = "1FXhE45296-eJUF1Y-",
///         ProvisioningState = AzureNative.OffAzure.ProvisioningState.Created,
///         ResourceGroupName = "rgmigrate",
///         RunAsAccountId = "epkvjlsbaigwfxwgzo",
///         SiteName = "f3m9-Tf--3-n7-40USK7XX",
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
/// 		_, err := offazure.NewHypervHostController(ctx, "hypervHostController", &offazure.HypervHostControllerArgs{
/// 			Fqdn:              pulumi.String("lk"),
/// 			HostName:          pulumi.String("1FXhE45296-eJUF1Y-"),
/// 			ProvisioningState: pulumi.String(offazure.ProvisioningStateCreated),
/// 			ResourceGroupName: pulumi.String("rgmigrate"),
/// 			RunAsAccountId:    pulumi.String("epkvjlsbaigwfxwgzo"),
/// 			SiteName:          pulumi.String("f3m9-Tf--3-n7-40USK7XX"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_offazure_hypervhostcontroller" "hypervHostController" {
///   fqdn                = "lk"
///   host_name           = "1FXhE45296-eJUF1Y-"
///   provisioning_state  = "Created"
///   resource_group_name = "rgmigrate"
///   run_as_account_id   = "epkvjlsbaigwfxwgzo"
///   site_name           = "f3m9-Tf--3-n7-40USK7XX"
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
/// import com.pulumi.azurenative.offazure.HypervHostController;
/// import com.pulumi.azurenative.offazure.HypervHostControllerArgs;
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
///         var hypervHostController = new HypervHostController("hypervHostController", HypervHostControllerArgs.builder()
///             .fqdn("lk")
///             .hostName("1FXhE45296-eJUF1Y-")
///             .provisioningState("Created")
///             .resourceGroupName("rgmigrate")
///             .runAsAccountId("epkvjlsbaigwfxwgzo")
///             .siteName("f3m9-Tf--3-n7-40USK7XX")
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
/// const hypervHostController = new azure_native.offazure.HypervHostController("hypervHostController", {
///     fqdn: "lk",
///     hostName: "1FXhE45296-eJUF1Y-",
///     provisioningState: azure_native.offazure.ProvisioningState.Created,
///     resourceGroupName: "rgmigrate",
///     runAsAccountId: "epkvjlsbaigwfxwgzo",
///     siteName: "f3m9-Tf--3-n7-40USK7XX",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hyperv_host_controller = azure_native.offazure.HypervHostController("hypervHostController",
///     fqdn="lk",
///     host_name="1FXhE45296-eJUF1Y-",
///     provisioning_state=azure_native.offazure.ProvisioningState.CREATED,
///     resource_group_name="rgmigrate",
///     run_as_account_id="epkvjlsbaigwfxwgzo",
///     site_name="f3m9-Tf--3-n7-40USK7XX")
///
/// ```
///
/// ```yaml
/// resources:
///   hypervHostController:
///     type: azure-native:offazure:HypervHostController
///     properties:
///       fqdn: lk
///       hostName: 1FXhE45296-eJUF1Y-
///       provisioningState: Created
///       resourceGroupName: rgmigrate
///       runAsAccountId: epkvjlsbaigwfxwgzo
///       siteName: f3m9-Tf--3-n7-40USK7XX
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
/// $ pulumi import azure-native:offazure:HypervHostController otjimvbvxztyisadood /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/hypervSites/{siteName}/hosts/{hostName}
/// ```
class HypervHostController extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the timestamp marking Hyper-V host creation.
  late final pulumi.Output<String> createdTimestamp;
  /// Gets the errors.
  late final pulumi.Output<List<Map<String, dynamic>>> errors;
  /// Gets or sets the FQDN/IPAddress of the Hyper-V host.
  late final pulumi.Output<String?> fqdn;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;
  /// Gets or sets the run as account ID of the Hyper-V host.
  late final pulumi.Output<String?> runAsAccountId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets the timestamp marking last updated on the Hyper-V host.
  late final pulumi.Output<String> updatedTimestamp;
  /// Gets the version of the Hyper-V host.
  late final pulumi.Output<String> version;

  /// Creates a new [HypervHostController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HypervHostController]. {@macro pulumi_offazure_hyperv_host_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HypervHostController(
    String name, {
    HypervHostControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:HypervHostController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    fqdn = registerOutput<String?>('fqdn');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    runAsAccountId = registerOutput<String?>('runAsAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
    version = registerOutput<String>('version');
  }
}
