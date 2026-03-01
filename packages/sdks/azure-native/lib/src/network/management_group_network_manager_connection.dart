import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_group_network_manager_connection_args.dart';
import 'system_data_response.dart';

/// The Network Manager Connection resource
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Management Group Network Manager Connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementGroupNetworkManagerConnection = new AzureNative.Network.ManagementGroupNetworkManagerConnection("managementGroupNetworkManagerConnection", new()
///     {
///         ManagementGroupId = "managementGroupA",
///         NetworkManagerConnectionName = "TestNMConnection",
///         NetworkManagerId = "/subscriptions/subscriptionC/resourceGroup/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewManagementGroupNetworkManagerConnection(ctx, "managementGroupNetworkManagerConnection", &network.ManagementGroupNetworkManagerConnectionArgs{
/// 			ManagementGroupId:            pulumi.String("managementGroupA"),
/// 			NetworkManagerConnectionName: pulumi.String("TestNMConnection"),
/// 			NetworkManagerId:             pulumi.String("/subscriptions/subscriptionC/resourceGroup/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager"),
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
/// import com.pulumi.azurenative.network.ManagementGroupNetworkManagerConnection;
/// import com.pulumi.azurenative.network.ManagementGroupNetworkManagerConnectionArgs;
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
///         var managementGroupNetworkManagerConnection = new ManagementGroupNetworkManagerConnection("managementGroupNetworkManagerConnection", ManagementGroupNetworkManagerConnectionArgs.builder()
///             .managementGroupId("managementGroupA")
///             .networkManagerConnectionName("TestNMConnection")
///             .networkManagerId("/subscriptions/subscriptionC/resourceGroup/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager")
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
/// const managementGroupNetworkManagerConnection = new azure_native.network.ManagementGroupNetworkManagerConnection("managementGroupNetworkManagerConnection", {
///     managementGroupId: "managementGroupA",
///     networkManagerConnectionName: "TestNMConnection",
///     networkManagerId: "/subscriptions/subscriptionC/resourceGroup/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_group_network_manager_connection = azure_native.network.ManagementGroupNetworkManagerConnection("managementGroupNetworkManagerConnection",
///     management_group_id="managementGroupA",
///     network_manager_connection_name="TestNMConnection",
///     network_manager_id="/subscriptions/subscriptionC/resourceGroup/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager")
///
/// ```
///
/// ```yaml
/// resources:
///   managementGroupNetworkManagerConnection:
///     type: azure-native:network:ManagementGroupNetworkManagerConnection
///     properties:
///       managementGroupId: managementGroupA
///       networkManagerConnectionName: TestNMConnection
///       networkManagerId: /subscriptions/subscriptionC/resourceGroup/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager
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
/// $ pulumi import azure-native:network:ManagementGroupNetworkManagerConnection TestNMConnection /providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.Network/networkManagerConnections/{networkManagerConnectionName}
/// ```
class ManagementGroupNetworkManagerConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description of the network manager connection.
  late final pulumi.Output<String?> description;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Network Manager Id.
  late final pulumi.Output<String?> networkManagerId;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagementGroupNetworkManagerConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementGroupNetworkManagerConnection]. {@macro pulumi_network_management_group_network_manager_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementGroupNetworkManagerConnection(
    String name, {
    ManagementGroupNetworkManagerConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ManagementGroupNetworkManagerConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.networkManagerId = registerOutput<String?>('networkManagerId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
