import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_connection_args.dart';
import 'system_data_response.dart';

/// The Scope Connections resource
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Network Manager Scope Connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scopeConnection = new AzureNative.Network.ScopeConnection("scopeConnection", new()
///     {
///         Description = "This is a scope connection to a cross tenant subscription.",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         ResourceId = "subscriptions/f0dc2b34-dfad-40e4-83e0-2309fed8d00b",
///         ScopeConnectionName = "TestScopeConnection",
///         TenantId = "6babcaad-604b-40ac-a9d7-9fd97c0b779f",
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
/// 		_, err := network.NewScopeConnection(ctx, "scopeConnection", &network.ScopeConnectionArgs{
/// 			Description:         pulumi.String("This is a scope connection to a cross tenant subscription."),
/// 			NetworkManagerName:  pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourceId:          pulumi.String("subscriptions/f0dc2b34-dfad-40e4-83e0-2309fed8d00b"),
/// 			ScopeConnectionName: pulumi.String("TestScopeConnection"),
/// 			TenantId:            pulumi.String("6babcaad-604b-40ac-a9d7-9fd97c0b779f"),
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
/// import com.pulumi.azurenative.network.ScopeConnection;
/// import com.pulumi.azurenative.network.ScopeConnectionArgs;
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
///         var scopeConnection = new ScopeConnection("scopeConnection", ScopeConnectionArgs.builder()
///             .description("This is a scope connection to a cross tenant subscription.")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .resourceId("subscriptions/f0dc2b34-dfad-40e4-83e0-2309fed8d00b")
///             .scopeConnectionName("TestScopeConnection")
///             .tenantId("6babcaad-604b-40ac-a9d7-9fd97c0b779f")
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
/// const scopeConnection = new azure_native.network.ScopeConnection("scopeConnection", {
///     description: "This is a scope connection to a cross tenant subscription.",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     resourceId: "subscriptions/f0dc2b34-dfad-40e4-83e0-2309fed8d00b",
///     scopeConnectionName: "TestScopeConnection",
///     tenantId: "6babcaad-604b-40ac-a9d7-9fd97c0b779f",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scope_connection = azure_native.network.ScopeConnection("scopeConnection",
///     description="This is a scope connection to a cross tenant subscription.",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     resource_id="subscriptions/f0dc2b34-dfad-40e4-83e0-2309fed8d00b",
///     scope_connection_name="TestScopeConnection",
///     tenant_id="6babcaad-604b-40ac-a9d7-9fd97c0b779f")
///
/// ```
///
/// ```yaml
/// resources:
///   scopeConnection:
///     type: azure-native:network:ScopeConnection
///     properties:
///       description: This is a scope connection to a cross tenant subscription.
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       resourceId: subscriptions/f0dc2b34-dfad-40e4-83e0-2309fed8d00b
///       scopeConnectionName: TestScopeConnection
///       tenantId: 6babcaad-604b-40ac-a9d7-9fd97c0b779f
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
/// $ pulumi import azure-native:network:ScopeConnection TestScopeConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/scopeConnections/{scopeConnectionName}
/// ```
class ScopeConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A description of the scope connection.
  late final pulumi.Output<String?> description;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Resource ID.
  late final pulumi.Output<String?> resourceId;

  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Tenant ID.
  late final pulumi.Output<String?> tenantId;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ScopeConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScopeConnection]. {@macro pulumi_network_scope_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScopeConnection(
    String name, {
    ScopeConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:ScopeConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
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
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
