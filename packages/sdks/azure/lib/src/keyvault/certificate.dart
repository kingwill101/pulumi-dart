import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_certificate.dart';
import 'certificate_certificate_policy.dart';
import 'certificate_state.dart';

/// Manages a Key Vault Certificate.
///
/// ## Example Usage
///
/// ### Importing A PFX)
///
/// &gt; **Note:** this example assumed the PFX file is located in the same directory at `certificate-to-import.pfx`.
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
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         certificatePermissions: [
///             "Create",
///             "Delete",
///             "DeleteIssuers",
///             "Get",
///             "GetIssuers",
///             "Import",
///             "List",
///             "ListIssuers",
///             "ManageContacts",
///             "ManageIssuers",
///             "SetIssuers",
///             "Update",
///         ],
///         keyPermissions: [
///             "Backup",
///             "Create",
///             "Decrypt",
///             "Delete",
///             "Encrypt",
///             "Get",
///             "Import",
///             "List",
///             "Purge",
///             "Recover",
///             "Restore",
///             "Sign",
///             "UnwrapKey",
///             "Update",
///             "Verify",
///             "WrapKey",
///         ],
///         secretPermissions: [
///             "Backup",
///             "Delete",
///             "Get",
///             "List",
///             "Purge",
///             "Recover",
///             "Restore",
///             "Set",
///         ],
///     }],
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
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "certificate_permissions": [
///             "Create",
///             "Delete",
///             "DeleteIssuers",
///             "Get",
///             "GetIssuers",
///             "Import",
///             "List",
///             "ListIssuers",
///             "ManageContacts",
///             "ManageIssuers",
///             "SetIssuers",
///             "Update",
///         ],
///         "key_permissions": [
///             "Backup",
///             "Create",
///             "Decrypt",
///             "Delete",
///             "Encrypt",
///             "Get",
///             "Import",
///             "List",
///             "Purge",
///             "Recover",
///             "Restore",
///             "Sign",
///             "UnwrapKey",
///             "Update",
///             "Verify",
///             "WrapKey",
///         ],
///         "secret_permissions": [
///             "Backup",
///             "Delete",
///             "Get",
///             "List",
///             "Purge",
///             "Recover",
///             "Restore",
///             "Set",
///         ],
///     }])
/// example_certificate = azure.keyvault.Certificate("example",
///     name="imported-cert",
///     key_vault_id=example_key_vault.id,
///     certificate={
///         "contents": std.filebase64(input="certificate-to-import.pfx").result,
///         "password": "",
///     })
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
///                     "Delete",
///                     "DeleteIssuers",
///                     "Get",
///                     "GetIssuers",
///                     "Import",
///                     "List",
///                     "ListIssuers",
///                     "ManageContacts",
///                     "ManageIssuers",
///                     "SetIssuers",
///                     "Update",
///                 },
///                 KeyPermissions = new[]
///                 {
///                     "Backup",
///                     "Create",
///                     "Decrypt",
///                     "Delete",
///                     "Encrypt",
///                     "Get",
///                     "Import",
///                     "List",
///                     "Purge",
///                     "Recover",
///                     "Restore",
///                     "Sign",
///                     "UnwrapKey",
///                     "Update",
///                     "Verify",
///                     "WrapKey",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Backup",
///                     "Delete",
///                     "Get",
///                     "List",
///                     "Purge",
///                     "Recover",
///                     "Restore",
///                     "Set",
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 						pulumi.String("Delete"),
/// 						pulumi.String("DeleteIssuers"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("GetIssuers"),
/// 						pulumi.String("Import"),
/// 						pulumi.String("List"),
/// 						pulumi.String("ListIssuers"),
/// 						pulumi.String("ManageContacts"),
/// 						pulumi.String("ManageIssuers"),
/// 						pulumi.String("SetIssuers"),
/// 						pulumi.String("Update"),
/// 					},
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Backup"),
/// 						pulumi.String("Create"),
/// 						pulumi.String("Decrypt"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("Import"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("Restore"),
/// 						pulumi.String("Sign"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("Update"),
/// 						pulumi.String("Verify"),
/// 						pulumi.String("WrapKey"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Backup"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("Restore"),
/// 						pulumi.String("Set"),
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
/// 		_, err = keyvault.NewCertificate(ctx, "example", &keyvault.CertificateArgs{
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
/// 		return nil
/// 	})
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
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Certificate;
/// import com.pulumi.azure.keyvault.CertificateArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .certificatePermissions(
///                     "Create",
///                     "Delete",
///                     "DeleteIssuers",
///                     "Get",
///                     "GetIssuers",
///                     "Import",
///                     "List",
///                     "ListIssuers",
///                     "ManageContacts",
///                     "ManageIssuers",
///                     "SetIssuers",
///                     "Update")
///                 .keyPermissions(
///                     "Backup",
///                     "Create",
///                     "Decrypt",
///                     "Delete",
///                     "Encrypt",
///                     "Get",
///                     "Import",
///                     "List",
///                     "Purge",
///                     "Recover",
///                     "Restore",
///                     "Sign",
///                     "UnwrapKey",
///                     "Update",
///                     "Verify",
///                     "WrapKey")
///                 .secretPermissions(
///                     "Backup",
///                     "Delete",
///                     "Get",
///                     "List",
///                     "Purge",
///                     "Recover",
///                     "Restore",
///                     "Set")
///                 .build())
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
///       tenantId: ${current.tenantId}
///       skuName: premium
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           certificatePermissions:
///             - Create
///             - Delete
///             - DeleteIssuers
///             - Get
///             - GetIssuers
///             - Import
///             - List
///             - ListIssuers
///             - ManageContacts
///             - ManageIssuers
///             - SetIssuers
///             - Update
///           keyPermissions:
///             - Backup
///             - Create
///             - Decrypt
///             - Delete
///             - Encrypt
///             - Get
///             - Import
///             - List
///             - Purge
///             - Recover
///             - Restore
///             - Sign
///             - UnwrapKey
///             - Update
///             - Verify
///             - WrapKey
///           secretPermissions:
///             - Backup
///             - Delete
///             - Get
///             - List
///             - Purge
///             - Recover
///             - Restore
///             - Set
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
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ### Generating a new certificate
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
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     softDeleteRetentionDays: 7,
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         certificatePermissions: [
///             "Create",
///             "Delete",
///             "DeleteIssuers",
///             "Get",
///             "GetIssuers",
///             "Import",
///             "List",
///             "ListIssuers",
///             "ManageContacts",
///             "ManageIssuers",
///             "Purge",
///             "SetIssuers",
///             "Update",
///         ],
///         keyPermissions: [
///             "Backup",
///             "Create",
///             "Decrypt",
///             "Delete",
///             "Encrypt",
///             "Get",
///             "Import",
///             "List",
///             "Purge",
///             "Recover",
///             "Restore",
///             "Sign",
///             "UnwrapKey",
///             "Update",
///             "Verify",
///             "WrapKey",
///         ],
///         secretPermissions: [
///             "Backup",
///             "Delete",
///             "Get",
///             "List",
///             "Purge",
///             "Recover",
///             "Restore",
///             "Set",
///         ],
///     }],
/// });
/// const exampleCertificate = new azure.keyvault.Certificate("example", {
///     name: "generated-cert",
///     keyVaultId: exampleKeyVault.id,
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
///             extendedKeyUsages: ["1.3.6.1.5.5.7.3.1"],
///             keyUsages: [
///                 "cRLSign",
///                 "dataEncipherment",
///                 "digitalSignature",
///                 "keyAgreement",
///                 "keyCertSign",
///                 "keyEncipherment",
///             ],
///             subjectAlternativeNames: {
///                 dnsNames: [
///                     "internal.contoso.com",
///                     "domain.hello.world",
///                 ],
///             },
///             subject: "CN=hello-world",
///             validityInMonths: 12,
///         },
///     },
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
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     soft_delete_retention_days=7,
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "certificate_permissions": [
///             "Create",
///             "Delete",
///             "DeleteIssuers",
///             "Get",
///             "GetIssuers",
///             "Import",
///             "List",
///             "ListIssuers",
///             "ManageContacts",
///             "ManageIssuers",
///             "Purge",
///             "SetIssuers",
///             "Update",
///         ],
///         "key_permissions": [
///             "Backup",
///             "Create",
///             "Decrypt",
///             "Delete",
///             "Encrypt",
///             "Get",
///             "Import",
///             "List",
///             "Purge",
///             "Recover",
///             "Restore",
///             "Sign",
///             "UnwrapKey",
///             "Update",
///             "Verify",
///             "WrapKey",
///         ],
///         "secret_permissions": [
///             "Backup",
///             "Delete",
///             "Get",
///             "List",
///             "Purge",
///             "Recover",
///             "Restore",
///             "Set",
///         ],
///     }])
/// example_certificate = azure.keyvault.Certificate("example",
///     name="generated-cert",
///     key_vault_id=example_key_vault.id,
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
///             "extended_key_usages": ["1.3.6.1.5.5.7.3.1"],
///             "key_usages": [
///                 "cRLSign",
///                 "dataEncipherment",
///                 "digitalSignature",
///                 "keyAgreement",
///                 "keyCertSign",
///                 "keyEncipherment",
///             ],
///             "subject_alternative_names": {
///                 "dns_names": [
///                     "internal.contoso.com",
///                     "domain.hello.world",
///                 ],
///             },
///             "subject": "CN=hello-world",
///             "validity_in_months": 12,
///         },
///     })
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
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         SoftDeleteRetentionDays = 7,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 CertificatePermissions = new[]
///                 {
///                     "Create",
///                     "Delete",
///                     "DeleteIssuers",
///                     "Get",
///                     "GetIssuers",
///                     "Import",
///                     "List",
///                     "ListIssuers",
///                     "ManageContacts",
///                     "ManageIssuers",
///                     "Purge",
///                     "SetIssuers",
///                     "Update",
///                 },
///                 KeyPermissions = new[]
///                 {
///                     "Backup",
///                     "Create",
///                     "Decrypt",
///                     "Delete",
///                     "Encrypt",
///                     "Get",
///                     "Import",
///                     "List",
///                     "Purge",
///                     "Recover",
///                     "Restore",
///                     "Sign",
///                     "UnwrapKey",
///                     "Update",
///                     "Verify",
///                     "WrapKey",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Backup",
///                     "Delete",
///                     "Get",
///                     "List",
///                     "Purge",
///                     "Recover",
///                     "Restore",
///                     "Set",
///                 },
///             },
///         },
///     });
///
///     var exampleCertificate = new Azure.KeyVault.Certificate("example", new()
///     {
///         Name = "generated-cert",
///         KeyVaultId = exampleKeyVault.Id,
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
///                 ExtendedKeyUsages = new[]
///                 {
///                     "1.3.6.1.5.5.7.3.1",
///                 },
///                 KeyUsages = new[]
///                 {
///                     "cRLSign",
///                     "dataEncipherment",
///                     "digitalSignature",
///                     "keyAgreement",
///                     "keyCertSign",
///                     "keyEncipherment",
///                 },
///                 SubjectAlternativeNames = new Azure.KeyVault.Inputs.CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs
///                 {
///                     DnsNames = new[]
///                     {
///                         "internal.contoso.com",
///                         "domain.hello.world",
///                     },
///                 },
///                 Subject = "CN=hello-world",
///                 ValidityInMonths = 12,
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
/// 			Name:                    pulumi.String("examplekeyvault"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			SkuName:                 pulumi.String("standard"),
/// 			SoftDeleteRetentionDays: pulumi.Int(7),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					CertificatePermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("DeleteIssuers"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("GetIssuers"),
/// 						pulumi.String("Import"),
/// 						pulumi.String("List"),
/// 						pulumi.String("ListIssuers"),
/// 						pulumi.String("ManageContacts"),
/// 						pulumi.String("ManageIssuers"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("SetIssuers"),
/// 						pulumi.String("Update"),
/// 					},
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Backup"),
/// 						pulumi.String("Create"),
/// 						pulumi.String("Decrypt"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("Import"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("Restore"),
/// 						pulumi.String("Sign"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("Update"),
/// 						pulumi.String("Verify"),
/// 						pulumi.String("WrapKey"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Backup"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("Restore"),
/// 						pulumi.String("Set"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewCertificate(ctx, "example", &keyvault.CertificateArgs{
/// 			Name:       pulumi.String("generated-cert"),
/// 			KeyVaultId: exampleKeyVault.ID(),
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
/// 					ExtendedKeyUsages: pulumi.StringArray{
/// 						pulumi.String("1.3.6.1.5.5.7.3.1"),
/// 					},
/// 					KeyUsages: pulumi.StringArray{
/// 						pulumi.String("cRLSign"),
/// 						pulumi.String("dataEncipherment"),
/// 						pulumi.String("digitalSignature"),
/// 						pulumi.String("keyAgreement"),
/// 						pulumi.String("keyCertSign"),
/// 						pulumi.String("keyEncipherment"),
/// 					},
/// 					SubjectAlternativeNames: &keyvault.CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs{
/// 						DnsNames: pulumi.StringArray{
/// 							pulumi.String("internal.contoso.com"),
/// 							pulumi.String("domain.hello.world"),
/// 						},
/// 					},
/// 					Subject:          pulumi.String("CN=hello-world"),
/// 					ValidityInMonths: pulumi.Int(12),
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
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Certificate;
/// import com.pulumi.azure.keyvault.CertificateArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyIssuerParametersArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyKeyPropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicySecretPropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyX509CertificatePropertiesArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs;
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
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .softDeleteRetentionDays(7)
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .certificatePermissions(
///                     "Create",
///                     "Delete",
///                     "DeleteIssuers",
///                     "Get",
///                     "GetIssuers",
///                     "Import",
///                     "List",
///                     "ListIssuers",
///                     "ManageContacts",
///                     "ManageIssuers",
///                     "Purge",
///                     "SetIssuers",
///                     "Update")
///                 .keyPermissions(
///                     "Backup",
///                     "Create",
///                     "Decrypt",
///                     "Delete",
///                     "Encrypt",
///                     "Get",
///                     "Import",
///                     "List",
///                     "Purge",
///                     "Recover",
///                     "Restore",
///                     "Sign",
///                     "UnwrapKey",
///                     "Update",
///                     "Verify",
///                     "WrapKey")
///                 .secretPermissions(
///                     "Backup",
///                     "Delete",
///                     "Get",
///                     "List",
///                     "Purge",
///                     "Recover",
///                     "Restore",
///                     "Set")
///                 .build())
///             .build());
///
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .name("generated-cert")
///             .keyVaultId(exampleKeyVault.id())
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
///                     .extendedKeyUsages("1.3.6.1.5.5.7.3.1")
///                     .keyUsages(
///                         "cRLSign",
///                         "dataEncipherment",
///                         "digitalSignature",
///                         "keyAgreement",
///                         "keyCertSign",
///                         "keyEncipherment")
///                     .subjectAlternativeNames(CertificateCertificatePolicyX509CertificatePropertiesSubjectAlternativeNamesArgs.builder()
///                         .dnsNames(
///                             "internal.contoso.com",
///                             "domain.hello.world")
///                         .build())
///                     .subject("CN=hello-world")
///                     .validityInMonths(12)
///                     .build())
///                 .build())
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
///       tenantId: ${current.tenantId}
///       skuName: standard
///       softDeleteRetentionDays: 7
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           certificatePermissions:
///             - Create
///             - Delete
///             - DeleteIssuers
///             - Get
///             - GetIssuers
///             - Import
///             - List
///             - ListIssuers
///             - ManageContacts
///             - ManageIssuers
///             - Purge
///             - SetIssuers
///             - Update
///           keyPermissions:
///             - Backup
///             - Create
///             - Decrypt
///             - Delete
///             - Encrypt
///             - Get
///             - Import
///             - List
///             - Purge
///             - Recover
///             - Restore
///             - Sign
///             - UnwrapKey
///             - Update
///             - Verify
///             - WrapKey
///           secretPermissions:
///             - Backup
///             - Delete
///             - Get
///             - List
///             - Purge
///             - Recover
///             - Restore
///             - Set
///   exampleCertificate:
///     type: azure:keyvault:Certificate
///     name: example
///     properties:
///       name: generated-cert
///       keyVaultId: ${exampleKeyVault.id}
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
///           extendedKeyUsages:
///             - 1.3.6.1.5.5.7.3.1
///           keyUsages:
///             - cRLSign
///             - dataEncipherment
///             - digitalSignature
///             - keyAgreement
///             - keyCertSign
///             - keyEncipherment
///           subjectAlternativeNames:
///             dnsNames:
///               - internal.contoso.com
///               - domain.hello.world
///           subject: CN=hello-world
///           validityInMonths: 12
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
/// Key Vault Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/certificate:Certificate example "https://example-keyvault.vault.azure.net/certificates/example/fdf067c93bbb4b22bff4d8b7a9a56217"
/// ```
class Certificate extends pulumi.CustomResource {
  /// A `certificate` block as defined below, used to Import an existing certificate. Changing this will create a new version of the Key Vault Certificate.
  late final pulumi.Output<CertificateCertificate?> certificate;

  /// A `certificate_attribute` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> certificateAttributes;

  /// The raw Key Vault Certificate data represented as a hexadecimal string.
  late final pulumi.Output<String> certificateData;

  /// The Base64 encoded Key Vault Certificate data.
  late final pulumi.Output<String> certificateDataBase64;

  /// A `certificate_policy` block as defined below. Changing this (except the `lifetime_action` field) will create a new version of the Key Vault Certificate.
  ///
  /// &gt; **NOTE:** When creating a Key Vault Certificate, at least one of `certificate` or `certificate_policy` is required. Provide `certificate` to import an existing certificate, `certificate_policy` to generate a new certificate.
  late final pulumi.Output<CertificateCertificatePolicy> certificatePolicy;

  /// The ID of the Key Vault where the Certificate should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyVaultId;

  /// Specifies the name of the Key Vault Certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services.
  late final pulumi.Output<String> resourceManagerId;

  /// The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated.
  late final pulumi.Output<String> resourceManagerVersionlessId;

  /// The ID of the associated Key Vault Secret.
  late final pulumi.Output<String> secretId;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string.
  late final pulumi.Output<String> thumbprint;

  /// The current version of the Key Vault Certificate.
  late final pulumi.Output<String> version;

  /// The Base ID of the Key Vault Certificate.
  late final pulumi.Output<String> versionlessId;

  /// The Base ID of the Key Vault Secret.
  late final pulumi.Output<String> versionlessSecretId;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_keyvault_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:keyvault/certificate:Certificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificate = registerOutput<CertificateCertificate?>(
      'certificate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CertificateCertificate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    certificateAttributes = registerOutput<List<Map<String, dynamic>>>(
      'certificateAttributes',
    );
    certificateData = registerOutput<String>('certificateData');
    certificateDataBase64 = registerOutput<String>('certificateDataBase64');
    certificatePolicy = registerOutput<CertificateCertificatePolicy>(
      'certificatePolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CertificateCertificatePolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    resourceManagerVersionlessId = registerOutput<String>(
      'resourceManagerVersionlessId',
    );
    secretId = registerOutput<String>('secretId');
    tags = registerOutput<Map<String, String>?>('tags');
    thumbprint = registerOutput<String>('thumbprint');
    version = registerOutput<String>('version');
    versionlessId = registerOutput<String>('versionlessId');
    versionlessSecretId = registerOutput<String>('versionlessSecretId');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:keyvault/certificate:Certificate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificate = registerOutput<CertificateCertificate?>(
      'certificate',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CertificateCertificate.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    certificateAttributes = registerOutput<List<Map<String, dynamic>>>(
      'certificateAttributes',
    );
    certificateData = registerOutput<String>('certificateData');
    certificateDataBase64 = registerOutput<String>('certificateDataBase64');
    certificatePolicy = registerOutput<CertificateCertificatePolicy>(
      'certificatePolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CertificateCertificatePolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultId = registerOutput<String>('keyVaultId');
    this.name = registerOutput<String>('name');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    resourceManagerVersionlessId = registerOutput<String>(
      'resourceManagerVersionlessId',
    );
    secretId = registerOutput<String>('secretId');
    tags = registerOutput<Map<String, String>?>('tags');
    thumbprint = registerOutput<String>('thumbprint');
    version = registerOutput<String>('version');
    versionlessId = registerOutput<String>('versionlessId');
    versionlessSecretId = registerOutput<String>('versionlessSecretId');
  }
}
