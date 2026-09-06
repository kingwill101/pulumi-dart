import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_environment_ase_custom_dns_suffix_configuration_args.dart';
import 'system_data_response.dart';

/// Full view of the custom domain suffix configuration for ASEv3.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update ASE custom DNS suffix configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appServiceEnvironmentAseCustomDnsSuffixConfiguration = new AzureNative.Web.AppServiceEnvironmentAseCustomDnsSuffixConfiguration("appServiceEnvironmentAseCustomDnsSuffixConfiguration", new()
///     {
///         CertificateUrl = "https://test-kv.vault.azure.net/secrets/contosocert",
///         DnsSuffix = "contoso.com",
///         KeyVaultReferenceIdentity = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi",
///         Name = "test-ase",
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewAppServiceEnvironmentAseCustomDnsSuffixConfiguration(ctx, "appServiceEnvironmentAseCustomDnsSuffixConfiguration", &web.AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs{
/// 			CertificateUrl:            pulumi.String("https://test-kv.vault.azure.net/secrets/contosocert"),
/// 			DnsSuffix:                 pulumi.String("contoso.com"),
/// 			KeyVaultReferenceIdentity: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi"),
/// 			Name:                      pulumi.String("test-ase"),
/// 			ResourceGroupName:         pulumi.String("test-rg"),
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
/// resource "azure-native_web_appserviceenvironmentasecustomdnssuffixconfiguration" "appServiceEnvironmentAseCustomDnsSuffixConfiguration" {
///   certificate_url              = "https://test-kv.vault.azure.net/secrets/contosocert"
///   dns_suffix                   = "contoso.com"
///   key_vault_reference_identity = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi"
///   name                         = "test-ase"
///   resource_group_name          = "test-rg"
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
/// import com.pulumi.azurenative.web.AppServiceEnvironmentAseCustomDnsSuffixConfiguration;
/// import com.pulumi.azurenative.web.AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs;
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
///         var appServiceEnvironmentAseCustomDnsSuffixConfiguration = new AppServiceEnvironmentAseCustomDnsSuffixConfiguration("appServiceEnvironmentAseCustomDnsSuffixConfiguration", AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs.builder()
///             .certificateUrl("https://test-kv.vault.azure.net/secrets/contosocert")
///             .dnsSuffix("contoso.com")
///             .keyVaultReferenceIdentity("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi")
///             .name("test-ase")
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
/// const appServiceEnvironmentAseCustomDnsSuffixConfiguration = new azure_native.web.AppServiceEnvironmentAseCustomDnsSuffixConfiguration("appServiceEnvironmentAseCustomDnsSuffixConfiguration", {
///     certificateUrl: "https://test-kv.vault.azure.net/secrets/contosocert",
///     dnsSuffix: "contoso.com",
///     keyVaultReferenceIdentity: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi",
///     name: "test-ase",
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_service_environment_ase_custom_dns_suffix_configuration = azure_native.web.AppServiceEnvironmentAseCustomDnsSuffixConfiguration("appServiceEnvironmentAseCustomDnsSuffixConfiguration",
///     certificate_url="https://test-kv.vault.azure.net/secrets/contosocert",
///     dns_suffix="contoso.com",
///     key_vault_reference_identity="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi",
///     name="test-ase",
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   appServiceEnvironmentAseCustomDnsSuffixConfiguration:
///     type: azure-native:web:AppServiceEnvironmentAseCustomDnsSuffixConfiguration
///     properties:
///       certificateUrl: https://test-kv.vault.azure.net/secrets/contosocert
///       dnsSuffix: contoso.com
///       keyVaultReferenceIdentity: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/test-rg/providers/microsoft.managedidentity/userassignedidentities/test-user-mi
///       name: test-ase
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
/// $ pulumi import azure-native:web:AppServiceEnvironmentAseCustomDnsSuffixConfiguration customDnsSuffix /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/hostingEnvironments/{name}/configurations/customdnssuffix
/// ```
class AppServiceEnvironmentAseCustomDnsSuffixConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  late final pulumi.Output<String?> certificateUrl;
  /// The default custom domain suffix to use for all sites deployed on the ASE.
  late final pulumi.Output<String?> dnsSuffix;
  /// The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  late final pulumi.Output<String?> keyVaultReferenceIdentity;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> provisioningDetails;
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AppServiceEnvironmentAseCustomDnsSuffixConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppServiceEnvironmentAseCustomDnsSuffixConfiguration]. {@macro pulumi_web_app_service_environment_ase_custom_dns_suffix_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppServiceEnvironmentAseCustomDnsSuffixConfiguration(
    String name, {
    AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:AppServiceEnvironmentAseCustomDnsSuffixConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificateUrl = registerOutput<String?>('certificateUrl');
    dnsSuffix = registerOutput<String?>('dnsSuffix');
    keyVaultReferenceIdentity = registerOutput<String?>('keyVaultReferenceIdentity');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    provisioningDetails = registerOutput<String>('provisioningDetails');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AppServiceEnvironmentAseCustomDnsSuffixConfiguration] resource.
  AppServiceEnvironmentAseCustomDnsSuffixConfiguration.reference(String urn)
    : super(
        'azure-native:web:AppServiceEnvironmentAseCustomDnsSuffixConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificateUrl = registerOutput<String?>('certificateUrl');
    dnsSuffix = registerOutput<String?>('dnsSuffix');
    keyVaultReferenceIdentity = registerOutput<String?>('keyVaultReferenceIdentity');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    provisioningDetails = registerOutput<String>('provisioningDetails');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
