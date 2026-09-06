import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_pub_sub_custom_certificate_args.dart';

/// A custom certificate.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebPubSubCustomCertificates_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webPubSubCustomCertificate = new AzureNative.WebPubSub.WebPubSubCustomCertificate("webPubSubCustomCertificate", new()
///     {
///         CertificateName = "myCert",
///         KeyVaultBaseUri = "https://myvault.keyvault.azure.net/",
///         KeyVaultSecretName = "mycert",
///         KeyVaultSecretVersion = "bb6a44b2743f47f68dad0d6cc9756432",
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "myWebPubSubService",
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
/// 	webpubsub "github.com/pulumi/pulumi-azure-native-sdk/webpubsub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := webpubsub.NewWebPubSubCustomCertificate(ctx, "webPubSubCustomCertificate", &webpubsub.WebPubSubCustomCertificateArgs{
/// 			CertificateName:       pulumi.String("myCert"),
/// 			KeyVaultBaseUri:       pulumi.String("https://myvault.keyvault.azure.net/"),
/// 			KeyVaultSecretName:    pulumi.String("mycert"),
/// 			KeyVaultSecretVersion: pulumi.String("bb6a44b2743f47f68dad0d6cc9756432"),
/// 			ResourceGroupName:     pulumi.String("myResourceGroup"),
/// 			ResourceName:          pulumi.String("myWebPubSubService"),
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
/// resource "azure-native_webpubsub_webpubsubcustomcertificate" "webPubSubCustomCertificate" {
///   certificate_name         = "myCert"
///   key_vault_base_uri       = "https://myvault.keyvault.azure.net/"
///   key_vault_secret_name    = "mycert"
///   key_vault_secret_version = "bb6a44b2743f47f68dad0d6cc9756432"
///   resource_group_name      = "myResourceGroup"
///   resource_name            = "myWebPubSubService"
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
/// import com.pulumi.azurenative.webpubsub.WebPubSubCustomCertificate;
/// import com.pulumi.azurenative.webpubsub.WebPubSubCustomCertificateArgs;
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
///         var webPubSubCustomCertificate = new WebPubSubCustomCertificate("webPubSubCustomCertificate", WebPubSubCustomCertificateArgs.builder()
///             .certificateName("myCert")
///             .keyVaultBaseUri("https://myvault.keyvault.azure.net/")
///             .keyVaultSecretName("mycert")
///             .keyVaultSecretVersion("bb6a44b2743f47f68dad0d6cc9756432")
///             .resourceGroupName("myResourceGroup")
///             .resourceName("myWebPubSubService")
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
/// const webPubSubCustomCertificate = new azure_native.webpubsub.WebPubSubCustomCertificate("webPubSubCustomCertificate", {
///     certificateName: "myCert",
///     keyVaultBaseUri: "https://myvault.keyvault.azure.net/",
///     keyVaultSecretName: "mycert",
///     keyVaultSecretVersion: "bb6a44b2743f47f68dad0d6cc9756432",
///     resourceGroupName: "myResourceGroup",
///     resourceName: "myWebPubSubService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_pub_sub_custom_certificate = azure_native.webpubsub.WebPubSubCustomCertificate("webPubSubCustomCertificate",
///     certificate_name="myCert",
///     key_vault_base_uri="https://myvault.keyvault.azure.net/",
///     key_vault_secret_name="mycert",
///     key_vault_secret_version="bb6a44b2743f47f68dad0d6cc9756432",
///     resource_group_name="myResourceGroup",
///     resource_name_="myWebPubSubService")
///
/// ```
///
/// ```yaml
/// resources:
///   webPubSubCustomCertificate:
///     type: azure-native:webpubsub:WebPubSubCustomCertificate
///     properties:
///       certificateName: myCert
///       keyVaultBaseUri: https://myvault.keyvault.azure.net/
///       keyVaultSecretName: mycert
///       keyVaultSecretVersion: bb6a44b2743f47f68dad0d6cc9756432
///       resourceGroupName: myResourceGroup
///       resourceName: myWebPubSubService
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
/// $ pulumi import azure-native:webpubsub:WebPubSubCustomCertificate myCert /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/webPubSub/{resourceName}/customCertificates/{certificateName}
/// ```
class WebPubSubCustomCertificate extends pulumi.CustomResource {
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

  /// Creates a new [WebPubSubCustomCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebPubSubCustomCertificate]. {@macro pulumi_webpubsub_web_pub_sub_custom_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebPubSubCustomCertificate(
    String name, {
    WebPubSubCustomCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:webpubsub:WebPubSubCustomCertificate',
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

  /// Creates a typed reference to an existing [WebPubSubCustomCertificate] resource.
  WebPubSubCustomCertificate.reference(String urn)
    : super(
        'azure-native:webpubsub:WebPubSubCustomCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
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
