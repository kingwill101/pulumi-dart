import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_info_base_response.dart';
import 'azure_resource_response.dart';
import 'configuration_info_response.dart';
import 'linker_args.dart';
import 'public_network_solution_response.dart';
import 'secret_store_response.dart';
import 'system_data_response.dart';
import 'vnet_solution_response.dart';

/// Linker of source and target resource
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2024-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicelinker [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutLinker
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linker = new AzureNative.ServiceLinker.Linker("linker", new()
///     {
///         AuthInfo = new AzureNative.ServiceLinker.Inputs.SecretAuthInfoArgs
///         {
///             AuthType = "secret",
///             Name = "name",
///             SecretInfo = new AzureNative.ServiceLinker.Inputs.ValueSecretInfoArgs
///             {
///                 SecretType = "rawValue",
///                 Value = "secret",
///             },
///         },
///         LinkerName = "linkName",
///         ResourceUri = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app",
///         TargetService = new AzureNative.ServiceLinker.Inputs.AzureResourceArgs
///         {
///             Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DBforPostgreSQL/servers/test-pg/databases/test-db",
///             Type = "AzureResource",
///         },
///         VNetSolution = new AzureNative.ServiceLinker.Inputs.VNetSolutionArgs
///         {
///             Type = AzureNative.ServiceLinker.VNetSolutionType.ServiceEndpoint,
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
/// 	servicelinker "github.com/pulumi/pulumi-azure-native-sdk/servicelinker/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicelinker.NewLinker(ctx, "linker", &servicelinker.LinkerArgs{
/// 			AuthInfo: &servicelinker.SecretAuthInfoArgs{
/// 				AuthType: pulumi.String("secret"),
/// 				Name:     pulumi.String("name"),
/// 				SecretInfo: servicelinker.ValueSecretInfo{
/// 					SecretType: "rawValue",
/// 					Value:      "secret",
/// 				},
/// 			},
/// 			LinkerName:  pulumi.String("linkName"),
/// 			ResourceUri: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app"),
/// 			TargetService: &servicelinker.AzureResourceArgs{
/// 				Id:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DBforPostgreSQL/servers/test-pg/databases/test-db"),
/// 				Type: pulumi.String("AzureResource"),
/// 			},
/// 			VNetSolution: &servicelinker.VNetSolutionArgs{
/// 				Type: pulumi.String(servicelinker.VNetSolutionTypeServiceEndpoint),
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
/// import com.pulumi.azurenative.servicelinker.Linker;
/// import com.pulumi.azurenative.servicelinker.LinkerArgs;
/// import com.pulumi.azurenative.servicelinker.inputs.VNetSolutionArgs;
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
///         var linker = new Linker("linker", LinkerArgs.builder()
///             .authInfo(SecretAuthInfoArgs.builder()
///                 .authType("secret")
///                 .name("name")
///                 .secretInfo(ValueSecretInfoArgs.builder()
///                     .secretType("rawValue")
///                     .value("secret")
///                     .build())
///                 .build())
///             .linkerName("linkName")
///             .resourceUri("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app")
///             .targetService(AzureResourceArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DBforPostgreSQL/servers/test-pg/databases/test-db")
///                 .type("AzureResource")
///                 .build())
///             .vNetSolution(VNetSolutionArgs.builder()
///                 .type("serviceEndpoint")
///                 .build())
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
/// const linker = new azure_native.servicelinker.Linker("linker", {
///     authInfo: {
///         authType: "secret",
///         name: "name",
///         secretInfo: {
///             secretType: "rawValue",
///             value: "secret",
///         },
///     },
///     linkerName: "linkName",
///     resourceUri: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app",
///     targetService: {
///         id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DBforPostgreSQL/servers/test-pg/databases/test-db",
///         type: "AzureResource",
///     },
///     vNetSolution: {
///         type: azure_native.servicelinker.VNetSolutionType.ServiceEndpoint,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linker = azure_native.servicelinker.Linker("linker",
///     auth_info={
///         "auth_type": "secret",
///         "name": "name",
///         "secret_info": {
///             "secret_type": "rawValue",
///             "value": "secret",
///         },
///     },
///     linker_name="linkName",
///     resource_uri="subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app",
///     target_service={
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DBforPostgreSQL/servers/test-pg/databases/test-db",
///         "type": "AzureResource",
///     },
///     v_net_solution={
///         "type": azure_native.servicelinker.VNetSolutionType.SERVICE_ENDPOINT,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   linker:
///     type: azure-native:servicelinker:Linker
///     properties:
///       authInfo:
///         authType: secret
///         name: name
///         secretInfo:
///           secretType: rawValue
///           value: secret
///       linkerName: linkName
///       resourceUri: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app
///       targetService:
///         id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DBforPostgreSQL/servers/test-pg/databases/test-db
///         type: AzureResource
///       vNetSolution:
///         type: serviceEndpoint
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
/// $ pulumi import azure-native:servicelinker:Linker linkName /{resourceUri}/providers/Microsoft.ServiceLinker/linkers/{linkerName}
/// ```
class Linker extends pulumi.CustomResource {
  /// The authentication type.
  late final pulumi.Output<AccessKeyInfoBaseResponse?> authInfo;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The application client type
  late final pulumi.Output<String?> clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  late final pulumi.Output<ConfigurationInfoResponse?> configurationInfo;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The network solution.
  late final pulumi.Output<PublicNetworkSolutionResponse?> publicNetworkSolution;
  /// connection scope in source service.
  late final pulumi.Output<String?> scope;
  /// An option to store secret value in secure place
  late final pulumi.Output<SecretStoreResponse?> secretStore;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The target service properties
  late final pulumi.Output<AzureResourceResponse?> targetService;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The VNet solution.
  late final pulumi.Output<VNetSolutionResponse?> vNetSolution;

  /// Creates a new [Linker].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Linker]. {@macro pulumi_servicelinker_linker_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Linker(
    String name, {
    LinkerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicelinker:Linker',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authInfo = registerOutput<AccessKeyInfoBaseResponse?>('authInfo');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.clientType = registerOutput<String?>('clientType');
    this.configurationInfo = registerOutput<ConfigurationInfoResponse?>('configurationInfo');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicNetworkSolution = registerOutput<PublicNetworkSolutionResponse?>('publicNetworkSolution');
    this.scope = registerOutput<String?>('scope');
    this.secretStore = registerOutput<SecretStoreResponse?>('secretStore');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.targetService = registerOutput<AzureResourceResponse?>('targetService');
    this.type = registerOutput<String>('type');
    this.vNetSolution = registerOutput<VNetSolutionResponse?>('vNetSolution');
  }
}
