import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_details_response.dart';
import 'hyperv_cluster_controller_cluster_args.dart';
import 'system_data_response.dart';

/// A cluster resource belonging to a site resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HypervClusterController_CreateCluster_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hypervClusterControllerCluster = new AzureNative.OffAzure.HypervClusterControllerCluster("hypervClusterControllerCluster", new()
///     {
///         ClusterName = "67b-v01-nC3--6tCUl",
///         Fqdn = "rpfphmlbzericn",
///         HostFqdnList = new[]
///         {
///             "ozzrrnscesqywisszgtrnqkxp",
///         },
///         ProvisioningState = AzureNative.OffAzure.ProvisioningState.Created,
///         ResourceGroupName = "rgmigrate",
///         RunAsAccountId = "qgqrfeczloubuaitiudd",
///         SiteName = "7-ZE7-O1HU2-s-EyMu6",
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
/// 		_, err := offazure.NewHypervClusterControllerCluster(ctx, "hypervClusterControllerCluster", &offazure.HypervClusterControllerClusterArgs{
/// 			ClusterName: pulumi.String("67b-v01-nC3--6tCUl"),
/// 			Fqdn:        pulumi.String("rpfphmlbzericn"),
/// 			HostFqdnList: pulumi.StringArray{
/// 				pulumi.String("ozzrrnscesqywisszgtrnqkxp"),
/// 			},
/// 			ProvisioningState: pulumi.String(offazure.ProvisioningStateCreated),
/// 			ResourceGroupName: pulumi.String("rgmigrate"),
/// 			RunAsAccountId:    pulumi.String("qgqrfeczloubuaitiudd"),
/// 			SiteName:          pulumi.String("7-ZE7-O1HU2-s-EyMu6"),
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
/// import com.pulumi.azurenative.offazure.HypervClusterControllerCluster;
/// import com.pulumi.azurenative.offazure.HypervClusterControllerClusterArgs;
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
///         var hypervClusterControllerCluster = new HypervClusterControllerCluster("hypervClusterControllerCluster", HypervClusterControllerClusterArgs.builder()
///             .clusterName("67b-v01-nC3--6tCUl")
///             .fqdn("rpfphmlbzericn")
///             .hostFqdnList("ozzrrnscesqywisszgtrnqkxp")
///             .provisioningState("Created")
///             .resourceGroupName("rgmigrate")
///             .runAsAccountId("qgqrfeczloubuaitiudd")
///             .siteName("7-ZE7-O1HU2-s-EyMu6")
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
/// const hypervClusterControllerCluster = new azure_native.offazure.HypervClusterControllerCluster("hypervClusterControllerCluster", {
///     clusterName: "67b-v01-nC3--6tCUl",
///     fqdn: "rpfphmlbzericn",
///     hostFqdnList: ["ozzrrnscesqywisszgtrnqkxp"],
///     provisioningState: azure_native.offazure.ProvisioningState.Created,
///     resourceGroupName: "rgmigrate",
///     runAsAccountId: "qgqrfeczloubuaitiudd",
///     siteName: "7-ZE7-O1HU2-s-EyMu6",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hyperv_cluster_controller_cluster = azure_native.offazure.HypervClusterControllerCluster("hypervClusterControllerCluster",
///     cluster_name="67b-v01-nC3--6tCUl",
///     fqdn="rpfphmlbzericn",
///     host_fqdn_list=["ozzrrnscesqywisszgtrnqkxp"],
///     provisioning_state=azure_native.offazure.ProvisioningState.CREATED,
///     resource_group_name="rgmigrate",
///     run_as_account_id="qgqrfeczloubuaitiudd",
///     site_name="7-ZE7-O1HU2-s-EyMu6")
///
/// ```
///
/// ```yaml
/// resources:
///   hypervClusterControllerCluster:
///     type: azure-native:offazure:HypervClusterControllerCluster
///     properties:
///       clusterName: 67b-v01-nC3--6tCUl
///       fqdn: rpfphmlbzericn
///       hostFqdnList:
///         - ozzrrnscesqywisszgtrnqkxp
///       provisioningState: Created
///       resourceGroupName: rgmigrate
///       runAsAccountId: qgqrfeczloubuaitiudd
///       siteName: 7-ZE7-O1HU2-s-EyMu6
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
/// $ pulumi import azure-native:offazure:HypervClusterControllerCluster oqgtgmbujxagubndmm /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/hypervSites/{siteName}/clusters/{clusterName}
/// ```
class HypervClusterControllerCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the timestamp marking Hyper-V cluster creation.
  late final pulumi.Output<String> createdTimestamp;
  /// Gets the errors.
  late final pulumi.Output<List<HealthErrorDetailsResponse>> errors;
  /// Gets or sets the FQDN/IPAddress of the Hyper-V cluster.
  late final pulumi.Output<String?> fqdn;
  /// Gets the functional level of the Hyper-V cluster.
  late final pulumi.Output<int> functionalLevel;
  /// Gets or sets list of hosts (FQDN) currently being tracked by the cluster.
  late final pulumi.Output<List<String>?> hostFqdnList;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;
  /// Gets or sets Run as account ID of the Hyper-V cluster.
  late final pulumi.Output<String?> runAsAccountId;
  /// Gets the status of the Hyper-V cluster.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets the timestamp marking last updated on the Hyper-V cluster.
  late final pulumi.Output<String> updatedTimestamp;

  /// Creates a new [HypervClusterControllerCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HypervClusterControllerCluster]. {@macro pulumi_offazure_hyperv_cluster_controller_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HypervClusterControllerCluster(
    String name, {
    HypervClusterControllerClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:HypervClusterControllerCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.errors = registerOutput<List<HealthErrorDetailsResponse>>('errors');
    this.fqdn = registerOutput<String?>('fqdn');
    this.functionalLevel = registerOutput<int>('functionalLevel');
    this.hostFqdnList = registerOutput<List<String>?>('hostFqdnList');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String?>('provisioningState');
    this.runAsAccountId = registerOutput<String?>('runAsAccountId');
    this.status = registerOutput<String>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.updatedTimestamp = registerOutput<String>('updatedTimestamp');
  }
}
