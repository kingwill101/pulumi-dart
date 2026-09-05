import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_args.dart';
import 'custom_domain_developer_portal.dart';
import 'custom_domain_gateway.dart';
import 'custom_domain_management.dart';
import 'custom_domain_portal.dart';
import 'custom_domain_scm.dart';
import 'custom_domain_state.dart';

/// Manages a API Management Custom Domain.
///
/// ## Disclaimers
///
/// &gt; **Note:** It's possible to define Custom Domains both within the `azure.apimanagement.Service` resource via the `hostnameConfigurations` block and by using this resource. However it's not possible to use both methods to manage Custom Domains within an API Management Service, since there will be conflicts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.keyvault.getKeyVault({
///     name: "mykeyvault",
///     resourceGroupName: "some-resource-group",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Developer_1",
/// });
/// const exampleCertificate = new azure.keyvault.Certificate("example", {
///     name: "example-certificate",
///     keyVaultId: example.then(example => example.id),
///     certificatePolicy: {
///         issuerParameters: {
///             name: "Self",
///         },
///         keyProperties: {
///             exportable: true,
///             keySize: 2048,
///             keyType: "RSA",
///             reuseKey: true,
///         },
///         lifetimeActions: [{
///             action: {
///                 actionType: "AutoRenew",
///             },
///             trigger: {
///                 daysBeforeExpiry: 30,
///             },
///         }],
///         secretProperties: {
///             contentType: "application/x-pkcs12",
///         },
///         x509CertificateProperties: {
///             keyUsages: [
///                 "cRLSign",
///                 "dataEncipherment",
///                 "digitalSignature",
///                 "keyAgreement",
///                 "keyCertSign",
///                 "keyEncipherment",
///             ],
///             subject: "CN=api.example.com",
///             validityInMonths: 12,
///             subjectAlternativeNames: {
///                 dnsNames: [
///                     "api.example.com",
///                     "portal.example.com",
///                 ],
///             },
///         },
///     },
/// });
/// const exampleCustomDomain = new azure.apimanagement.CustomDomain("example", {
///     apiManagementId: exampleService.id,
///     gateways: [{
///         hostName: "api.example.com",
///         keyVaultId: exampleCertificate.versionlessSecretId,
///     }],
///     developerPortals: [{
///         hostName: "portal.example.com",
///         keyVaultId: exampleCertificate.versionlessSecretId,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.keyvault.get_key_vault(name="mykeyvault",
///     resource_group_name="some-resource-group")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Developer_1")
/// example_certificate = azure.keyvault.Certificate("example",
///     name="example-certificate",
///     key_vault_id=example.id,
///     certificate_policy={
///         "issuer_parameters": {
///             "name": "Self",
///         },
///         "key_properties": {
///             "exportable": True,
///             "key_size": 2048,
///             "key_type": "RSA",
///             "reuse_key": True,
///         },
///         "lifetime_actions": [{
///             "action": {
///                 "action_type": "AutoRenew",
///             },
///             "trigger": {
///                 "days_before_expiry": 30,
///             },
///         }],
///         "secret_properties": {
///             "content_type": "application/x-pkcs12",
///         },
///         "x509_certificate_properties": {
///             "key_usages": [
///                 "cRLSign",
///                 "dataEncipherment",
///                 "digitalSignature",
///                 "keyAgreement",
///                 "keyCertSign",
///                 "keyEncipherment",
///             ],
///             "subject": "CN=api.example.com",
///             "validity_in_months": 12,
///             "subject_alternative_names": {
///                 "dns_names": [
///                     "api.example.com",
///                     "portal.example.com",
///                 ],
///             },
///         },
///     })
/// example_custom_domain = azure.apimanagement.CustomDomain("example",
///     api_management_id=example_service.id,
///     gateways=[{
///         "host_name": "api.example.com",
///         "key_vault_id": example_certificate.versionless_secret_id,
///     }],
///     developer_portals=[{
///         "host_name": "portal.example.com",
///         "key_vault_id": example_certificate.versionless_secret_id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.KeyVault.GetKeyVault.Invoke(new()
///     {
///         Name = "mykeyvault",
///         ResourceGroupName = "some-resource-group",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Developer_1",
///     });
///
///     var exampleCertificate = new Azure.KeyVault.Certificate("example", new()
///     {
///         Name = "example-certificate",
///         KeyVaultId = example.Apply(getKeyVaultResult => getKeyVaultResult.Id),
///         CertificatePolicy = new Azure.KeyVault.Inputs.CertificateCertificatePolicyArgs
///         {
///             IssuerParameters = new Azure.KeyVault.Inputs.CertificateCertificatePolicyIssuerParametersArgs
///             {
///                 Name = "Self",
///             },
///             KeyProperties = new Azure.KeyVault.Inputs.CertificateCertificatePolicyKeyPropertiesArgs
///             {
///                 Exportable = true,
///                 KeySize = 2048,
///                 KeyType = "RSA",
///                 ReuseKey = true,
///             },
///             LifetimeActions = new[]
///             {
///                 new Azure.KeyVault.Inputs.CertificateCertificatePolicyLifetimeActionArgs
///                 {
///                     Action = new Azure.KeyVault.Inputs.CertificateCertificatePolicyLifetimeActionActionArgs
///                     {
///                         ActionType = "AutoRenew",
///                     },
///                     Trigger = new Azure.KeyVault.Inputs.CertificateCertificatePolicyLifetimeActionTriggerArgs
///                     {
///                         DaysBeforeExpiry = 30,
///                     },
///                 },
///             },
///             SecretProperties = new Azure.KeyVault.Inputs.CertificateCertificatePolicySecretPropertiesArgs
///             {
///                 ContentType = "application/x-pkcs12",
///             },
///             X509CertificateProperties = new Azure.KeyVault.Inputs.CertificateCertificatePolicyX509CertificatePropertiesArgs
///             {
///                 KeyUsages = new[]
///                 {
///                     "cRLSign",
///                     "dataEncipherment",
///                     "digitalSignature",
///                     "keyAgreement",
///                     "keyCertSign",
///                     "keyEncipherment",
///                 },
///                 Subject = "CN=api.example.com",
///                 ValidityInMonths = 12,
///                 SubjectAlternativeNames = new Azure.KeyVault.Inputs.CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs
///                 {
///                     DnsNames = new[]
///                     {
///                         "api.example.com",
///                         "portal.example.com",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleCustomDomain = new Azure.ApiManagement.CustomDomain("example", new()
///     {
///         ApiManagementId = exampleService.Id,
///         Gateways = new[]
///         {
///             new Azure.ApiManagement.Inputs.CustomDomainGatewayArgs
///             {
///                 HostName = "api.example.com",
///                 KeyVaultId = exampleCertificate.VersionlessSecretId,
///             },
///         },
///         DeveloperPortals = new[]
///         {
///             new Azure.ApiManagement.Inputs.CustomDomainDeveloperPortalArgs
///             {
///                 HostName = "portal.example.com",
///                 KeyVaultId = exampleCertificate.VersionlessSecretId,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := keyvault.LookupKeyVault(ctx, &keyvault.LookupKeyVaultArgs{
/// 			Name:              "mykeyvault",
/// 			ResourceGroupName: "some-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCertificate, err := keyvault.NewCertificate(ctx, "example", &keyvault.CertificateArgs{
/// 			Name:       pulumi.String("example-certificate"),
/// 			KeyVaultId: pulumi.String(example.Id),
/// 			CertificatePolicy: &keyvault.CertificateCertificatePolicyArgs{
/// 				IssuerParameters: &keyvault.CertificateCertificatePolicyIssuerParametersArgs{
/// 					Name: pulumi.String("Self"),
/// 				},
/// 				KeyProperties: &keyvault.CertificateCertificatePolicyKeyPropertiesArgs{
/// 					Exportable: pulumi.Bool(true),
/// 					KeySize:    pulumi.Int(2048),
/// 					KeyType:    pulumi.String("RSA"),
/// 					ReuseKey:   pulumi.Bool(true),
/// 				},
/// 				LifetimeActions: keyvault.CertificateCertificatePolicyLifetimeActionArray{
/// 					&keyvault.CertificateCertificatePolicyLifetimeActionArgs{
/// 						Action: &keyvault.CertificateCertificatePolicyLifetimeActionActionArgs{
/// 							ActionType: pulumi.String("AutoRenew"),
/// 						},
/// 						Trigger: &keyvault.CertificateCertificatePolicyLifetimeActionTriggerArgs{
/// 							DaysBeforeExpiry: pulumi.Int(30),
/// 						},
/// 					},
/// 				},
/// 				SecretProperties: &keyvault.CertificateCertificatePolicySecretPropertiesArgs{
/// 					ContentType: pulumi.String("application/x-pkcs12"),
/// 				},
/// 				X509CertificateProperties: &keyvault.CertificateCertificatePolicyX509CertificatePropertiesArgs{
/// 					KeyUsages: pulumi.StringArray{
/// 						pulumi.String("cRLSign"),
/// 						pulumi.String("dataEncipherment"),
/// 						pulumi.String("digitalSignature"),
/// 						pulumi.String("keyAgreement"),
/// 						pulumi.String("keyCertSign"),
/// 						pulumi.String("keyEncipherment"),
/// 					},
/// 					Subject:          pulumi.String("CN=api.example.com"),
/// 					ValidityInMonths: pulumi.Int(12),
/// 					SubjectAlternativeNames: &keyvault.CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs{
/// 						DnsNames: pulumi.StringArray{
/// 							pulumi.String("api.example.com"),
/// 							pulumi.String("portal.example.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewCustomDomain(ctx, "example", &apimanagement.CustomDomainArgs{
/// 			ApiManagementId: exampleService.ID().ToIDOutput().ToStringOutput(),
/// 			Gateways: apimanagement.CustomDomainGatewayArray{
/// 				&apimanagement.CustomDomainGatewayArgs{
/// 					HostName:   pulumi.String("api.example.com"),
/// 					KeyVaultId: exampleCertificate.VersionlessSecretId,
/// 				},
/// 			},
/// 			DeveloperPortals: apimanagement.CustomDomainDeveloperPortalArray{
/// 				&apimanagement.CustomDomainDeveloperPortalArgs{
/// 					HostName:   pulumi.String("portal.example.com"),
/// 					KeyVaultId: exampleCertificate.VersionlessSecretId,
/// 				},
/// 			},
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
///   }
/// }
///
/// data "azure_keyvault_getkeyvault" "example" {
///   name                = "mykeyvault"
///   resource_group_name = "some-resource-group"
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_apimanagement_service" "example" {
///   name                = "example-apim"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   publisher_name      = "pub1"
///   publisher_email     = "pub1@email.com"
///   sku_name            = "Developer_1"
/// }
/// resource "azure_keyvault_certificate" "example" {
///   name         = "example-certificate"
///   key_vault_id = data.azure_keyvault_getkeyvault.example.id
///   certificate_policy = {
///     issuer_parameters = {
///       name = "Self"
///     }
///     key_properties = {
///       exportable = true
///       key_size   = 2048
///       key_type   = "RSA"
///       reuse_key  = true
///     }
///     lifetime_actions = [{
///       "action" = {
///         "actionType" = "AutoRenew"
///       }
///       "trigger" = {
///         "daysBeforeExpiry" = 30
///       }
///     }]
///     secret_properties = {
///       content_type = "application/x-pkcs12"
///     }
///     x509_certificate_properties = {
///       key_usages         = ["cRLSign", "dataEncipherment", "digitalSignature", "keyAgreement", "keyCertSign", "keyEncipherment"]
///       subject            = "CN=api.example.com"
///       validity_in_months = 12
///       subject_alternative_names = {
///         dns_names = ["api.example.com", "portal.example.com"]
///       }
///     }
///   }
/// }
/// resource "azure_apimanagement_customdomain" "example" {
///   api_management_id = azure_apimanagement_service.example.id
///   gateways {
///     host_name    = "api.example.com"
///     key_vault_id = azure_keyvault_certificate.example.versionless_secret_id
///   }
///   developer_portals {
///     host_name    = "portal.example.com"
///     key_vault_id = azure_keyvault_certificate.example.versionless_secret_id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetKeyVaultArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.keyvault.Certificate;
/// import com.pulumi.azure.keyvault.CertificateArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyIssuerParametersArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyKeyPropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyLifetimeActionArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyLifetimeActionActionArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyLifetimeActionTriggerArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicySecretPropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyX509CertificatePropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs;
/// import com.pulumi.azure.apimanagement.CustomDomain;
/// import com.pulumi.azure.apimanagement.CustomDomainArgs;
/// import com.pulumi.azure.apimanagement.inputs.CustomDomainGatewayArgs;
/// import com.pulumi.azure.apimanagement.inputs.CustomDomainDeveloperPortalArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = KeyvaultFunctions.getKeyVault(GetKeyVaultArgs.builder()
///             .name("mykeyvault")
///             .resourceGroupName("some-resource-group")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .name("example-certificate")
///             .keyVaultId(example.id())
///             .certificatePolicy(CertificateCertificatePolicyArgs.builder()
///                 .issuerParameters(CertificateCertificatePolicyIssuerParametersArgs.builder()
///                     .name("Self")
///                     .build())
///                 .keyProperties(CertificateCertificatePolicyKeyPropertiesArgs.builder()
///                     .exportable(true)
///                     .keySize(2048)
///                     .keyType("RSA")
///                     .reuseKey(true)
///                     .build())
///                 .lifetimeActions(CertificateCertificatePolicyLifetimeActionArgs.builder()
///                     .action(CertificateCertificatePolicyLifetimeActionActionArgs.builder()
///                         .actionType("AutoRenew")
///                         .build())
///                     .trigger(CertificateCertificatePolicyLifetimeActionTriggerArgs.builder()
///                         .daysBeforeExpiry(30)
///                         .build())
///                     .build())
///                 .secretProperties(CertificateCertificatePolicySecretPropertiesArgs.builder()
///                     .contentType("application/x-pkcs12")
///                     .build())
///                 .x509CertificateProperties(CertificateCertificatePolicyX509CertificatePropertiesArgs.builder()
///                     .keyUsages(
///                         "cRLSign",
///                         "dataEncipherment",
///                         "digitalSignature",
///                         "keyAgreement",
///                         "keyCertSign",
///                         "keyEncipherment")
///                     .subject("CN=api.example.com")
///                     .validityInMonths(12)
///                     .subjectAlternativeNames(CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs.builder()
///                         .dnsNames(
///                             "api.example.com",
///                             "portal.example.com")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var exampleCustomDomain = new CustomDomain("exampleCustomDomain", CustomDomainArgs.builder()
///             .apiManagementId(exampleService.id())
///             .gateways(CustomDomainGatewayArgs.builder()
///                 .hostName("api.example.com")
///                 .keyVaultId(exampleCertificate.versionlessSecretId())
///                 .build())
///             .developerPortals(CustomDomainDeveloperPortalArgs.builder()
///                 .hostName("portal.example.com")
///                 .keyVaultId(exampleCertificate.versionlessSecretId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       publisherName: pub1
///       publisherEmail: pub1@email.com
///       skuName: Developer_1
///   exampleCertificate:
///     type: azure:keyvault:Certificate
///     name: example
///     properties:
///       name: example-certificate
///       keyVaultId: ${example.id}
///       certificatePolicy:
///         issuerParameters:
///           name: Self
///         keyProperties:
///           exportable: true
///           keySize: 2048
///           keyType: RSA
///           reuseKey: true
///         lifetimeActions:
///           - action:
///               actionType: AutoRenew
///             trigger:
///               daysBeforeExpiry: 30
///         secretProperties:
///           contentType: application/x-pkcs12
///         x509CertificateProperties:
///           keyUsages:
///             - cRLSign
///             - dataEncipherment
///             - digitalSignature
///             - keyAgreement
///             - keyCertSign
///             - keyEncipherment
///           subject: CN=api.example.com
///           validityInMonths: 12
///           subjectAlternativeNames:
///             dnsNames:
///               - api.example.com
///               - portal.example.com
///   exampleCustomDomain:
///     type: azure:apimanagement:CustomDomain
///     name: example
///     properties:
///       apiManagementId: ${exampleService.id}
///       gateways:
///         - hostName: api.example.com
///           keyVaultId: ${exampleCertificate.versionlessSecretId}
///       developerPortals:
///         - hostName: portal.example.com
///           keyVaultId: ${exampleCertificate.versionlessSecretId}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getKeyVault
///       arguments:
///         name: mykeyvault
///         resourceGroupName: some-resource-group
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01
///
/// ## Import
///
/// API Management Custom Domains can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/customDomain:CustomDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/customDomains/default
/// ```
class CustomDomain extends pulumi.CustomResource {
  /// The ID of the API Management service for which to configure Custom Domains. Changing this forces a new API Management Custom Domain resource to be created.
  late final pulumi.Output<String> apiManagementId;
  /// One or more `developerPortal` blocks as defined below.
  late final pulumi.Output<List<CustomDomainDeveloperPortal>?> developerPortals;
  /// One or more `gateway` blocks as defined below.
  late final pulumi.Output<List<CustomDomainGateway>?> gateways;
  /// One or more `management` blocks as defined below.
  late final pulumi.Output<List<CustomDomainManagement>?> managements;
  /// One or more `portal` blocks as defined below.
  late final pulumi.Output<List<CustomDomainPortal>?> portals;
  /// One or more `scm` blocks as defined below.
  late final pulumi.Output<List<CustomDomainScm>?> scms;

