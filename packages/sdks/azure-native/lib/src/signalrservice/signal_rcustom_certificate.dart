import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_rcustom_certificate_args.dart';
import 'system_data_response.dart';

/// A custom certificate.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SignalRCustomCertificates_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var signalRCustomCertificate = new AzureNative.SignalRService.SignalRCustomCertificate("signalRCustomCertificate", new()
///     {
///         CertificateName = "myCert",
///         KeyVaultBaseUri = "https://myvault.keyvault.azure.net/",
///         KeyVaultSecretName = "mycert",
///         KeyVaultSecretVersion = "bb6a44b2743f47f68dad0d6cc9756432",
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "mySignalRService",
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
/// 	signalrservice "github.com/pulumi/pulumi-azure-native-sdk/signalrservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := signalrservice.NewSignalRCustomCertificate(ctx, "signalRCustomCertificate", &signalrservice.SignalRCustomCertificateArgs{
/// 			CertificateName:       pulumi.String("myCert"),
/// 			KeyVaultBaseUri:       pulumi.String("https://myvault.keyvault.azure.net/"),
/// 			KeyVaultSecretName:    pulumi.String("mycert"),
/// 			KeyVaultSecretVersion: pulumi.String("bb6a44b2743f47f68dad0d6cc9756432"),
/// 			ResourceGroupName:     pulumi.String("myResourceGroup"),
/// 			ResourceName:          pulumi.String("mySignalRService"),
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
/// import com.pulumi.azurenative.signalrservice.SignalRCustomCertificate;
/// import com.pulumi.azurenative.signalrservice.SignalRCustomCertificateArgs;
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
///         var signalRCustomCertificate = new SignalRCustomCertificate("signalRCustomCertificate", SignalRCustomCertificateArgs.builder()
///             .certificateName("myCert")
///             .keyVaultBaseUri("https://myvault.keyvault.azure.net/")
///             .keyVaultSecretName("mycert")
///             .keyVaultSecretVersion("bb6a44b2743f47f68dad0d6cc9756432")
///             .resourceGroupName("myResourceGroup")
///             .resourceName("mySignalRService")
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
/// const signalRCustomCertificate = new azure_native.signalrservice.SignalRCustomCertificate("signalRCustomCertificate", {
///     certificateName: "myCert",
///     keyVaultBaseUri: "https://myvault.keyvault.azure.net/",
///     keyVaultSecretName: "mycert",
///     keyVaultSecretVersion: "bb6a44b2743f47f68dad0d6cc9756432",
///     resourceGroupName: "myResourceGroup",
///     resourceName: "mySignalRService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// signal_r_custom_certificate = azure_native.signalrservice.SignalRCustomCertificate("signalRCustomCertificate",
///     certificate_name="myCert",
///     key_vault_base_uri="https://myvault.keyvault.azure.net/",
///     key_vault_secret_name="mycert",
///     key_vault_secret_version="bb6a44b2743f47f68dad0d6cc9756432",
///     resource_group_name="myResourceGroup",
///     resource_name_="mySignalRService")
///
/// ```
///
/// ```yaml
/// resources:
///   signalRCustomCertificate:
///     type: azure-native:signalrservice:SignalRCustomCertificate
///     properties:
///       certificateName: myCert
///       keyVaultBaseUri: https://myvault.keyvault.azure.net/
///       keyVaultSecretName: mycert
///       keyVaultSecretVersion: bb6a44b2743f47f68dad0d6cc9756432
///       resourceGroupName: myResourceGroup
///       resourceName: mySignalRService
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
/// $ pulumi import azure-native:signalrservice:SignalRCustomCertificate myCert /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/signalR/{resourceName}/customCertificates/{certificateName}
/// ```
class SignalRCustomCertificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Base uri of the KeyVault that stores certificate.
  late final pulumi.Output<String> keyVaultBaseUri;
  /// Certificate secret name.
  late final pulumi.Output<String> keyVaultSecretName;
  /// Certificate secret version.
  late final pulumi.Output<String?> keyVaultSecretVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SignalRCustomCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SignalRCustomCertificate]. {@macro pulumi_signalrservice_signal_rcustom_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SignalRCustomCertificate(
    String name, {
    SignalRCustomCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:signalrservice:SignalRCustomCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    keyVaultBaseUri = registerOutput<String>('keyVaultBaseUri');
    keyVaultSecretName = registerOutput<String>('keyVaultSecretName');
    keyVaultSecretVersion = registerOutput<String?>('keyVaultSecretVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
