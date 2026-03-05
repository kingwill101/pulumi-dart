import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_group_args.dart';
import 'system_data_response.dart';

/// The network group resource
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkGroupsPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkGroup = new AzureNative.Network.NetworkGroup("networkGroup", new()
///     {
///         Description = "A sample group",
///         MemberType = AzureNative.Network.GroupMemberType.VirtualNetwork,
///         NetworkGroupName = "testNetworkGroup",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewNetworkGroup(ctx, "networkGroup", &network.NetworkGroupArgs{
/// 			Description:        pulumi.String("A sample group"),
/// 			MemberType:         pulumi.String(network.GroupMemberTypeVirtualNetwork),
/// 			NetworkGroupName:   pulumi.String("testNetworkGroup"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NetworkGroup;
/// import com.pulumi.azurenative.network.NetworkGroupArgs;
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
///         var networkGroup = new NetworkGroup("networkGroup", NetworkGroupArgs.builder()
///             .description("A sample group")
///             .memberType("VirtualNetwork")
///             .networkGroupName("testNetworkGroup")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
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
/// const networkGroup = new azure_native.network.NetworkGroup("networkGroup", {
///     description: "A sample group",
///     memberType: azure_native.network.GroupMemberType.VirtualNetwork,
///     networkGroupName: "testNetworkGroup",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_group = azure_native.network.NetworkGroup("networkGroup",
///     description="A sample group",
///     member_type=azure_native.network.GroupMemberType.VIRTUAL_NETWORK,
///     network_group_name="testNetworkGroup",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkGroup:
///     type: azure-native:network:NetworkGroup
///     properties:
///       description: A sample group
///       memberType: VirtualNetwork
///       networkGroupName: testNetworkGroup
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:NetworkGroup testNetworkGroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/networkGroups/{networkGroupName}
/// ```
class NetworkGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description of the network group.
  late final pulumi.Output<String?> description;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The type of the group member.
  late final pulumi.Output<String?> memberType;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the scope assignment resource.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkGroup]. {@macro pulumi_network_network_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkGroup(
    String name, {
    NetworkGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NetworkGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    memberType = registerOutput<String?>('memberType');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
