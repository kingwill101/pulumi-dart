import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_args.dart';
import 'custom_domain_state.dart';

/// Manages an Azure Web PubSub Custom Domain.
///
/// ## Example Usage
///
///
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
/// resource "azure_webpubsub_service" "example" {
///   name                = "example-webpubsub"
///   location            = testAzurermResourceGroup.location
///   resource_group_name = testAzurermResourceGroup.name
///   sku = [{
///     "name"     = "Premium_P1"
///     "capacity" = 1
///   }]
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                       = "examplekeyvault"
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
///     object_id               = testAzurermWebPubsub.identity[0].principalId
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
///   web_pubsub_id         = azure_webpubsub_service.example.id
///   custom_certificate_id = azure_keyvault_certificate.example.id
/// }
/// resource "azure_webpubsub_customdomain" "test" {
///   name                             = "example-domain"
///   domain_name                      = "tftest.com"
///   web_pubsub_id                    = testAzurermWebPubsub.id
///   web_pubsub_custom_certificate_id = azure_webpubsub_customcertificate.test.id
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
///     type: azure:webpubsub:Service
///     name: example
///     properties:
///       name: example-webpubsub
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       sku:
///         - name: Premium_P1
///           capacity: 1
///       identity:
///         type: SystemAssigned
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
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
///           objectId: ${testAzurermWebPubsub.identity[0].principalId}
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
///       webPubsubId: ${exampleService.id}
///       customCertificateId: ${exampleCertificate.id}
///     options:
///       dependsOn:
///         - ${exampleAzurermKeyVaultAccessPolicy}
///   testCustomDomain:
///     type: azure:webpubsub:CustomDomain
///     name: test
///     properties:
///       name: example-domain
///       domainName: tftest.com
///       webPubsubId: ${testAzurermWebPubsub.id}
///       webPubsubCustomCertificateId: ${test.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
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
/// Custom Domain for a Web PubSub service can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:webpubsub/customDomain:CustomDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/webPubSub/webpubsub1/customDomains/customDomain1
/// ```
class CustomDomain extends pulumi.CustomResource {
  /// Specifies the custom domain name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Please ensure the custom domain name is included in the Subject Alternative Names of the selected Web PubSub Custom Certificate.
  late final pulumi.Output<String> domainName;
  /// Specifies the name of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the Web PubSub Custom Certificate ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  late final pulumi.Output<String> webPubsubCustomCertificateId;
  /// Specifies the Web PubSub ID of the Web PubSub Custom Domain. Changing this forces a new resource to be created.
  late final pulumi.Output<String> webPubsubId;

  /// Creates a new [CustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomain]. {@macro pulumi_webpubsub_custom_domain_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomain(
    String name, {
    CustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:webpubsub/customDomain:CustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    webPubsubCustomCertificateId = registerOutput<String>('webPubsubCustomCertificateId');
    webPubsubId = registerOutput<String>('webPubsubId');
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
          'azure:webpubsub/customDomain:CustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    webPubsubCustomCertificateId = registerOutput<String>('webPubsubCustomCertificateId');
    webPubsubId = registerOutput<String>('webPubsubId');
  }

  /// Creates a typed reference to an existing [CustomDomain] resource.
  CustomDomain.reference(String urn)
    : super(
        'azure:webpubsub/customDomain:CustomDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    webPubsubCustomCertificateId = registerOutput<String>('webPubsubCustomCertificateId');
    webPubsubId = registerOutput<String>('webPubsubId');
  }
}
