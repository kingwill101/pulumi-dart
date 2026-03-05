import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_info_base_response.dart';
import 'azure_resource_response.dart';
import 'configuration_info_response.dart';
import 'connector_args.dart';
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
/// ### PutConnector
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.ServiceLinker.Connector("connector", new()
///     {
///         AuthInfo = new AzureNative.ServiceLinker.Inputs.SecretAuthInfoArgs
///         {
///             AuthType = "secret",
///         },
///         ConnectorName = "connectorName",
///         Location = "westus",
///         ResourceGroupName = "test-rg",
///         SecretStore = new AzureNative.ServiceLinker.Inputs.SecretStoreArgs
///         {
///             KeyVaultId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/test-kv",
///         },
///         TargetService = new AzureNative.ServiceLinker.Inputs.AzureResourceArgs
///         {
///             Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db",
///             Type = "AzureResource",
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
/// 		_, err := servicelinker.NewConnector(ctx, "connector", &servicelinker.ConnectorArgs{
/// 			AuthInfo: &servicelinker.SecretAuthInfoArgs{
/// 				AuthType: pulumi.String("secret"),
/// 			},
/// 			ConnectorName:     pulumi.String("connectorName"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SecretStore: &servicelinker.SecretStoreArgs{
/// 				KeyVaultId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/test-kv"),
/// 			},
/// 			TargetService: &servicelinker.AzureResourceArgs{
/// 				Id:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db"),
/// 				Type: pulumi.String("AzureResource"),
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
/// import com.pulumi.azurenative.servicelinker.Connector;
/// import com.pulumi.azurenative.servicelinker.ConnectorArgs;
/// import com.pulumi.azurenative.servicelinker.inputs.SecretStoreArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .authInfo(SecretAuthInfoArgs.builder()
///                 .authType("secret")
///                 .build())
///             .connectorName("connectorName")
///             .location("westus")
///             .resourceGroupName("test-rg")
///             .secretStore(SecretStoreArgs.builder()
///                 .keyVaultId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/test-kv")
///                 .build())
///             .targetService(AzureResourceArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db")
///                 .type("AzureResource")
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
/// const connector = new azure_native.servicelinker.Connector("connector", {
///     authInfo: {
///         authType: "secret",
///     },
///     connectorName: "connectorName",
///     location: "westus",
///     resourceGroupName: "test-rg",
///     secretStore: {
///         keyVaultId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/test-kv",
///     },
///     targetService: {
///         id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db",
///         type: "AzureResource",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.servicelinker.Connector("connector",
///     auth_info={
///         "auth_type": "secret",
///     },
///     connector_name="connectorName",
///     location="westus",
///     resource_group_name="test-rg",
///     secret_store={
///         "key_vault_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/test-kv",
///     },
///     target_service={
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db",
///         "type": "AzureResource",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:servicelinker:Connector
///     properties:
///       authInfo:
///         authType: secret
///       connectorName: connectorName
///       location: westus
///       resourceGroupName: test-rg
///       secretStore:
///         keyVaultId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/test-kv
///       targetService:
///         id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db
///         type: AzureResource
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
/// $ pulumi import azure-native:servicelinker:Connector linkName /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.ServiceLinker/locations/{location}/connectors/{connectorName}
/// ```
class Connector extends pulumi.CustomResource {
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

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_servicelinker_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicelinker:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authInfo = registerOutput<AccessKeyInfoBaseResponse?>('authInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessKeyInfoBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientType = registerOutput<String?>('clientType');
    configurationInfo = registerOutput<ConfigurationInfoResponse?>('configurationInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkSolution = registerOutput<PublicNetworkSolutionResponse?>('publicNetworkSolution', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PublicNetworkSolutionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scope = registerOutput<String?>('scope');
    secretStore = registerOutput<SecretStoreResponse?>('secretStore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecretStoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetService = registerOutput<AzureResourceResponse?>('targetService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vNetSolution = registerOutput<VNetSolutionResponse?>('vNetSolution', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VNetSolutionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
