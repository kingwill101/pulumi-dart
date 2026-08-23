import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_certificate_args.dart';
import 'custom_certificate_state.dart';

/// Manages an Azure Web PubSub Custom Certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as azurerm from "@pulumi/azurerm";
/// import * as std from "@pulumi/std";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleWebPubsubService = new azurerm.index.WebPubsubService("example", {
///     name: "example-webpubsub",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     sku: [{
///         name: "Premium_P1",
///         capacity: 1,
///     }],
///     identity: [{
///         type: "SystemAssigned",
///     }],
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     accessPolicies: [
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             certificatePermissions: [
///                 "Create",
///                 "Get",
///                 "List",
///             ],
///             secretPermissions: [
///                 "Get",
///                 "List",
///             ],
///         },
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: testAzurermWebPubsubService.identity[0].principalId,
///             certificatePermissions: [
///                 "Create",
///                 "Get",
///                 "List",
///             ],
///             secretPermissions: [
///                 "Get",
///                 "List",
///             ],
///         },
///     ],
/// });
/// const exampleCertificate = new azure.keyvault.Certificate("example", {
///     name: "imported-cert",
///     keyVaultId: exampleKeyVault.id,
///     certificate: {
///         contents: std.filebase64({
///             input: "certificate-to-import.pfx",
///         }).then(invoke => invoke.result),
///         password: "",
///     },
/// });
/// const test = new azure.webpubsub.CustomCertificate("test", {
///     name: "example-cert",
///     webPubsubId: exampleWebPubsubService.id,
///     customCertificateId: exampleCertificate.id,
/// }, {
///     dependsOn: [exampleAzurermKeyVaultAccessPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_azurerm as azurerm
/// import pulumi_std as std
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_web_pubsub_service = azurerm.WebPubsubService("example",
///     name=example-webpubsub,
///     location=test_azurerm_resource_group.location,
///     resource_group_name=test_azurerm_resource_group.name,
///     sku=[{
///         name: Premium_P1,
///         capacity: 1,
///     }],
///     identity=[{
///         type: SystemAssigned,
///     }])
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     access_policies=[
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "certificate_permissions": [
///                 "Create",
///                 "Get",
///                 "List",
///             ],
///             "secret_permissions": [
///                 "Get",
///                 "List",
///             ],
///         },
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": test_azurerm_web_pubsub_service["identity"][0]["principalId"],
///             "certificate_permissions": [
///                 "Create",
///                 "Get",
///                 "List",
///             ],
///             "secret_permissions": [
///                 "Get",
///                 "List",
///             ],
///         },
///     ])
/// example_certificate = azure.keyvault.Certificate("example",
///     name="imported-cert",
///     key_vault_id=example_key_vault.id,
///     certificate={
///         "contents": std.filebase64(input="certificate-to-import.pfx").result,
///         "password": "",
///     })
/// test = azure.webpubsub.CustomCertificate("test",
///     name="example-cert",
///     web_pubsub_id=example_web_pubsub_service["id"],
///     custom_certificate_id=example_certificate.id,
///     opts = pulumi.ResourceOptions(depends_on=[example_azurerm_key_vault_access_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Azurerm = Pulumi.Azurerm;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleWebPubsubService = new Azurerm.WebPubsubService("example", new()
///     {
///         Name = "example-webpubsub",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         Sku = new[]
///         {
///
///             {
///                 { "name", "Premium_P1" },
///                 { "capacity", 1 },
///             },
///         },
///         Identity = new[]
///         {
///
///             {
///                 { "type", "SystemAssigned" },
///             },
///         },
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 CertificatePermissions = new[]
///                 {
///                     "Create",
///                     "Get",
///                     "List",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Get",
///                     "List",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = testAzurermWebPubsubService.Identity[0].PrincipalId,
///                 CertificatePermissions = new[]
///                 {
///                     "Create",
///                     "Get",
///                     "List",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Get",
///                     "List",
///                 },
///             },
///         },
///     });
///
///     var exampleCertificate = new Azure.KeyVault.Certificate("example", new()
///     {
///         Name = "imported-cert",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyVaultCertificate = new Azure.KeyVault.Inputs.CertificateCertificateArgs
///         {
///             Contents = Std.Filebase64.Invoke(new()
///             {
///                 Input = "certificate-to-import.pfx",
///             }).Apply(invoke => invoke.Result),
///             Password = "",
///         },
///     });
///
///     var test = new Azure.WebPubSub.CustomCertificate("test", new()
///     {
///         Name = "example-cert",
///         WebPubsubId = exampleWebPubsubService.Id,
///         CustomCertificateId = exampleCertificate.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAzurermKeyVaultAccessPolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/webpubsub"
/// 	"github.com/pulumi/pulumi-azurerm/sdk/go/azurerm"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWebPubsubService, err := azurerm.NewWebPubsubService(ctx, "example", &azurerm.WebPubsubServiceArgs{
/// 			Name:              "example-webpubsub",
/// 			Location:          testAzurermResourceGroup.Location,
/// 			ResourceGroupName: testAzurermResourceGroup.Name,
/// 			Sku: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"name":     "Premium_P1",
/// 					"capacity": 1,
/// 				},
/// 			},
/// 			Identity: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"type": "SystemAssigned",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("examplekeyvault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			SkuName:           pulumi.String("premium"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					CertificatePermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.Any(testAzurermWebPubsubService.Identity[0].PrincipalId),
/// 					CertificatePermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "certificate-to-import.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCertificate, err := keyvault.NewCertificate(ctx, "example", &keyvault.CertificateArgs{
/// 			Name:       pulumi.String("imported-cert"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			Certificate: &keyvault.CertificateCertificateArgs{
/// 				Contents: pulumi.String(invokeFilebase64.Result),
/// 				Password: pulumi.String(""),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = webpubsub.NewCustomCertificate(ctx, "test", &webpubsub.CustomCertificateArgs{
/// 			Name:                pulumi.String("example-cert"),
/// 			WebPubsubId:         exampleWebPubsubService.Id,
/// 			CustomCertificateId: exampleCertificate.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAzurermKeyVaultAccessPolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azurerm_webpubsubservice" "example" {
///   name                = "example-webpubsub"
///   location            = testAzurermResourceGroup.location
///   resource_group_name = testAzurermResourceGroup.name
///   sku = [{
///     "name"     = "Premium_P1"
///     "capacity" = 1
///   }]
///   identity = [{
///     "type" = "SystemAssigned"
///   }]
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                = "examplekeyvault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   tenant_id           = data.azure_core_getclientconfig.current.tenant_id
///   sku_name            = "premium"
///   access_policies {
///     tenant_id               = data.azure_core_getclientconfig.current.tenant_id
///     object_id               = data.azure_core_getclientconfig.current.object_id
///     certificate_permissions = ["Create", "Get", "List"]
///     secret_permissions      = ["Get", "List"]
///   }
///   access_policies {
///     tenant_id               = data.azure_core_getclientconfig.current.tenant_id
///     object_id               = testAzurermWebPubsubService.identity[0].principalId
///     certificate_permissions = ["Create", "Get", "List"]
///     secret_permissions      = ["Get", "List"]
///   }
/// }
/// resource "azure_keyvault_certificate" "example" {
///   name         = "imported-cert"
///   key_vault_id = azure_keyvault_keyvault.example.id
///   certificate = {
///     contents = filebase64("certificate-to-import.pfx")
///     password = ""
///   }
/// }
/// resource "azure_webpubsub_customcertificate" "test" {
///   depends_on            = [exampleAzurermKeyVaultAccessPolicy]
///   name                  = "example-cert"
///   web_pubsub_id         = azurerm_webpubsubservice.example.id
///   custom_certificate_id = azure_keyvault_certificate.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azurerm.WebPubsubService;
/// import com.pulumi.azurerm.WebPubsubServiceArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Certificate;
/// import com.pulumi.azure.keyvault.CertificateArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.azure.webpubsub.CustomCertificate;
/// import com.pulumi.azure.webpubsub.CustomCertificateArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleWebPubsubService = new WebPubsubService("exampleWebPubsubService", WebPubsubServiceArgs.builder()
///             .name("example-webpubsub")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .sku(Arrays.asList(Map.ofEntries(
///                 Map.entry("name", "Premium_P1"),
///                 Map.entry("capacity", 1)
///             )))
///             .identity(Arrays.asList(Map.of("type", "SystemAssigned")))
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .certificatePermissions(
///                         "Create",
///                         "Get",
///                         "List")
///                     .secretPermissions(
///                         "Get",
///                         "List")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(testAzurermWebPubsubService.identity()[0].principalId())
///                     .certificatePermissions(
///                         "Create",
///                         "Get",
///                         "List")
///                     .secretPermissions(
///                         "Get",
///                         "List")
///                     .build())
///             .build());
///
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .name("imported-cert")
///             .keyVaultId(exampleKeyVault.id())
///             .certificate(CertificateCertificateArgs.builder()
///                 .contents(StdFunctions.filebase64(Filebase64Args.builder()
///                     .input("certificate-to-import.pfx")
///                     .build()).result())
///                 .password("")
///                 .build())
///             .build());
///
///         var test = new CustomCertificate("test", CustomCertificateArgs.builder()
///             .name("example-cert")
///             .webPubsubId(exampleWebPubsubService.id())
///             .customCertificateId(exampleCertificate.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAzurermKeyVaultAccessPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleWebPubsubService:
///     type: azurerm:WebPubsubService
///     name: example
///     properties:
///       name: example-webpubsub
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       sku:
///         - name: Premium_P1
///           capacity: 1
///       identity:
///         - type: SystemAssigned
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           certificatePermissions:
///             - Create
///             - Get
///             - List
///           secretPermissions:
///             - Get
///             - List
///         - tenantId: ${current.tenantId}
///           objectId: ${testAzurermWebPubsubService.identity[0].principalId}
///           certificatePermissions:
///             - Create
///             - Get
///             - List
///           secretPermissions:
///             - Get
///             - List
///   exampleCertificate:
///     type: azure:keyvault:Certificate
///     name: example
///     properties:
///       name: imported-cert
///       keyVaultId: ${exampleKeyVault.id}
///       certificate:
///         contents:
///           fn::invoke:
///             function: std:filebase64
///             arguments:
///               input: certificate-to-import.pfx
///             return: result
///         password: ""
///   test:
///     type: azure:webpubsub:CustomCertificate
///     properties:
///       name: example-cert
///       webPubsubId: ${exampleWebPubsubService.id}
///       customCertificateId: ${exampleCertificate.id}
///     options:
///       dependsOn:
///         - ${exampleAzurermKeyVaultAccessPolicy}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.SignalRService` - 2024-03-01
///
/// ## Import
///
/// Custom Certificate for a Web PubSub service can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:webpubsub/customCertificate:CustomCertificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/webPubSub/WebPubsub1/customCertificates/cert1
/// ```
class CustomCertificate extends pulumi.CustomResource {
  /// The certificate version of the Web PubSub Custom Certificate.
  late final pulumi.Output<String> certificateVersion;
  /// The certificate ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Self assigned certificate is not supported and the provisioning status will fail.
  late final pulumi.Output<String> customCertificateId;
  /// The name of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Web PubSub ID of the Web PubSub Custom Certificate. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** custom certificate is only available for Web PubSub Premium tier. Please enable managed identity in the corresponding Web PubSub Service and give the managed identity access to the key vault, the required permission is Get Certificate and Secret.
  late final pulumi.Output<String> webPubsubId;

  /// Creates a new [CustomCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomCertificate]. {@macro pulumi_webpubsub_custom_certificate_custom_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomCertificate(
    String name, {
    CustomCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:webpubsub/customCertificate:CustomCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateVersion = registerOutput<String>('certificateVersion');
    customCertificateId = registerOutput<String>('customCertificateId');
    this.name = registerOutput<String>('name');
    webPubsubId = registerOutput<String>('webPubsubId');
  }

  /// Gets an existing [CustomCertificate] resource's state with the given [name] and [id].
  static CustomCertificate get(
    String name,
    pulumi.Input<String> id, {
    CustomCertificateState? state,
  }) {
    return CustomCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:webpubsub/customCertificate:CustomCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateVersion = registerOutput<String>('certificateVersion');
    customCertificateId = registerOutput<String>('customCertificateId');
    this.name = registerOutput<String>('name');
    webPubsubId = registerOutput<String>('webPubsubId');
  }
}
