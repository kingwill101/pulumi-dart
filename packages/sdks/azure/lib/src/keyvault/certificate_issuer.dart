import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_issuer_args.dart';
import 'certificate_issuer_state.dart';

/// Manages a Key Vault Certificate Issuer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "standard",
///     tenantId: current.then(current => current.tenantId),
/// });
/// const exampleCertificateIssuer = new azure.keyvault.CertificateIssuer("example", {
///     name: "example-issuer",
///     orgId: "ExampleOrgName",
///     keyVaultId: exampleKeyVault.id,
///     providerName: "DigiCert",
///     accountId: "0000",
///     password: "example-password",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="standard",
///     tenant_id=current.tenant_id)
/// example_certificate_issuer = azure.keyvault.CertificateIssuer("example",
///     name="example-issuer",
///     org_id="ExampleOrgName",
///     key_vault_id=example_key_vault.id,
///     provider_name="DigiCert",
///     account_id="0000",
///     password="example-password")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
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
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "standard",
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///     });
///
///     var exampleCertificateIssuer = new Azure.KeyVault.CertificateIssuer("example", new()
///     {
///         Name = "example-issuer",
///         OrgId = "ExampleOrgName",
///         KeyVaultId = exampleKeyVault.Id,
///         ProviderName = "DigiCert",
///         AccountId = "0000",
///         Password = "example-password",
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
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("examplekeyvault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("standard"),
/// 			TenantId:          pulumi.String(current.TenantId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewCertificateIssuer(ctx, "example", &keyvault.CertificateIssuerArgs{
/// 			Name:         pulumi.String("example-issuer"),
/// 			OrgId:        pulumi.String("ExampleOrgName"),
/// 			KeyVaultId:   exampleKeyVault.ID(),
/// 			ProviderName: pulumi.String("DigiCert"),
/// 			AccountId:    pulumi.String("0000"),
/// 			Password:     pulumi.String("example-password"),
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                = "examplekeyvault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "standard"
///   tenant_id           = data.azure_core_getclientconfig.current.tenant_id
/// }
/// resource "azure_keyvault_certificateissuer" "example" {
///   name          = "example-issuer"
///   org_id        = "ExampleOrgName"
///   key_vault_id  = azure_keyvault_keyvault.example.id
///   provider_name = "DigiCert"
///   account_id    = "0000"
///   password      = "example-password"
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
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.CertificateIssuer;
/// import com.pulumi.azure.keyvault.CertificateIssuerArgs;
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
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("standard")
///             .tenantId(current.tenantId())
///             .build());
///
///         var exampleCertificateIssuer = new CertificateIssuer("exampleCertificateIssuer", CertificateIssuerArgs.builder()
///             .name("example-issuer")
///             .orgId("ExampleOrgName")
///             .keyVaultId(exampleKeyVault.id())
///             .providerName("DigiCert")
///             .accountId("0000")
///             .password("example-password")
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
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: standard
///       tenantId: ${current.tenantId}
///   exampleCertificateIssuer:
///     type: azure:keyvault:CertificateIssuer
///     name: example
///     properties:
///       name: example-issuer
///       orgId: ExampleOrgName
///       keyVaultId: ${exampleKeyVault.id}
///       providerName: DigiCert
///       accountId: '0000'
///       password: example-password
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Key Vault Certificate Issuers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/certificateIssuer:CertificateIssuer example "https://key-vault-name.vault.azure.net/certificates/issuers/example"
/// ```
class CertificateIssuer extends pulumi.CustomResource {
  /// The account number with the third-party Certificate Issuer.
  late final pulumi.Output<String?> accountId;
  /// One or more `admin` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> admins;
  /// The ID of the Key Vault in which to create the Certificate Issuer. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyVaultId;
  /// The name which should be used for this Key Vault Certificate Issuer. Changing this forces a new Key Vault Certificate Issuer to be created.
  late final pulumi.Output<String> name;
  /// The ID of the organization as provided to the issuer.
  late final pulumi.Output<String?> orgId;
  /// The password associated with the account and organization ID at the third-party Certificate Issuer. If not specified, will not overwrite any previous value.
  late final pulumi.Output<String?> password;
  /// The name of the third-party Certificate Issuer. Possible values are: `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA` and `SslAdminV2`.
  late final pulumi.Output<String> providerName;

  /// Creates a new [CertificateIssuer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateIssuer]. {@macro pulumi_keyvault_certificate_issuer_certificate_issuer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateIssuer(
    String name, {
    CertificateIssuerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/certificateIssuer:CertificateIssuer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    admins = registerOutput<List<Map<String, dynamic>>?>('admins');
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String?>('orgId');
    password = registerOutput<String?>('password');
    providerName = registerOutput<String>('providerName');
  }

  /// Gets an existing [CertificateIssuer] resource's state with the given [name] and [id].
  static CertificateIssuer get(
    String name,
    pulumi.Input<String> id, {
    CertificateIssuerState? state,
  }) {
    return CertificateIssuer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CertificateIssuer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/certificateIssuer:CertificateIssuer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    admins = registerOutput<List<Map<String, dynamic>>?>('admins');
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String?>('orgId');
    password = registerOutput<String?>('password');
    providerName = registerOutput<String>('providerName');
  }
}
