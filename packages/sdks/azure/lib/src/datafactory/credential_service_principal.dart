import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_service_principal_args.dart';
import 'credential_service_principal_service_principal_key.dart';
import 'credential_service_principal_state.dart';

/// Manage a Data Factory Service Principal credential resource. These resources are used by Data Factory to access data sources.
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
///     location: "westeurope",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     softDeleteRetentionDays: 7,
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         keyPermissions: [
///             "Create",
///             "Get",
///         ],
///         secretPermissions: [
///             "Set",
///             "Get",
///             "Delete",
///             "Purge",
///             "Recover",
///         ],
///     }],
/// });
/// const exampleSecret = new azure.keyvault.Secret("example", {
///     name: "example",
///     value: "example-secret",
///     keyVaultId: exampleKeyVault.id,
/// });
/// const exampleLinkedServiceKeyVault = new azure.datafactory.LinkedServiceKeyVault("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     keyVaultId: exampleKeyVault.id,
/// });
/// const exampleCredentialServicePrincipal = new azure.datafactory.CredentialServicePrincipal("example", {
///     name: "example",
///     description: "example description",
///     dataFactoryId: exampleFactory.id,
///     tenantId: current.then(current => current.tenantId),
///     servicePrincipalId: current.then(current => current.clientId),
///     servicePrincipalKey: {
///         linkedServiceName: exampleLinkedServiceKeyVault.name,
///         secretName: exampleSecret.name,
///         secretVersion: exampleSecret.version,
///     },
///     annotations: [
///         "1",
///         "2",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="westeurope")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     soft_delete_retention_days=7,
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "key_permissions": [
///             "Create",
///             "Get",
///         ],
///         "secret_permissions": [
///             "Set",
///             "Get",
///             "Delete",
///             "Purge",
///             "Recover",
///         ],
///     }])
/// example_secret = azure.keyvault.Secret("example",
///     name="example",
///     value="example-secret",
///     key_vault_id=example_key_vault.id)
/// example_linked_service_key_vault = azure.datafactory.LinkedServiceKeyVault("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     key_vault_id=example_key_vault.id)
/// example_credential_service_principal = azure.datafactory.CredentialServicePrincipal("example",
///     name="example",
///     description="example description",
///     data_factory_id=example_factory.id,
///     tenant_id=current.tenant_id,
///     service_principal_id=current.client_id,
///     service_principal_key={
///         "linked_service_name": example_linked_service_key_vault.name,
///         "secret_name": example_secret.name,
///         "secret_version": example_secret.version,
///     },
///     annotations=[
///         "1",
///         "2",
///     ])
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
///         Location = "westeurope",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         SoftDeleteRetentionDays = 7,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                     "Get",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                     "Get",
///                     "Delete",
///                     "Purge",
///                     "Recover",
///                 },
///             },
///         },
///     });
///
///     var exampleSecret = new Azure.KeyVault.Secret("example", new()
///     {
///         Name = "example",
///         Value = "example-secret",
///         KeyVaultId = exampleKeyVault.Id,
///     });
///
///     var exampleLinkedServiceKeyVault = new Azure.DataFactory.LinkedServiceKeyVault("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         KeyVaultId = exampleKeyVault.Id,
///     });
///
///     var exampleCredentialServicePrincipal = new Azure.DataFactory.CredentialServicePrincipal("example", new()
///     {
///         Name = "example",
///         Description = "example description",
///         DataFactoryId = exampleFactory.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ServicePrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ClientId),
///         ServicePrincipalKey = new Azure.DataFactory.Inputs.CredentialServicePrincipalServicePrincipalKeyArgs
///         {
///             LinkedServiceName = exampleLinkedServiceKeyVault.Name,
///             SecretName = exampleSecret.Name,
///             SecretVersion = exampleSecret.Version,
///         },
///         Annotations = new[]
///         {
///             "1",
///             "2",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
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
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                    pulumi.String("example"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			SkuName:                 pulumi.String("premium"),
/// 			SoftDeleteRetentionDays: pulumi.Int(7),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Get"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Set"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Recover"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecret, err := keyvault.NewSecret(ctx, "example", &keyvault.SecretArgs{
/// 			Name:       pulumi.String("example"),
/// 			Value:      pulumi.String("example-secret"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinkedServiceKeyVault, err := datafactory.NewLinkedServiceKeyVault(ctx, "example", &datafactory.LinkedServiceKeyVaultArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			KeyVaultId:    exampleKeyVault.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewCredentialServicePrincipal(ctx, "example", &datafactory.CredentialServicePrincipalArgs{
/// 			Name:               pulumi.String("example"),
/// 			Description:        pulumi.String("example description"),
/// 			DataFactoryId:      exampleFactory.ID(),
/// 			TenantId:           pulumi.String(current.TenantId),
/// 			ServicePrincipalId: pulumi.String(current.ClientId),
/// 			ServicePrincipalKey: &datafactory.CredentialServicePrincipalServicePrincipalKeyArgs{
/// 				LinkedServiceName: exampleLinkedServiceKeyVault.Name,
/// 				SecretName:        exampleSecret.Name,
/// 				SecretVersion:     exampleSecret.Version,
/// 			},
/// 			Annotations: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Secret;
/// import com.pulumi.azure.keyvault.SecretArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceKeyVault;
/// import com.pulumi.azure.datafactory.LinkedServiceKeyVaultArgs;
/// import com.pulumi.azure.datafactory.CredentialServicePrincipal;
/// import com.pulumi.azure.datafactory.CredentialServicePrincipalArgs;
/// import com.pulumi.azure.datafactory.inputs.CredentialServicePrincipalServicePrincipalKeyArgs;
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
///             .location("westeurope")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .softDeleteRetentionDays(7)
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .keyPermissions(
///                     "Create",
///                     "Get")
///                 .secretPermissions(
///                     "Set",
///                     "Get",
///                     "Delete",
///                     "Purge",
///                     "Recover")
///                 .build())
///             .build());
///
///         var exampleSecret = new Secret("exampleSecret", SecretArgs.builder()
///             .name("example")
///             .value("example-secret")
///             .keyVaultId(exampleKeyVault.id())
///             .build());
///
///         var exampleLinkedServiceKeyVault = new LinkedServiceKeyVault("exampleLinkedServiceKeyVault", LinkedServiceKeyVaultArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .keyVaultId(exampleKeyVault.id())
///             .build());
///
///         var exampleCredentialServicePrincipal = new CredentialServicePrincipal("exampleCredentialServicePrincipal", CredentialServicePrincipalArgs.builder()
///             .name("example")
///             .description("example description")
///             .dataFactoryId(exampleFactory.id())
///             .tenantId(current.tenantId())
///             .servicePrincipalId(current.clientId())
///             .servicePrincipalKey(CredentialServicePrincipalServicePrincipalKeyArgs.builder()
///                 .linkedServiceName(exampleLinkedServiceKeyVault.name())
///                 .secretName(exampleSecret.name())
///                 .secretVersion(exampleSecret.version())
///                 .build())
///             .annotations(
///                 "1",
///                 "2")
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
///       location: westeurope
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///       softDeleteRetentionDays: 7
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Create
///             - Get
///           secretPermissions:
///             - Set
///             - Get
///             - Delete
///             - Purge
///             - Recover
///   exampleSecret:
///     type: azure:keyvault:Secret
///     name: example
///     properties:
///       name: example
///       value: example-secret
///       keyVaultId: ${exampleKeyVault.id}
///   exampleLinkedServiceKeyVault:
///     type: azure:datafactory:LinkedServiceKeyVault
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       keyVaultId: ${exampleKeyVault.id}
///   exampleCredentialServicePrincipal:
///     type: azure:datafactory:CredentialServicePrincipal
///     name: example
///     properties:
///       name: example
///       description: example description
///       dataFactoryId: ${exampleFactory.id}
///       tenantId: ${current.tenantId}
///       servicePrincipalId: ${current.clientId}
///       servicePrincipalKey:
///         linkedServiceName: ${exampleLinkedServiceKeyVault.name}
///         secretName: ${exampleSecret.name}
///         secretVersion: ${exampleSecret.version}
///       annotations:
///         - '1'
///         - '2'
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
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factory Credentials can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/credentialServicePrincipal:CredentialServicePrincipal example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resources/providers/Microsoft.DataFactory/factories/example/credentials/credential1
/// ```
class CredentialServicePrincipal extends pulumi.CustomResource {
  /// List of tags that can be used for describing the Data Factory Credential.
  late final pulumi.Output<List<String>?> annotations;

  /// The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;

  /// The description for the Data Factory Credential.
  late final pulumi.Output<String?> description;

  /// Specifies the name of the Credential. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The Client ID of the Service Principal.
  late final pulumi.Output<String> servicePrincipalId;

  /// A `service_principal_key` block as defined below.
  late final pulumi.Output<CredentialServicePrincipalServicePrincipalKey?>
  servicePrincipalKey;

  /// The Tenant ID of the Service Principal.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [CredentialServicePrincipal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CredentialServicePrincipal]. {@macro pulumi_datafactory_credential_service_principal_credential_service_principal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CredentialServicePrincipal(
    String name, {
    CredentialServicePrincipalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/credentialServicePrincipal:CredentialServicePrincipal',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    servicePrincipalKey =
        registerOutput<CredentialServicePrincipalServicePrincipalKey?>(
          'servicePrincipalKey',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CredentialServicePrincipalServicePrincipalKey.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [CredentialServicePrincipal] resource's state with the given [name] and [id].
  static CredentialServicePrincipal get(
    String name,
    pulumi.Input<String> id, {
    CredentialServicePrincipalState? state,
  }) {
    return CredentialServicePrincipal._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CredentialServicePrincipal._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/credentialServicePrincipal:CredentialServicePrincipal',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    servicePrincipalKey =
        registerOutput<CredentialServicePrincipalServicePrincipalKey?>(
          'servicePrincipalKey',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CredentialServicePrincipalServicePrincipalKey.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    tenantId = registerOutput<String>('tenantId');
  }
}
