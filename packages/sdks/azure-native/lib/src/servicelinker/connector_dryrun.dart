import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_dryrun_args.dart';
import 'create_or_update_dryrun_parameters_response.dart';
import 'system_data_response.dart';

/// a dryrun job resource
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2024-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicelinker [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConnectorDryrunCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectorDryrun = new AzureNative.ServiceLinker.ConnectorDryrun("connectorDryrun", new()
///     {
///         DryrunName = "dryrunName",
///         Location = "westus",
///         Parameters = new AzureNative.ServiceLinker.Inputs.CreateOrUpdateDryrunParametersArgs
///         {
///             ActionName = "createOrUpdate",
///             AuthInfo = new AzureNative.ServiceLinker.Inputs.SecretAuthInfoArgs
///             {
///                 AuthType = "secret",
///                 Name = "name",
///                 SecretInfo = new AzureNative.ServiceLinker.Inputs.ValueSecretInfoArgs
///                 {
///                     SecretType = "rawValue",
///                     Value = "secret",
///                 },
///             },
///             TargetService = new AzureNative.ServiceLinker.Inputs.AzureResourceArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db",
///                 Type = "AzureResource",
///             },
///         },
///         ResourceGroupName = "test-rg",
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
/// 		_, err := servicelinker.NewConnectorDryrun(ctx, "connectorDryrun", &servicelinker.ConnectorDryrunArgs{
/// 			DryrunName: pulumi.String("dryrunName"),
/// 			Location:   pulumi.String("westus"),
/// 			Parameters: &servicelinker.CreateOrUpdateDryrunParametersArgs{
/// 				ActionName: pulumi.String("createOrUpdate"),
/// 				AuthInfo: servicelinker.SecretAuthInfo{
/// 					AuthType: "secret",
/// 					Name:     "name",
/// 					SecretInfo: servicelinker.ValueSecretInfo{
/// 						SecretType: "rawValue",
/// 						Value:      "secret",
/// 					},
/// 				},
/// 				TargetService: servicelinker.AzureResource{
/// 					Id:   "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db",
/// 					Type: "AzureResource",
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.servicelinker.ConnectorDryrun;
/// import com.pulumi.azurenative.servicelinker.ConnectorDryrunArgs;
/// import com.pulumi.azurenative.servicelinker.inputs.CreateOrUpdateDryrunParametersArgs;
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
///         var connectorDryrun = new ConnectorDryrun("connectorDryrun", ConnectorDryrunArgs.builder()
///             .dryrunName("dryrunName")
///             .location("westus")
///             .parameters(CreateOrUpdateDryrunParametersArgs.builder()
///                 .actionName("createOrUpdate")
///                 .authInfo(SecretAuthInfoArgs.builder()
///                     .authType("secret")
///                     .name("name")
///                     .secretInfo(ValueSecretInfoArgs.builder()
///                         .secretType("rawValue")
///                         .value("secret")
///                         .build())
///                     .build())
///                 .targetService(AzureResourceArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db")
///                     .type("AzureResource")
///                     .build())
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const connectorDryrun = new azure_native.servicelinker.ConnectorDryrun("connectorDryrun", {
///     dryrunName: "dryrunName",
///     location: "westus",
///     parameters: {
///         actionName: "createOrUpdate",
///         authInfo: {
///             authType: "secret",
///             name: "name",
///             secretInfo: {
///                 secretType: "rawValue",
///                 value: "secret",
///             },
///         },
///         targetService: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db",
///             type: "AzureResource",
///         },
///     },
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector_dryrun = azure_native.servicelinker.ConnectorDryrun("connectorDryrun",
///     dryrun_name="dryrunName",
///     location="westus",
///     parameters={
///         "action_name": "createOrUpdate",
///         "auth_info": {
///             "auth_type": "secret",
///             "name": "name",
///             "secret_info": {
///                 "secret_type": "rawValue",
///                 "value": "secret",
///             },
///         },
///         "target_service": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db",
///             "type": "AzureResource",
///         },
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   connectorDryrun:
///     type: azure-native:servicelinker:ConnectorDryrun
///     properties:
///       dryrunName: dryrunName
///       location: westus
///       parameters:
///         actionName: createOrUpdate
///         authInfo:
///           authType: secret
///           name: name
///           secretInfo:
///             secretType: rawValue
///             value: secret
///         targetService:
///           id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db
///           type: AzureResource
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:servicelinker:ConnectorDryrun dryrunName /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.ServiceLinker/locations/{location}/dryruns/{dryrunName}
/// ```
class ConnectorDryrun extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// the preview of the operations for creation
  late final pulumi.Output<List<Map<String, dynamic>>> operationPreviews;

  /// The parameters of the dryrun
  late final pulumi.Output<CreateOrUpdateDryrunParametersResponse?> parameters;

  /// the result of the dryrun
  late final pulumi.Output<List<Map<String, dynamic>>> prerequisiteResults;

  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectorDryrun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectorDryrun]. {@macro pulumi_servicelinker_connector_dryrun_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectorDryrun(
    String name, {
    ConnectorDryrunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicelinker:ConnectorDryrun',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    operationPreviews = registerOutput<List<Map<String, dynamic>>>(
      'operationPreviews',
    );
    parameters = registerOutput<CreateOrUpdateDryrunParametersResponse?>(
      'parameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CreateOrUpdateDryrunParametersResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    prerequisiteResults = registerOutput<List<Map<String, dynamic>>>(
      'prerequisiteResults',
    );
    provisioningState = registerOutput<String>('provisioningState');
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
