import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_or_update_dryrun_parameters_response.dart';
import 'dryrun_operation_preview_response.dart';
import 'linker_dryrun_args.dart';
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
/// ### PutDryrun
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkerDryrun = new AzureNative.ServiceLinker.LinkerDryrun("linkerDryrun", new()
///     {
///         DryrunName = "dryrunName",
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
///         ResourceUri = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app",
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
/// 		_, err := servicelinker.NewLinkerDryrun(ctx, "linkerDryrun", &servicelinker.LinkerDryrunArgs{
/// 			DryrunName: pulumi.String("dryrunName"),
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
/// 			ResourceUri: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app"),
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
/// resource "azure-native_servicelinker_linkerdryrun" "linkerDryrun" {
///   dryrun_name = "dryrunName"
///   parameters = {
///     action_name = "createOrUpdate"
///     auth_info = {
///       "authType" = "secret"
///       "name"     = "name"
///       "secretInfo" = {
///         "secretType" = "rawValue"
///         "value"      = "secret"
///       }
///     }
///     target_service = {
///       "id"   = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.DocumentDb/databaseAccounts/test-acc/mongodbDatabases/test-db"
///       "type" = "AzureResource"
///     }
///   }
///   resource_uri = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app"
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
/// import com.pulumi.azurenative.servicelinker.LinkerDryrun;
/// import com.pulumi.azurenative.servicelinker.LinkerDryrunArgs;
/// import com.pulumi.azurenative.servicelinker.inputs.CreateOrUpdateDryrunParametersArgs;
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
///         var linkerDryrun = new LinkerDryrun("linkerDryrun", LinkerDryrunArgs.builder()
///             .dryrunName("dryrunName")
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
///             .resourceUri("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app")
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
/// const linkerDryrun = new azure_native.servicelinker.LinkerDryrun("linkerDryrun", {
///     dryrunName: "dryrunName",
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
///     resourceUri: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linker_dryrun = azure_native.servicelinker.LinkerDryrun("linkerDryrun",
///     dryrun_name="dryrunName",
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
///     resource_uri="subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app")
///
/// ```
///
/// ```yaml
/// resources:
///   linkerDryrun:
///     type: azure-native:servicelinker:LinkerDryrun
///     properties:
///       dryrunName: dryrunName
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
///       resourceUri: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Web/sites/test-app
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
/// $ pulumi import azure-native:servicelinker:LinkerDryrun dryrunName /{resourceUri}/providers/Microsoft.ServiceLinker/dryruns/{dryrunName}
/// ```
class LinkerDryrun extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// the preview of the operations for creation
  late final pulumi.Output<List<DryrunOperationPreviewResponse>> operationPreviews;
  /// The parameters of the dryrun
  late final pulumi.Output<CreateOrUpdateDryrunParametersResponse?> parameters;
  /// the result of the dryrun
  late final pulumi.Output<List<dynamic>> prerequisiteResults;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LinkerDryrun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkerDryrun]. {@macro pulumi_servicelinker_linker_dryrun_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkerDryrun(
    String name, {
    LinkerDryrunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicelinker:LinkerDryrun',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    operationPreviews = registerOutput<List<DryrunOperationPreviewResponse>>('operationPreviews', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DryrunOperationPreviewResponse>(guardedValue, (value) => DryrunOperationPreviewResponse.fromMap((value as Map).cast<String, dynamic>())); });
    parameters = registerOutput<CreateOrUpdateDryrunParametersResponse?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CreateOrUpdateDryrunParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    prerequisiteResults = registerOutput<List<dynamic>>('prerequisiteResults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LinkerDryrun] resource.
  LinkerDryrun.reference(String urn)
    : super(
        'azure-native:servicelinker:LinkerDryrun',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    operationPreviews = registerOutput<List<DryrunOperationPreviewResponse>>('operationPreviews', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DryrunOperationPreviewResponse>(guardedValue, (value) => DryrunOperationPreviewResponse.fromMap((value as Map).cast<String, dynamic>())); });
    parameters = registerOutput<CreateOrUpdateDryrunParametersResponse?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CreateOrUpdateDryrunParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    prerequisiteResults = registerOutput<List<dynamic>>('prerequisiteResults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
