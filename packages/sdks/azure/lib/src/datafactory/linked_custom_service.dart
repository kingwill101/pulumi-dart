import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_custom_service_args.dart';
import 'linked_custom_service_integration_runtime.dart';
import 'linked_custom_service_state.dart';

/// Manages a Linked Service (connection) between a resource and Azure Data Factory. This is a generic resource that supports all different Linked Service Types.
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
///     description: "test description",
///     typePropertiesJson: pulumi.interpolate`{
///   \"connectionString\":\"${exampleAccount.primaryConnectionString}\"
/// }
/// `,
///     parameters: {
///         foo: "bar",
///         Env: "Test",
///     },
///     annotations: [
///         "test1",
///         "test2",
///         "test3",
///     ],
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
///     description="test description",
///     type_properties_json=example_account.primary_connection_string.apply(lambda primary_connection_string: f"""{{
///   \"connectionString\":\"{primary_connection_string}\"
/// }}
/// """),
///     parameters={
///         "foo": "bar",
///         "Env": "Test",
///     },
///     annotations=[
///         "test1",
///         "test2",
///         "test3",
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
///         Description = "test description",
///         TypePropertiesJson = exampleAccount.PrimaryConnectionString.Apply(primaryConnectionString => @$"{{
///   \""connectionString\"":\""{primaryConnectionString}\""
/// }}
/// "),
///         Parameters =
///         {
///             { "foo", "bar" },
///             { "Env", "Test" },
///         },
///         Annotations = new[]
///         {
///             "test1",
///             "test2",
///             "test3",
///         },
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
/// 		_, err = datafactory.NewLinkedCustomService(ctx, "example", &datafactory.LinkedCustomServiceArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Type:          pulumi.String("AzureBlobStorage"),
/// 			Description:   pulumi.String("test description"),
/// 			TypePropertiesJson: exampleAccount.PrimaryConnectionString.ApplyT(func(primaryConnectionString string) (string, error) {
/// 				return fmt.Sprintf("{\n  \\\"connectionString\\\":\\\"%v\\\"\n}\n", primaryConnectionString), nil
/// 			}).(pulumi.StringOutput),
/// 			Parameters: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 				"Env": pulumi.String("Test"),
/// 			},
/// 			Annotations: pulumi.StringArray{
/// 				pulumi.String("test1"),
/// 				pulumi.String("test2"),
/// 				pulumi.String("test3"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.inputs.FactoryIdentityArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.datafactory.LinkedCustomService;
/// import com.pulumi.azure.datafactory.LinkedCustomServiceArgs;
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
///             .description("test description")
///             .typePropertiesJson(exampleAccount.primaryConnectionString().applyValue(_primaryConnectionString -> """
/// {
///   \"connectionString\":\"%s\"
/// }
/// ", _primaryConnectionString)))
///             .parameters(Map.ofEntries(
///                 Map.entry("foo", "bar"),
///                 Map.entry("Env", "Test")
///             ))
///             .annotations(
///                 "test1",
///                 "test2",
///                 "test3")
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
///       description: test description
///       typePropertiesJson: |
///         {
///           \"connectionString\":\"${exampleAccount.primaryConnectionString}\"
///         }
///       parameters:
///         foo: bar
///         Env: Test
///       annotations:
///         - test1
///         - test2
///         - test3
/// ```
///
///
/// ## Import
///
/// Data Factory Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedCustomService:LinkedCustomService example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedCustomService extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// An `integration_runtime` block as defined below.
  late final pulumi.Output<LinkedCustomServiceIntegrationRuntime?> integrationRuntime;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The type of data stores that will be connected to Data Factory. For full list of supported data stores, please refer to [Azure Data Factory connector](https://docs.microsoft.com/azure/data-factory/connector-overview). Please refer to Microsoft.DataFactory factories/linkedservices for the type values syntax. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;
  /// A JSON object that contains the properties of the Data Factory Linked Service. Refer to
  /// datafactory/models.go for the shape of the expected JSON. For example, the JSON object for `AzureBlobStorage`-typed Linked Service will be unmarshaled into `AzureBlobStorageLinkedServiceTypeProperties struct`.
  late final pulumi.Output<String> typePropertiesJson;

  /// Creates a new [LinkedCustomService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedCustomService]. {@macro pulumi_datafactory_linked_custom_service_linked_custom_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedCustomService(
    String name, {
    LinkedCustomServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedCustomService:LinkedCustomService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.integrationRuntime = registerOutput<LinkedCustomServiceIntegrationRuntime?>('integrationRuntime');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.type = registerOutput<String>('type');
    this.typePropertiesJson = registerOutput<String>('typePropertiesJson');
  }

  /// Gets an existing [LinkedCustomService] resource's state with the given [name] and [id].
  static LinkedCustomService get(
    String name,
    pulumi.Input<String> id, {
    LinkedCustomServiceState? state,
  }) {
    return LinkedCustomService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedCustomService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedCustomService:LinkedCustomService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.integrationRuntime = registerOutput<LinkedCustomServiceIntegrationRuntime?>('integrationRuntime');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.type = registerOutput<String>('type');
    this.typePropertiesJson = registerOutput<String>('typePropertiesJson');
  }
}
