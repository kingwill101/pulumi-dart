import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_blob_storage_args.dart';
import 'linked_service_azure_blob_storage_key_vault_sas_token.dart';
import 'linked_service_azure_blob_storage_sas_token_linked_key_vault_key.dart';
import 'linked_service_azure_blob_storage_service_principal_linked_key_vault_key.dart';
import 'linked_service_azure_blob_storage_state.dart';

/// Manages a Linked Service (connection) between an Azure Blob Storage Account and Azure Data Factory.
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
/// const example = azure.storage.getAccountOutput({
///     name: "storageaccountname",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleLinkedServiceAzureBlobStorage = new azure.datafactory.LinkedServiceAzureBlobStorage("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: example.apply(example => example.primaryConnectionString),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.storage.get_account_output(name="storageaccountname",
///     resource_group_name=example_resource_group.name)
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_linked_service_azure_blob_storage = azure.datafactory.LinkedServiceAzureBlobStorage("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string=example.primary_connection_string)
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
///     var example = Azure.Storage.GetAccount.Invoke(new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleLinkedServiceAzureBlobStorage = new Azure.DataFactory.LinkedServiceAzureBlobStorage("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = example.Apply(getAccountResult => getAccountResult.PrimaryConnectionString),
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		example := storage.LookupAccountOutput(ctx, storage.GetAccountOutputArgs{
/// 			Name:              pulumi.String("storageaccountname"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceAzureBlobStorage(ctx, "example", &datafactory.LinkedServiceAzureBlobStorageArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			ConnectionString: pulumi.String(example.ApplyT(func(example storage.GetAccountResult) (*string, error) {
/// 				return &example.PrimaryConnectionString, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureBlobStorage;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureBlobStorageArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = StorageFunctions.getAccount(GetAccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleLinkedServiceAzureBlobStorage = new LinkedServiceAzureBlobStorage("exampleLinkedServiceAzureBlobStorage", LinkedServiceAzureBlobStorageArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString(example.applyValue(_example -> _example.primaryConnectionString()))
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
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleLinkedServiceAzureBlobStorage:
///     type: azure:datafactory:LinkedServiceAzureBlobStorage
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: ${example.primaryConnectionString}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccount
///       arguments:
///         name: storageaccountname
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
///
/// ## Import
///
/// Data Factory Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceAzureBlobStorage:LinkedServiceAzureBlobStorage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceAzureBlobStorage extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Blob Storage Linked Service:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The connection string. Conflicts with `connection_string_insecure`, `sas_uri` and `service_endpoint`.
  late final pulumi.Output<String?> connectionString;
  /// The connection string sent insecurely. Conflicts with `connection_string`, `sas_uri` and `service_endpoint`.
  ///
  /// > **Note:** `connection_string` uses the Azure [SecureString](https://learn.microsoft.com/en-us/dotnet/api/microsoft.azure.management.datafactory.models.securestring) to encrypt the contents within the REST payload sent to Azure whilst the `connection_string_insecure` is sent as a regular string. Both properties are still sent using SSL/HTTPS. At this time the portal will not decrypt Secure Strings so the `connection_string` property in the portal will show as `******` whilst `connection_string_insecure` will be viewable in the portal.
  late final pulumi.Output<String?> connectionStringInsecure;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  late final pulumi.Output<LinkedServiceAzureBlobStorageKeyVaultSasToken> keyVaultSasToken;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// A `sas_token_linked_key_vault_key` block as defined below. Use this argument to store SAS Token in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. A `sas_uri` is required.
  late final pulumi.Output<LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey> sasTokenLinkedKeyVaultKey;
  /// The SAS URI. Conflicts with `connection_string_insecure`, `connection_string` and `service_endpoint`.
  late final pulumi.Output<String?> sasUri;
  late final pulumi.Output<String?> serviceEndpoint;
  late final pulumi.Output<String?> servicePrincipalId;
  late final pulumi.Output<String?> servicePrincipalKey;
  late final pulumi.Output<LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey?> servicePrincipalLinkedKeyVaultKey;
  late final pulumi.Output<String?> storageKind;
  late final pulumi.Output<String?> tenantId;
  late final pulumi.Output<bool?> useManagedIdentity;

  /// Creates a new [LinkedServiceAzureBlobStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceAzureBlobStorage]. {@macro pulumi_datafactory_linked_service_azure_blob_storage_linked_service_azure_blob_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceAzureBlobStorage(
    String name, {
    LinkedServiceAzureBlobStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureBlobStorage:LinkedServiceAzureBlobStorage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.connectionString = registerOutput<String?>('connectionString');
    this.connectionStringInsecure = registerOutput<String?>('connectionStringInsecure');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.keyVaultSasToken = registerOutput<LinkedServiceAzureBlobStorageKeyVaultSasToken>('keyVaultSasToken');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.sasTokenLinkedKeyVaultKey = registerOutput<LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey>('sasTokenLinkedKeyVaultKey');
    this.sasUri = registerOutput<String?>('sasUri');
    this.serviceEndpoint = registerOutput<String?>('serviceEndpoint');
    this.servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    this.servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    this.servicePrincipalLinkedKeyVaultKey = registerOutput<LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey?>('servicePrincipalLinkedKeyVaultKey');
    this.storageKind = registerOutput<String?>('storageKind');
    this.tenantId = registerOutput<String?>('tenantId');
    this.useManagedIdentity = registerOutput<bool?>('useManagedIdentity');
  }

  /// Gets an existing [LinkedServiceAzureBlobStorage] resource's state with the given [name] and [id].
  static LinkedServiceAzureBlobStorage get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceAzureBlobStorageState? state,
  }) {
    return LinkedServiceAzureBlobStorage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServiceAzureBlobStorage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureBlobStorage:LinkedServiceAzureBlobStorage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.connectionString = registerOutput<String?>('connectionString');
    this.connectionStringInsecure = registerOutput<String?>('connectionStringInsecure');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.keyVaultSasToken = registerOutput<LinkedServiceAzureBlobStorageKeyVaultSasToken>('keyVaultSasToken');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.sasTokenLinkedKeyVaultKey = registerOutput<LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey>('sasTokenLinkedKeyVaultKey');
    this.sasUri = registerOutput<String?>('sasUri');
    this.serviceEndpoint = registerOutput<String?>('serviceEndpoint');
    this.servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    this.servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    this.servicePrincipalLinkedKeyVaultKey = registerOutput<LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey?>('servicePrincipalLinkedKeyVaultKey');
    this.storageKind = registerOutput<String?>('storageKind');
    this.tenantId = registerOutput<String?>('tenantId');
    this.useManagedIdentity = registerOutput<bool?>('useManagedIdentity');
  }
}
