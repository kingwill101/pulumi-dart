import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_port_authorization_args.dart';

/// ExpressRoutePort Authorization resource definition.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create ExpressRoutePort Authorization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRoutePortAuthorization = new AzureNative.Network.ExpressRoutePortAuthorization("expressRoutePortAuthorization", new()
///     {
///         AuthorizationName = "authorizatinName",
///         ExpressRoutePortName = "expressRoutePortName",
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
/// 		_, err := network.NewExpressRoutePortAuthorization(ctx, "expressRoutePortAuthorization", &network.ExpressRoutePortAuthorizationArgs{
/// 			AuthorizationName:    pulumi.String("authorizatinName"),
/// 			ExpressRoutePortName: pulumi.String("expressRoutePortName"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.ExpressRoutePortAuthorization;
/// import com.pulumi.azurenative.network.ExpressRoutePortAuthorizationArgs;
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
///         var expressRoutePortAuthorization = new ExpressRoutePortAuthorization("expressRoutePortAuthorization", ExpressRoutePortAuthorizationArgs.builder()
///             .authorizationName("authorizatinName")
///             .expressRoutePortName("expressRoutePortName")
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
/// const expressRoutePortAuthorization = new azure_native.network.ExpressRoutePortAuthorization("expressRoutePortAuthorization", {
///     authorizationName: "authorizatinName",
///     expressRoutePortName: "expressRoutePortName",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_port_authorization = azure_native.network.ExpressRoutePortAuthorization("expressRoutePortAuthorization",
///     authorization_name="authorizatinName",
///     express_route_port_name="expressRoutePortName",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   expressRoutePortAuthorization:
///     type: azure-native:network:ExpressRoutePortAuthorization
///     properties:
///       authorizationName: authorizatinName
///       expressRoutePortName: expressRoutePortName
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
/// $ pulumi import azure-native:network:ExpressRoutePortAuthorization authorizationName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRoutePorts/{expressRoutePortName}/authorizations/{authorizationName}
/// ```
class ExpressRoutePortAuthorization extends pulumi.CustomResource {
  /// The authorization key.
  late final pulumi.Output<String> authorizationKey;
  /// The authorization use status.
  late final pulumi.Output<String> authorizationUseStatus;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The reference to the ExpressRoute circuit resource using the authorization.
  late final pulumi.Output<String> circuitResourceUri;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// The provisioning state of the authorization resource.
  late final pulumi.Output<String> provisioningState;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ExpressRoutePortAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRoutePortAuthorization]. {@macro pulumi_network_express_route_port_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRoutePortAuthorization(
    String name, {
    ExpressRoutePortAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ExpressRoutePortAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationKey = registerOutput<String>('authorizationKey');
    authorizationUseStatus = registerOutput<String>('authorizationUseStatus');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    circuitResourceUri = registerOutput<String>('circuitResourceUri');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
