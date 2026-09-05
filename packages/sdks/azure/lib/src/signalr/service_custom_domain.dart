import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_custom_domain_args.dart';
import 'service_custom_domain_state.dart';

/// Manages an Azure SignalR Custom Domain.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.signalr.Service("example", {
///     name: "example-signalr",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     sku: {
///         name: "Premium_P1",
///         capacity: 1,
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example-keyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     rbacAuthorizationEnabled: false,
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
///             objectId: testAzurermSignalrService.identity[0].principalId,
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
/// const test = new azure.signalr.ServiceCustomCertificate("test", {
///     name: "example-cert",
///     signalrServiceId: exampleService.id,
///     customCertificateId: exampleCertificate.id,
/// }, {
///     dependsOn: [exampleAzurermKeyVaultAccessPolicy],
/// });
/// const testServiceCustomDomain = new azure.signalr.ServiceCustomDomain("test", {
///     name: "example-domain",
///     signalrServiceId: testAzurermSignalrService.id,
///     domainName: "tftest.com",
///     signalrCustomCertificateId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.signalr.Service("example",
///     name="example-signalr",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     sku={
///         "name": "Premium_P1",
///         "capacity": 1,
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example-keyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     rbac_authorization_enabled=False,
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
///             "object_id": test_azurerm_signalr_service["identity"][0]["principalId"],
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
/// test = azure.signalr.ServiceCustomCertificate("test",
///     name="example-cert",
///     signalr_service_id=example_service.id,
///     custom_certificate_id=example_certificate.id,
///     opts = pulumi.ResourceOptions(depends_on=[example_azurerm_key_vault_access_policy]))
/// test_service_custom_domain = azure.signalr.ServiceCustomDomain("test",
///     name="example-domain",
///     signalr_service_id=test_azurerm_signalr_service["id"],
///     domain_name="tftest.com",
///     signalr_custom_certificate_id=test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
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
///     var exampleService = new Azure.SignalR.Service("example", new()
///     {
///         Name = "example-signalr",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         Sku = new Azure.SignalR.Inputs.ServiceSkuArgs
///         {
///             Name = "Premium_P1",
///             Capacity = 1,
///         },
///         Identity = new Azure.SignalR.Inputs.ServiceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example-keyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         RbacAuthorizationEnabled = false,
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
///                 ObjectId = testAzurermSignalrService.Identity[0].PrincipalId,
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
///     var test = new Azure.SignalR.ServiceCustomCertificate("test", new()
///     {
///         Name = "example-cert",
///         SignalrServiceId = exampleService.Id,
///         CustomCertificateId = exampleCertificate.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAzurermKeyVaultAccessPolicy,
///         },
///     });
///
///     var testServiceCustomDomain = new Azure.SignalR.ServiceCustomDomain("test", new()
///     {
///         Name = "example-domain",
///         SignalrServiceId = testAzurermSignalrService.Id,
///         DomainName = "tftest.com",
///         SignalrCustomCertificateId = test.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/signalr"
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
/// 		exampleService, err := signalr.NewService(ctx, "example", &signalr.ServiceArgs{
/// 			Name:              pulumi.String("example-signalr"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			Sku: &signalr.ServiceSkuArgs{
/// 				Name:     pulumi.String("Premium_P1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 			Identity: &signalr.ServiceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("example-keyvault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			RbacAuthorizationEnabled: pulumi.Bool(false),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SkuName:                  pulumi.String("premium"),
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
/// 					ObjectId: pulumi.Any(testAzurermSignalrService.Identity[0].PrincipalId),
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
/// 			KeyVaultId: exampleKeyVault.ID().ToIDOutput().ToStringOutput(),
/// 			Certificate: &keyvault.CertificateCertificateArgs{
/// 				Contents: pulumi.String(invokeFilebase64.Result),
/// 				Password: pulumi.String(""),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := signalr.NewServiceCustomCertificate(ctx, "test", &signalr.ServiceCustomCertificateArgs{
/// 			Name:                pulumi.String("example-cert"),
/// 			SignalrServiceId:    exampleService.ID().ToIDOutput().ToStringOutput(),
/// 			CustomCertificateId: exampleCertificate.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAzurermKeyVaultAccessPolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signalr.NewServiceCustomDomain(ctx, "test", &signalr.ServiceCustomDomainArgs{
/// 			Name:                       pulumi.String("example-domain"),
/// 			SignalrServiceId:           pulumi.Any(testAzurermSignalrService.Id),
/// 			DomainName:                 pulumi.String("tftest.com"),
/// 			SignalrCustomCertificateId: test.ID().ToIDOutput().ToStringOutput(),
/// 		})
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
/// resource "azure_signalr_service" "example" {
///   name                = "example-signalr"
///   location            = testAzurermResourceGroup.location
///   resource_group_name = testAzurermResourceGroup.name
///   sku = {
///     name     = "Premium_P1"
///     capacity = 1
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                       = "example-keyvault"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   rbac_authorization_enabled = false
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   sku_name                   = "premium"
///   access_policies {
///     tenant_id               = data.azure_core_getclientconfig.current.tenant_id
///     object_id               = data.azure_core_getclientconfig.current.object_id
///     certificate_permissions = ["Create", "Get", "List"]
///     secret_permissions      = ["Get", "List"]
///   }
///   access_policies {
///     tenant_id               = data.azure_core_getclientconfig.current.tenant_id
///     object_id               = testAzurermSignalrService.identity[0].principalId
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
/// resource "azure_signalr_servicecustomcertificate" "test" {
///   depends_on            = [exampleAzurermKeyVaultAccessPolicy]
///   name                  = "example-cert"
///   signalr_service_id    = azure_signalr_service.example.id
///   custom_certificate_id = azure_keyvault_certificate.example.id
/// }
/// resource "azure_signalr_servicecustomdomain" "test" {
///   name                          = "example-domain"
///   signalr_service_id            = testAzurermSignalrService.id
///   domain_name                   = "tftest.com"
///   signalr_custom_certificate_id = azure_signalr_servicecustomcertificate.test.id
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
/// import com.pulumi.azure.signalr.Service;
/// import com.pulumi.azure.signalr.ServiceArgs;
/// import com.pulumi.azure.signalr.inputs.ServiceSkuArgs;
/// import com.pulumi.azure.signalr.inputs.ServiceIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Certificate;
/// import com.pulumi.azure.keyvault.CertificateArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.azure.signalr.ServiceCustomCertificate;
/// import com.pulumi.azure.signalr.ServiceCustomCertificateArgs;
/// import com.pulumi.azure.signalr.ServiceCustomDomain;
/// import com.pulumi.azure.signalr.ServiceCustomDomainArgs;
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
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-signalr")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .sku(ServiceSkuArgs.builder()
///                 .name("Premium_P1")
///                 .capacity(1)
///                 .build())
///             .identity(ServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-keyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .rbacAuthorizationEnabled(false)
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
///                     .objectId(testAzurermSignalrService.identity()[0].principalId())
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
///         var test = new ServiceCustomCertificate("test", ServiceCustomCertificateArgs.builder()
///             .name("example-cert")
///             .signalrServiceId(exampleService.id())
///             .customCertificateId(exampleCertificate.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAzurermKeyVaultAccessPolicy)
///                 .build());
///
///         var testServiceCustomDomain = new ServiceCustomDomain("testServiceCustomDomain", ServiceCustomDomainArgs.builder()
///             .name("example-domain")
///             .signalrServiceId(testAzurermSignalrService.id())
///             .domainName("tftest.com")
///             .signalrCustomCertificateId(test.id())
///             .build());
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
///   exampleService:
///     type: azure:signalr:Service
///     name: example
///     properties:
///       name: example-signalr
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       sku:
///         name: Premium_P1
///         capacity: 1
///       identity:
///         type: SystemAssigned
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example-keyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       rbacAuthorizationEnabled: false
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
///           objectId: ${testAzurermSignalrService.identity[0].principalId}
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
///     type: azure:signalr:ServiceCustomCertificate
///     properties:
///       name: example-cert
///       signalrServiceId: ${exampleService.id}
///       customCertificateId: ${exampleCertificate.id}
///     options:
///       dependsOn:
///         - ${exampleAzurermKeyVaultAccessPolicy}
///   testServiceCustomDomain:
///     type: azure:signalr:ServiceCustomDomain
///     name: test
///     properties:
///       name: example-domain
///       signalrServiceId: ${testAzurermSignalrService.id}
///       domainName: tftest.com
///       signalrCustomCertificateId: ${test.id}
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
/// Custom Domain for a SignalR service can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:signalr/serviceCustomDomain:ServiceCustomDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/signalR/signalr1/customDomains/customDomain1
/// ```
class ServiceCustomDomain extends pulumi.CustomResource {
  /// Specifies the custom domain name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Please ensure the custom domain name is included in the Subject Alternative Names of the selected SignalR Custom Certificate.
  late final pulumi.Output<String> domainName;
  /// Specifies the name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the SignalR Custom Certificate ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  late final pulumi.Output<String> signalrCustomCertificateId;
  /// Specifies the SignalR ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  late final pulumi.Output<String> signalrServiceId;

  /// Creates a new [ServiceCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceCustomDomain]. {@macro pulumi_signalr_service_custom_domain_service_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceCustomDomain(
    String name, {
    ServiceCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:signalr/serviceCustomDomain:ServiceCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    signalrCustomCertificateId = registerOutput<String>('signalrCustomCertificateId');
    signalrServiceId = registerOutput<String>('signalrServiceId');
  }

  /// Gets an existing [ServiceCustomDomain] resource's state with the given [name] and [id].
  static ServiceCustomDomain get(
    String name,
    pulumi.Input<String> id, {
    ServiceCustomDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ServiceCustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ServiceCustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:signalr/serviceCustomDomain:ServiceCustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    signalrCustomCertificateId = registerOutput<String>('signalrCustomCertificateId');
    signalrServiceId = registerOutput<String>('signalrServiceId');
  }

  /// Creates a typed reference to an existing [ServiceCustomDomain] resource.
  ServiceCustomDomain.reference(String urn)
    : super(
        'azure:signalr/serviceCustomDomain:ServiceCustomDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    signalrCustomCertificateId = registerOutput<String>('signalrCustomCertificateId');
    signalrServiceId = registerOutput<String>('signalrServiceId');
  }
}
