import 'package:pulumi/pulumi.dart' as pulumi;
import 'operation_by_provider_registration_args.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2021-09-01-preview.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Operations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var operationByProviderRegistration = new AzureNative.ProviderHub.OperationByProviderRegistration("operationByProviderRegistration", new()
///     {
///         ProviderNamespace = "Microsoft.Contoso",
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
/// 	providerhub "github.com/pulumi/pulumi-azure-native-sdk/providerhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := providerhub.NewOperationByProviderRegistration(ctx, "operationByProviderRegistration", &providerhub.OperationByProviderRegistrationArgs{
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
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
/// import com.pulumi.azurenative.providerhub.OperationByProviderRegistration;
/// import com.pulumi.azurenative.providerhub.OperationByProviderRegistrationArgs;
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
///         var operationByProviderRegistration = new OperationByProviderRegistration("operationByProviderRegistration", OperationByProviderRegistrationArgs.builder()
///             .providerNamespace("Microsoft.Contoso")
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
/// const operationByProviderRegistration = new azure_native.providerhub.OperationByProviderRegistration("operationByProviderRegistration", {providerNamespace: "Microsoft.Contoso"});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// operation_by_provider_registration = azure_native.providerhub.OperationByProviderRegistration("operationByProviderRegistration", provider_namespace="Microsoft.Contoso")
///
/// ```
///
/// ```yaml
/// resources:
///   operationByProviderRegistration:
///     type: azure-native:providerhub:OperationByProviderRegistration
///     properties:
///       providerNamespace: Microsoft.Contoso
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
/// $ pulumi import azure-native:providerhub:OperationByProviderRegistration operationTest /subscriptions/{subscriptionId}/providers/Microsoft.ProviderHub/providerRegistrations/{providerNamespace}/operations/default
/// ```
class OperationByProviderRegistration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OperationByProviderRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OperationByProviderRegistration]. {@macro pulumi_providerhub_operation_by_provider_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OperationByProviderRegistration(
    String name, {
    OperationByProviderRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:providerhub:OperationByProviderRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
