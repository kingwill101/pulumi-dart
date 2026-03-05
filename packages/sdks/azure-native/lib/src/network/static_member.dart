import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_member_args.dart';
import 'system_data_response.dart';

/// StaticMember Item.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StaticMemberPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var staticMember = new AzureNative.Network.StaticMember("staticMember", new()
///     {
///         NetworkGroupName = "testNetworkGroup",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroup/rg1/providers/Microsoft.Network/virtualnetworks/vnet1",
///         StaticMemberName = "testStaticMember",
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
/// 		_, err := network.NewStaticMember(ctx, "staticMember", &network.StaticMemberArgs{
/// 			NetworkGroupName:   pulumi.String("testNetworkGroup"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			ResourceId:         pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroup/rg1/providers/Microsoft.Network/virtualnetworks/vnet1"),
/// 			StaticMemberName:   pulumi.String("testStaticMember"),
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
/// import com.pulumi.azurenative.network.StaticMember;
/// import com.pulumi.azurenative.network.StaticMemberArgs;
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
///         var staticMember = new StaticMember("staticMember", StaticMemberArgs.builder()
///             .networkGroupName("testNetworkGroup")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroup/rg1/providers/Microsoft.Network/virtualnetworks/vnet1")
///             .staticMemberName("testStaticMember")
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
/// const staticMember = new azure_native.network.StaticMember("staticMember", {
///     networkGroupName: "testNetworkGroup",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroup/rg1/providers/Microsoft.Network/virtualnetworks/vnet1",
///     staticMemberName: "testStaticMember",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// static_member = azure_native.network.StaticMember("staticMember",
///     network_group_name="testNetworkGroup",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroup/rg1/providers/Microsoft.Network/virtualnetworks/vnet1",
///     static_member_name="testStaticMember")
///
/// ```
///
/// ```yaml
/// resources:
///   staticMember:
///     type: azure-native:network:StaticMember
///     properties:
///       networkGroupName: testNetworkGroup
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroup/rg1/providers/Microsoft.Network/virtualnetworks/vnet1
///       staticMemberName: testStaticMember
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
/// $ pulumi import azure-native:network:StaticMember testStaticMember /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/networkGroups/{networkGroupName}/staticMembers/{staticMemberName}
/// ```
class StaticMember extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The provisioning state of the scope assignment resource.
  late final pulumi.Output<String> provisioningState;

  /// Resource region.
  late final pulumi.Output<String> region;

  /// Resource Id.
  late final pulumi.Output<String?> resourceId;

  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [StaticMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticMember]. {@macro pulumi_network_static_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticMember(
    String name, {
    StaticMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:StaticMember',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String?>('resourceId');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
