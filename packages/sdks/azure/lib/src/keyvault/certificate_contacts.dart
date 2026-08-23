import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_contacts_args.dart';
import 'certificate_contacts_state.dart';

/// Manages Key Vault Certificate Contacts.
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
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
/// });
/// const exampleAccessPolicy = new azure.keyvault.AccessPolicy("example", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     certificatePermissions: ["ManageContacts"],
///     keyPermissions: ["Create"],
///     secretPermissions: ["Set"],
/// });
/// const exampleCertificateContacts = new azure.keyvault.CertificateContacts("example", {
///     keyVaultId: exampleKeyVault.id,
///     contacts: [
///         {
///             email: "example@example.com",
///             name: "example",
///             phone: "01234567890",
///         },
///         {
///             email: "example2@example.com",
///         },
///     ],
/// }, {
///     dependsOn: [exampleAccessPolicy],
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
///     sku_name="premium")
/// example_access_policy = azure.keyvault.AccessPolicy("example",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     certificate_permissions=["ManageContacts"],
///     key_permissions=["Create"],
///     secret_permissions=["Set"])
/// example_certificate_contacts = azure.keyvault.CertificateContacts("example",
///     key_vault_id=example_key_vault.id,
///     contacts=[
///         {
///             "email": "example@example.com",
///             "name": "example",
///             "phone": "01234567890",
///         },
///         {
///             "email": "example2@example.com",
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example_access_policy]))
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
///         SkuName = "premium",
///     });
///
///     var exampleAccessPolicy = new Azure.KeyVault.AccessPolicy("example", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         CertificatePermissions = new[]
///         {
///             "ManageContacts",
///         },
///         KeyPermissions = new[]
///         {
///             "Create",
///         },
///         SecretPermissions = new[]
///         {
///             "Set",
///         },
///     });
///
///     var exampleCertificateContacts = new Azure.KeyVault.CertificateContacts("example", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         Contacts = new[]
///         {
///             new Azure.KeyVault.Inputs.CertificateContactsContactArgs
///             {
///                 Email = "example@example.com",
///                 Name = "example",
///                 Phone = "01234567890",
///             },
///             new Azure.KeyVault.Inputs.CertificateContactsContactArgs
///             {
///                 Email = "example2@example.com",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAccessPolicy,
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
/// 			Name:              pulumi.String("examplekeyvault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			SkuName:           pulumi.String("premium"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccessPolicy, err := keyvault.NewAccessPolicy(ctx, "example", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			CertificatePermissions: pulumi.StringArray{
/// 				pulumi.String("ManageContacts"),
/// 			},
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 			},
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Set"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewCertificateContacts(ctx, "example", &keyvault.CertificateContactsArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			Contacts: keyvault.CertificateContactsContactArray{
/// 				&keyvault.CertificateContactsContactArgs{
/// 					Email: pulumi.String("example@example.com"),
/// 					Name:  pulumi.String("example"),
/// 					Phone: pulumi.String("01234567890"),
/// 				},
/// 				&keyvault.CertificateContactsContactArgs{
/// 					Email: pulumi.String("example2@example.com"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAccessPolicy,
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
///   tenant_id           = data.azure_core_getclientconfig.current.tenant_id
///   sku_name            = "premium"
/// }
/// resource "azure_keyvault_accesspolicy" "example" {
///   key_vault_id            = azure_keyvault_keyvault.example.id
///   tenant_id               = data.azure_core_getclientconfig.current.tenant_id
///   object_id               = data.azure_core_getclientconfig.current.object_id
///   certificate_permissions = ["ManageContacts"]
///   key_permissions         = ["Create"]
///   secret_permissions      = ["Set"]
/// }
/// resource "azure_keyvault_certificatecontacts" "example" {
///   depends_on   = [azure_keyvault_accesspolicy.example]
///   key_vault_id = azure_keyvault_keyvault.example.id
///   contacts {
///     email = "example@example.com"
///     name  = "example"
///     phone = "01234567890"
///   }
///   contacts {
///     email = "example2@example.com"
///   }
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
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.CertificateContacts;
/// import com.pulumi.azure.keyvault.CertificateContactsArgs;
/// import com.pulumi.azure.keyvault.inputs.CertificateContactsContactArgs;
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
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .build());
///
///         var exampleAccessPolicy = new AccessPolicy("exampleAccessPolicy", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .certificatePermissions("ManageContacts")
///             .keyPermissions("Create")
///             .secretPermissions("Set")
///             .build());
///
///         var exampleCertificateContacts = new CertificateContacts("exampleCertificateContacts", CertificateContactsArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .contacts(
///                 CertificateContactsContactArgs.builder()
///                     .email("example@example.com")
///                     .name("example")
///                     .phone("01234567890")
///                     .build(),
///                 CertificateContactsContactArgs.builder()
///                     .email("example2@example.com")
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAccessPolicy)
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
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///   exampleAccessPolicy:
///     type: azure:keyvault:AccessPolicy
///     name: example
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       certificatePermissions:
///         - ManageContacts
///       keyPermissions:
///         - Create
///       secretPermissions:
///         - Set
///   exampleCertificateContacts:
///     type: azure:keyvault:CertificateContacts
///     name: example
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       contacts:
///         - email: example@example.com
///           name: example
///           phone: '01234567890'
///         - email: example2@example.com
///     options:
///       dependsOn:
///         - ${exampleAccessPolicy}
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
/// Key Vault Certificate Contacts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/certificateContacts:CertificateContacts example https://example-keyvault.vault.azure.net/certificates/contacts
/// ```
class CertificateContacts extends pulumi.CustomResource {
  /// One or more `contact` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> contacts;
  /// The ID of the Key Vault. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyVaultId;

  /// Creates a new [CertificateContacts].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateContacts]. {@macro pulumi_keyvault_certificate_contacts_certificate_contacts_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateContacts(
    String name, {
    CertificateContactsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/certificateContacts:CertificateContacts',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contacts = registerOutput<List<Map<String, dynamic>>?>('contacts');
    keyVaultId = registerOutput<String>('keyVaultId');
  }

  /// Gets an existing [CertificateContacts] resource's state with the given [name] and [id].
  static CertificateContacts get(
    String name,
    pulumi.Input<String> id, {
    CertificateContactsState? state,
  }) {
    return CertificateContacts._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CertificateContacts._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/certificateContacts:CertificateContacts',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contacts = registerOutput<List<Map<String, dynamic>>?>('contacts');
    keyVaultId = registerOutput<String>('keyVaultId');
  }
}
