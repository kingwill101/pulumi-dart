import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dataset_args.dart';
import 'custom_dataset_linked_service.dart';
import 'custom_dataset_state.dart';

/// Manages a Dataset inside an Azure Data Factory. This is a generic resource that supports all different Dataset Types.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountKind: "BlobStorage",
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleLinkedCustomService = new azure.datafactory.LinkedCustomService("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     type: "AzureBlobStorage",
///     typePropertiesJson: pulumi.interpolate`{
///   \"connectionString\":\"${exampleAccount.primaryConnectionString}\"
/// }
/// `,
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "content",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleCustomDataset = new azure.datafactory.CustomDataset("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     type: "Json",
///     linkedService: {
///         name: exampleLinkedCustomService.name,
///         parameters: {
///             key1: "value1",
///         },
///     },
///     typePropertiesJson: pulumi.interpolate`{
///   \"location\": {
///     \"container\":\"${exampleContainer.name}\",
///     \"fileName\":\"foo.txt\",
///     \"folderPath\": \"foo/bar/\",
///     \"type\":\"AzureBlobStorageLocation\"
///   },
///   \"encodingName\":\"UTF-8\"
/// }
/// `,
///     description: "test description",
///     annotations: [
///         "test1",
///         "test2",
///         "test3",
///     ],
///     folder: "testFolder",
///     parameters: {
///         foo: "test1",
///         Bar: "Test2",
///     },
///     additionalProperties: {
///         foo: "test1",
///         bar: "test2",
///     },
///     schemaJson: `{
///   \\"type\\": \\"object\\",
///   \\"properties\\": {
///     \\"name\\": {
///       \\"type\\": \\"object\\",
///       \\"properties\\": {
///         \\"firstName\\": {
///           \\"type\\": \\"string\\"
///         },
///         \\"lastName\\": {
///           \\"type\\": \\"string\\"
///         }
///       }
///     },
///     \\"age\\": {
///       \\"type\\": \\"integer\\"
///     }
///   }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_kind="BlobStorage",
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_linked_custom_service = azure.datafactory.LinkedCustomService("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     type="AzureBlobStorage",
///     type_properties_json=example_account.primary_connection_string.apply(lambda primary_connection_string: f"""{{
///   \"connectionString\":\"{primary_connection_string}\"
/// }}
/// """))
/// example_container = azure.storage.Container("example",
///     name="content",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_custom_dataset = azure.datafactory.CustomDataset("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     type="Json",
///     linked_service={
///         "name": example_linked_custom_service.name,
///         "parameters": {
///             "key1": "value1",
///         },
///     },
///     type_properties_json=example_container.name.apply(lambda name: f"""{{
///   \"location\": {{
///     \"container\":\"{name}\",
///     \"fileName\":\"foo.txt\",
///     \"folderPath\": \"foo/bar/\",
///     \"type\":\"AzureBlobStorageLocation\"
///   }},
///   \"encodingName\":\"UTF-8\"
/// }}
/// """),
///     description="test description",
///     annotations=[
///         "test1",
///         "test2",
///         "test3",
///     ],
///     folder="testFolder",
///     parameters={
///         "foo": "test1",
///         "Bar": "Test2",
///     },
///     additional_properties={
///         "foo": "test1",
///         "bar": "test2",
///     },
///     schema_json="""{
///   \"type\": \"object\",
///   \"properties\": {
///     \"name\": {
///       \"type\": \"object\",
///       \"properties\": {
///         \"firstName\": {
///           \"type\": \"string\"
///         },
///         \"lastName\": {
///           \"type\": \"string\"
///         }
///       }
///     },
///     \"age\": {
///       \"type\": \"integer\"
///     }
///   }
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.DataFactory.Inputs.FactoryIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountKind = "BlobStorage",
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleLinkedCustomService = new Azure.DataFactory.LinkedCustomService("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         Type = "AzureBlobStorage",
///         TypePropertiesJson = exampleAccount.PrimaryConnectionString.Apply(primaryConnectionString => @$"{{
///   \""connectionString\"":\""{primaryConnectionString}\""
/// }}
/// "),
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "content",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleCustomDataset = new Azure.DataFactory.CustomDataset("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         Type = "Json",
///         LinkedService = new Azure.DataFactory.Inputs.CustomDatasetLinkedServiceArgs
///         {
///             Name = exampleLinkedCustomService.Name,
///             Parameters =
///             {
///                 { "key1", "value1" },
///             },
///         },
///         TypePropertiesJson = exampleContainer.Name.Apply(name => @$"{{
///   \""location\"": {{
///     \""container\"":\""{name}\"",
///     \""fileName\"":\""foo.txt\"",
///     \""folderPath\"": \""foo/bar/\"",
///     \""type\"":\""AzureBlobStorageLocation\""
///   }},
///   \""encodingName\"":\""UTF-8\""
/// }}
/// "),
///         Description = "test description",
///         Annotations = new[]
///         {
///             "test1",
///             "test2",
///             "test3",
///         },
///         Folder = "testFolder",
///         Parameters =
///         {
///             { "foo", "test1" },
///             { "Bar", "Test2" },
///         },
///         AdditionalProperties =
///         {
///             { "foo", "test1" },
///             { "bar", "test2" },
///         },
///         SchemaJson = @"{
///   \""type\"": \""object\"",
///   \""properties\"": {
///     \""name\"": {
///       \""type\"": \""object\"",
///       \""properties\"": {
///         \""firstName\"": {
///           \""type\"": \""string\""
///         },
///         \""lastName\"": {
///           \""type\"": \""string\""
///         }
///       }
///     },
///     \""age\"": {
///       \""type\"": \""integer\""
///     }
///   }
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &datafactory.FactoryIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountKind:            pulumi.String("BlobStorage"),
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinkedCustomService, err := datafactory.NewLinkedCustomService(ctx, "example", &datafactory.LinkedCustomServiceArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			Type:          pulumi.String("AzureBlobStorage"),
/// 			TypePropertiesJson: exampleAccount.PrimaryConnectionString.ApplyT(func(primaryConnectionString string) (string, error) {
/// 				return fmt.Sprintf("{\n  \\\"connectionString\\\":\\\"%v\\\"\n}\n", primaryConnectionString), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("content"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewCustomDataset(ctx, "example", &datafactory.CustomDatasetArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			Type:          pulumi.String("Json"),
/// 			LinkedService: &datafactory.CustomDatasetLinkedServiceArgs{
/// 				Name: exampleLinkedCustomService.Name,
/// 				Parameters: pulumi.StringMap{
/// 					"key1": pulumi.String("value1"),
/// 				},
/// 			},
/// 			TypePropertiesJson: exampleContainer.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf(`{
///   \"location\": {
///     \"container\":\"%v\",
///     \"fileName\":\"foo.txt\",
///     \"folderPath\": \"foo/bar/\",
///     \"type\":\"AzureBlobStorageLocation\"
///   },
///   \"encodingName\":\"UTF-8\"
/// }
/// `, name), nil
/// 			}).(pulumi.StringOutput),
/// 			Description: pulumi.String("test description"),
/// 			Annotations: pulumi.StringArray{
/// 				pulumi.String("test1"),
/// 				pulumi.String("test2"),
/// 				pulumi.String("test3"),
/// 			},
/// 			Folder: pulumi.String("testFolder"),
/// 			Parameters: pulumi.StringMap{
/// 				"foo": pulumi.String("test1"),
/// 				"Bar": pulumi.String("Test2"),
/// 			},
/// 			AdditionalProperties: pulumi.StringMap{
/// 				"foo": pulumi.String("test1"),
/// 				"bar": pulumi.String("test2"),
/// 			},
/// 			SchemaJson: pulumi.String(`{
///   \"type\": \"object\",
///   \"properties\": {
///     \"name\": {
///       \"type\": \"object\",
///       \"properties\": {
///         \"firstName\": {
///           \"type\": \"string\"
///         },
///         \"lastName\": {
///           \"type\": \"string\"
///         }
///       }
///     },
///     \"age\": {
///       \"type\": \"integer\"
///     }
///   }
/// }
/// `),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_datafactory_factory" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "example"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_kind             = "BlobStorage"
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_datafactory_linkedcustomservice" "example" {
///   name                 = "example"
///   data_factory_id      = azure_datafactory_factory.example.id
///   type                 = "AzureBlobStorage"
///   type_properties_json ="{
///   \"connectionString\":\"${azure_storage_account.example.primary_connection_string}\"
/// }
/// "
/// }
/// resource "azure_storage_container" "example" {
///   name                  = "content"
///   storage_account_name  = azure_storage_account.example.name
///   container_access_type = "private"
/// }
/// resource "azure_datafactory_customdataset" "example" {
///   name            = "example"
///   data_factory_id = azure_datafactory_factory.example.id
///   type            = "Json"
///   linked_service = {
///     name = azure_datafactory_linkedcustomservice.example.name
///     parameters = {
///       "key1" = "value1"
///     }
///   }
///   type_properties_json ="{
///   \"location\": {
///     \"container\":\"${azure_storage_container.example.name}\",
///     \"fileName\":\"foo.txt\",
///     \"folderPath\": \"foo/bar/\",
///     \"type\":\"AzureBlobStorageLocation\"
///   },
///   \"encodingName\":\"UTF-8\"
/// }
/// "
///   description          = "test description"
///   annotations          = ["test1", "test2", "test3"]
///   folder               = "testFolder"
///   parameters = {
///     "foo" = "test1"
///     "Bar" = "Test2"
///   }
///   additional_properties = {
///     "foo" = "test1"
///     "bar" = "test2"
///   }
///   schema_json = "{\n  \\\"type\\\": \\\"object\\\",\n  \\\"properties\\\": {\n    \\\"name\\\": {\n      \\\"type\\\": \\\"object\\\",\n      \\\"properties\\\": {\n        \\\"firstName\\\": {\n          \\\"type\\\": \\\"string\\\"\n        },\n        \\\"lastName\\\": {\n          \\\"type\\\": \\\"string\\\"\n        }\n      }\n    },\n    \\\"age\\\": {\n      \\\"type\\\": \\\"integer\\\"\n    }\n  }\n}\n"
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.inputs.FactoryIdentityArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.datafactory.LinkedCustomService;
/// import com.pulumi.azure.datafactory.LinkedCustomServiceArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.datafactory.CustomDataset;
/// import com.pulumi.azure.datafactory.CustomDatasetArgs;
/// import com.pulumi.azure.datafactory.inputs.CustomDatasetLinkedServiceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(FactoryIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountKind("BlobStorage")
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleLinkedCustomService = new LinkedCustomService("exampleLinkedCustomService", LinkedCustomServiceArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .type("AzureBlobStorage")
///             .typePropertiesJson(exampleAccount.primaryConnectionString().applyValue(_primaryConnectionString -> """
/// {
///   \"connectionString\":\"%s\"
/// }
/// ", _primaryConnectionString)))
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("content")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleCustomDataset = new CustomDataset("exampleCustomDataset", CustomDatasetArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .type("Json")
///             .linkedService(CustomDatasetLinkedServiceArgs.builder()
///                 .name(exampleLinkedCustomService.name())
///                 .parameters(Map.of("key1", "value1"))
///                 .build())
///             .typePropertiesJson(exampleContainer.name().applyValue(_name -> """
/// {
///   \"location\": {
///     \"container\":\"%s\",
///     \"fileName\":\"foo.txt\",
///     \"folderPath\": \"foo/bar/\",
///     \"type\":\"AzureBlobStorageLocation\"
///   },
///   \"encodingName\":\"UTF-8\"
/// }
/// ", _name)))
///             .description("test description")
///             .annotations(
///                 "test1",
///                 "test2",
///                 "test3")
///             .folder("testFolder")
///             .parameters(Map.ofEntries(
///                 Map.entry("foo", "test1"),
///                 Map.entry("Bar", "Test2")
///             ))
///             .additionalProperties(Map.ofEntries(
///                 Map.entry("foo", "test1"),
///                 Map.entry("bar", "test2")
///             ))
///             .schemaJson("""
/// {
///   \"type\": \"object\",
///   \"properties\": {
///     \"name\": {
///       \"type\": \"object\",
///       \"properties\": {
///         \"firstName\": {
///           \"type\": \"string\"
///         },
///         \"lastName\": {
///           \"type\": \"string\"
///         }
///       }
///     },
///     \"age\": {
///       \"type\": \"integer\"
///     }
///   }
/// }
///             """)
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
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountKind: BlobStorage
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleLinkedCustomService:
///     type: azure:datafactory:LinkedCustomService
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       type: AzureBlobStorage
///       typePropertiesJson: |
///         {
///           \"connectionString\":\"${exampleAccount.primaryConnectionString}\"
///         }
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: content
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleCustomDataset:
///     type: azure:datafactory:CustomDataset
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       type: Json
///       linkedService:
///         name: ${exampleLinkedCustomService.name}
///         parameters:
///           key1: value1
///       typePropertiesJson: |
///         {
///           \"location\": {
///             \"container\":\"${exampleContainer.name}\",
///             \"fileName\":\"foo.txt\",
///             \"folderPath\": \"foo/bar/\",
///             \"type\":\"AzureBlobStorageLocation\"
///           },
///           \"encodingName\":\"UTF-8\"
///         }
///       description: test description
///       annotations:
///         - test1
///         - test2
///         - test3
///       folder: testFolder
///       parameters:
///         foo: test1
///         Bar: Test2
///       additionalProperties:
///         foo: test1
///         bar: test2
///       schemaJson: |
///         {
///           \"type\": \"object\",
///           \"properties\": {
///             \"name\": {
///               \"type\": \"object\",
///               \"properties\": {
///                 \"firstName\": {
///                   \"type\": \"string\"
///                 },
///                 \"lastName\": {
///                   \"type\": \"string\"
///                 }
///               }
///             },
///             \"age\": {
///               \"type\": \"integer\"
///             }
///           }
///         }
/// ```
///
///
/// ## Import
///
/// Data Factory Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/customDataset:CustomDataset example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class CustomDataset extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  late final pulumi.Output<String?> description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// A `linkedService` block as defined below.
  late final pulumi.Output<CustomDatasetLinkedService> linkedService;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Dataset.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// A JSON object that contains the schema of the Data Factory Dataset.
  late final pulumi.Output<String?> schemaJson;
  /// The type of dataset that will be associated with Data Factory. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;
  /// A JSON object that contains the properties of the Data Factory Dataset. Refer to
  /// datafactory/models.go for the shape of the expected JSON. For example, the JSON object for `AzureBlob`-typed Dataset will be unmarshaled into `AzureBlobDatasetTypeProperties struct`.
  late final pulumi.Output<String> typePropertiesJson;

  /// Creates a new [CustomDataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDataset]. {@macro pulumi_datafactory_custom_dataset_custom_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDataset(
    String name, {
    CustomDatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/customDataset:CustomDataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedService = registerOutput<CustomDatasetLinkedService>('linkedService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDatasetLinkedService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schemaJson = registerOutput<String?>('schemaJson');
    type = registerOutput<String>('type');
    typePropertiesJson = registerOutput<String>('typePropertiesJson');
  }

  /// Gets an existing [CustomDataset] resource's state with the given [name] and [id].
  static CustomDataset get(
    String name,
    pulumi.Input<String> id, {
    CustomDatasetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomDataset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomDataset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/customDataset:CustomDataset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedService = registerOutput<CustomDatasetLinkedService>('linkedService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDatasetLinkedService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schemaJson = registerOutput<String?>('schemaJson');
    type = registerOutput<String>('type');
    typePropertiesJson = registerOutput<String>('typePropertiesJson');
  }

  /// Creates a typed reference to an existing [CustomDataset] resource.
  CustomDataset.reference(String urn)
    : super(
        'azure:datafactory/customDataset:CustomDataset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedService = registerOutput<CustomDatasetLinkedService>('linkedService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDatasetLinkedService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schemaJson = registerOutput<String?>('schemaJson');
    type = registerOutput<String>('type');
    typePropertiesJson = registerOutput<String>('typePropertiesJson');
  }
}