  /// Creates a new [CustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomain]. {@macro pulumi_apimanagement_custom_domain_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomain(
    String name, {
    CustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/customDomain:CustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    developerPortals = registerOutput<List<CustomDomainDeveloperPortal>?>('developerPortals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainDeveloperPortal>(guardedValue, (value) => CustomDomainDeveloperPortal.fromMap((value as Map).cast<String, dynamic>())); });
    gateways = registerOutput<List<CustomDomainGateway>?>('gateways', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainGateway>(guardedValue, (value) => CustomDomainGateway.fromMap((value as Map).cast<String, dynamic>())); });
    managements = registerOutput<List<CustomDomainManagement>?>('managements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainManagement>(guardedValue, (value) => CustomDomainManagement.fromMap((value as Map).cast<String, dynamic>())); });
    portals = registerOutput<List<CustomDomainPortal>?>('portals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainPortal>(guardedValue, (value) => CustomDomainPortal.fromMap((value as Map).cast<String, dynamic>())); });
    scms = registerOutput<List<CustomDomainScm>?>('scms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainScm>(guardedValue, (value) => CustomDomainScm.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [CustomDomain] resource's state with the given [name] and [id].
  static CustomDomain get(
    String name,
    pulumi.Input<String> id, {
    CustomDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/customDomain:CustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    developerPortals = registerOutput<List<CustomDomainDeveloperPortal>?>('developerPortals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainDeveloperPortal>(guardedValue, (value) => CustomDomainDeveloperPortal.fromMap((value as Map).cast<String, dynamic>())); });
    gateways = registerOutput<List<CustomDomainGateway>?>('gateways', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainGateway>(guardedValue, (value) => CustomDomainGateway.fromMap((value as Map).cast<String, dynamic>())); });
    managements = registerOutput<List<CustomDomainManagement>?>('managements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainManagement>(guardedValue, (value) => CustomDomainManagement.fromMap((value as Map).cast<String, dynamic>())); });
    portals = registerOutput<List<CustomDomainPortal>?>('portals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainPortal>(guardedValue, (value) => CustomDomainPortal.fromMap((value as Map).cast<String, dynamic>())); });
    scms = registerOutput<List<CustomDomainScm>?>('scms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainScm>(guardedValue, (value) => CustomDomainScm.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [CustomDomain] resource.
  CustomDomain.reference(String urn)
    : super(
        'azure:apimanagement/customDomain:CustomDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    developerPortals = registerOutput<List<CustomDomainDeveloperPortal>?>('developerPortals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainDeveloperPortal>(guardedValue, (value) => CustomDomainDeveloperPortal.fromMap((value as Map).cast<String, dynamic>())); });
    gateways = registerOutput<List<CustomDomainGateway>?>('gateways', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainGateway>(guardedValue, (value) => CustomDomainGateway.fromMap((value as Map).cast<String, dynamic>())); });
    managements = registerOutput<List<CustomDomainManagement>?>('managements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainManagement>(guardedValue, (value) => CustomDomainManagement.fromMap((value as Map).cast<String, dynamic>())); });
    portals = registerOutput<List<CustomDomainPortal>?>('portals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainPortal>(guardedValue, (value) => CustomDomainPortal.fromMap((value as Map).cast<String, dynamic>())); });
    scms = registerOutput<List<CustomDomainScm>?>('scms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainScm>(guardedValue, (value) => CustomDomainScm.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
