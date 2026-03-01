import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_args.dart';
import 'data_flow_sink.dart';
import 'data_flow_source.dart';
import 'data_flow_state.dart';
import 'data_flow_transformation.dart';

/// Manages a Data Flow inside an Azure Data Factory.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleLinkedCustomService = new azure.datafactory.LinkedCustomService("example", {
///     name: "linked_service",
///     dataFactoryId: exampleFactory.id,
///     type: "AzureBlobStorage",
///     typePropertiesJson: pulumi.interpolate`{
///   \"connectionString\": \"${exampleAccount.primaryConnectionString}\"
/// }
/// `,
/// });
/// const example1 = new azure.datafactory.DatasetJson("example1", {
///     name: "dataset1",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedCustomService.name,
///     azureBlobStorageLocation: {
///         container: "container",
///         path: "foo/bar/",
///         filename: "foo.txt",
///     },
///     encoding: "UTF-8",
/// });
/// const example2 = new azure.datafactory.DatasetJson("example2", {
///     name: "dataset2",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedCustomService.name,
///     azureBlobStorageLocation: {
///         container: "container",
///         path: "foo/bar/",
///         filename: "bar.txt",
///     },
///     encoding: "UTF-8",
/// });
/// const example1FlowletDataFlow = new azure.datafactory.FlowletDataFlow("example1", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     sources: [{
///         name: "source1",
///         linkedService: {
///             name: exampleLinkedCustomService.name,
///         },
///     }],
///     sinks: [{
///         name: "sink1",
///         linkedService: {
///             name: exampleLinkedCustomService.name,
///         },
///     }],
///     script: `source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
/// `,
/// });
/// const example2FlowletDataFlow = new azure.datafactory.FlowletDataFlow("example2", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     sources: [{
///         name: "source1",
///         linkedService: {
///             name: exampleLinkedCustomService.name,
///         },
///     }],
///     sinks: [{
///         name: "sink1",
///         linkedService: {
///             name: exampleLinkedCustomService.name,
///         },
///     }],
///     script: `source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
/// `,
/// });
/// const exampleDataFlow = new azure.datafactory.DataFlow("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     sources: [{
///         name: "source1",
///         flowlet: {
///             name: example1FlowletDataFlow.name,
///             parameters: {
///                 Key1: "value1",
///             },
///         },
///         dataset: {
///             name: example1.name,
///         },
///     }],
///     sinks: [{
///         name: "sink1",
///         flowlet: {
///             name: example2FlowletDataFlow.name,
///             parameters: {
///                 Key1: "value1",
///             },
///         },
///         dataset: {
///             name: example2.name,
///         },
///     }],
///     script: `source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
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
/// example_account = azure.storage.Account("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_linked_custom_service = azure.datafactory.LinkedCustomService("example",
///     name="linked_service",
///     data_factory_id=example_factory.id,
///     type="AzureBlobStorage",
///     type_properties_json=example_account.primary_connection_string.apply(lambda primary_connection_string: f"""{{
///   \"connectionString\": \"{primary_connection_string}\"
/// }}
/// """))
/// example1 = azure.datafactory.DatasetJson("example1",
///     name="dataset1",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_custom_service.name,
///     azure_blob_storage_location={
///         "container": "container",
///         "path": "foo/bar/",
///         "filename": "foo.txt",
///     },
///     encoding="UTF-8")
/// example2 = azure.datafactory.DatasetJson("example2",
///     name="dataset2",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_custom_service.name,
///     azure_blob_storage_location={
///         "container": "container",
///         "path": "foo/bar/",
///         "filename": "bar.txt",
///     },
///     encoding="UTF-8")
/// example1_flowlet_data_flow = azure.datafactory.FlowletDataFlow("example1",
///     name="example",
///     data_factory_id=example_factory.id,
///     sources=[{
///         "name": "source1",
///         "linked_service": {
///             "name": example_linked_custom_service.name,
///         },
///     }],
///     sinks=[{
///         "name": "sink1",
///         "linked_service": {
///             "name": example_linked_custom_service.name,
///         },
///     }],
///     script="""source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
/// """)
/// example2_flowlet_data_flow = azure.datafactory.FlowletDataFlow("example2",
///     name="example",
///     data_factory_id=example_factory.id,
///     sources=[{
///         "name": "source1",
///         "linked_service": {
///             "name": example_linked_custom_service.name,
///         },
///     }],
///     sinks=[{
///         "name": "sink1",
///         "linked_service": {
///             "name": example_linked_custom_service.name,
///         },
///     }],
///     script="""source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
/// """)
/// example_data_flow = azure.datafactory.DataFlow("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     sources=[{
///         "name": "source1",
///         "flowlet": {
///             "name": example1_flowlet_data_flow.name,
///             "parameters": {
///                 "Key1": "value1",
///             },
///         },
///         "dataset": {
///             "name": example1.name,
///         },
///     }],
///     sinks=[{
///         "name": "sink1",
///         "flowlet": {
///             "name": example2_flowlet_data_flow.name,
///             "parameters": {
///                 "Key1": "value1",
///             },
///         },
///         "dataset": {
///             "name": example2.name,
///         },
///     }],
///     script="""source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleLinkedCustomService = new Azure.DataFactory.LinkedCustomService("example", new()
///     {
///         Name = "linked_service",
///         DataFactoryId = exampleFactory.Id,
///         Type = "AzureBlobStorage",
///         TypePropertiesJson = exampleAccount.PrimaryConnectionString.Apply(primaryConnectionString => @$"{{
///   \""connectionString\"": \""{primaryConnectionString}\""
/// }}
/// "),
///     });
///
///     var example1 = new Azure.DataFactory.DatasetJson("example1", new()
///     {
///         Name = "dataset1",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedCustomService.Name,
///         AzureBlobStorageLocation = new Azure.DataFactory.Inputs.DatasetJsonAzureBlobStorageLocationArgs
///         {
///             Container = "container",
///             Path = "foo/bar/",
///             Filename = "foo.txt",
///         },
///         Encoding = "UTF-8",
///     });
///
///     var example2 = new Azure.DataFactory.DatasetJson("example2", new()
///     {
///         Name = "dataset2",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedCustomService.Name,
///         AzureBlobStorageLocation = new Azure.DataFactory.Inputs.DatasetJsonAzureBlobStorageLocationArgs
///         {
///             Container = "container",
///             Path = "foo/bar/",
///             Filename = "bar.txt",
///         },
///         Encoding = "UTF-8",
///     });
///
///     var example1FlowletDataFlow = new Azure.DataFactory.FlowletDataFlow("example1", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         Sources = new[]
///         {
///             new Azure.DataFactory.Inputs.FlowletDataFlowSourceArgs
///             {
///                 Name = "source1",
///                 LinkedService = new Azure.DataFactory.Inputs.FlowletDataFlowSourceLinkedServiceArgs
///                 {
///                     Name = exampleLinkedCustomService.Name,
///                 },
///             },
///         },
///         Sinks = new[]
///         {
///             new Azure.DataFactory.Inputs.FlowletDataFlowSinkArgs
///             {
///                 Name = "sink1",
///                 LinkedService = new Azure.DataFactory.Inputs.FlowletDataFlowSinkLinkedServiceArgs
///                 {
///                     Name = exampleLinkedCustomService.Name,
///                 },
///             },
///         },
///         Script = @"source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
/// ",
///     });
///
///     var example2FlowletDataFlow = new Azure.DataFactory.FlowletDataFlow("example2", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         Sources = new[]
///         {
///             new Azure.DataFactory.Inputs.FlowletDataFlowSourceArgs
///             {
///                 Name = "source1",
///                 LinkedService = new Azure.DataFactory.Inputs.FlowletDataFlowSourceLinkedServiceArgs
///                 {
///                     Name = exampleLinkedCustomService.Name,
///                 },
///             },
///         },
///         Sinks = new[]
///         {
///             new Azure.DataFactory.Inputs.FlowletDataFlowSinkArgs
///             {
///                 Name = "sink1",
///                 LinkedService = new Azure.DataFactory.Inputs.FlowletDataFlowSinkLinkedServiceArgs
///                 {
///                     Name = exampleLinkedCustomService.Name,
///                 },
///             },
///         },
///         Script = @"source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
/// ",
///     });
///
///     var exampleDataFlow = new Azure.DataFactory.DataFlow("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         Sources = new[]
///         {
///             new Azure.DataFactory.Inputs.DataFlowSourceArgs
///             {
///                 Name = "source1",
///                 Flowlet = new Azure.DataFactory.Inputs.DataFlowSourceFlowletArgs
///                 {
///                     Name = example1FlowletDataFlow.Name,
///                     Parameters =
///                     {
///                         { "Key1", "value1" },
///                     },
///                 },
///                 Dataset = new Azure.DataFactory.Inputs.DataFlowSourceDatasetArgs
///                 {
///                     Name = example1.Name,
///                 },
///             },
///         },
///         Sinks = new[]
///         {
///             new Azure.DataFactory.Inputs.DataFlowSinkArgs
///             {
///                 Name = "sink1",
///                 Flowlet = new Azure.DataFactory.Inputs.DataFlowSinkFlowletArgs
///                 {
///                     Name = example2FlowletDataFlow.Name,
///                     Parameters =
///                     {
///                         { "Key1", "value1" },
///                     },
///                 },
///                 Dataset = new Azure.DataFactory.Inputs.DataFlowSinkDatasetArgs
///                 {
///                     Name = example2.Name,
///                 },
///             },
///         },
///         Script = @"source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
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
/// 		exampleLinkedCustomService, err := datafactory.NewLinkedCustomService(ctx, "example", &datafactory.LinkedCustomServiceArgs{
/// 			Name:          pulumi.String("linked_service"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Type:          pulumi.String("AzureBlobStorage"),
/// 			TypePropertiesJson: exampleAccount.PrimaryConnectionString.ApplyT(func(primaryConnectionString string) (string, error) {
/// 				return fmt.Sprintf("{\n  \\\"connectionString\\\": \\\"%v\\\"\n}\n", primaryConnectionString), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example1, err := datafactory.NewDatasetJson(ctx, "example1", &datafactory.DatasetJsonArgs{
/// 			Name:              pulumi.String("dataset1"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedCustomService.Name,
/// 			AzureBlobStorageLocation: &datafactory.DatasetJsonAzureBlobStorageLocationArgs{
/// 				Container: pulumi.String("container"),
/// 				Path:      pulumi.String("foo/bar/"),
/// 				Filename:  pulumi.String("foo.txt"),
/// 			},
/// 			Encoding: pulumi.String("UTF-8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := datafactory.NewDatasetJson(ctx, "example2", &datafactory.DatasetJsonArgs{
/// 			Name:              pulumi.String("dataset2"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedCustomService.Name,
/// 			AzureBlobStorageLocation: &datafactory.DatasetJsonAzureBlobStorageLocationArgs{
/// 				Container: pulumi.String("container"),
/// 				Path:      pulumi.String("foo/bar/"),
/// 				Filename:  pulumi.String("bar.txt"),
/// 			},
/// 			Encoding: pulumi.String("UTF-8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example1FlowletDataFlow, err := datafactory.NewFlowletDataFlow(ctx, "example1", &datafactory.FlowletDataFlowArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Sources: datafactory.FlowletDataFlowSourceArray{
/// 				&datafactory.FlowletDataFlowSourceArgs{
/// 					Name: pulumi.String("source1"),
/// 					LinkedService: &datafactory.FlowletDataFlowSourceLinkedServiceArgs{
/// 						Name: exampleLinkedCustomService.Name,
/// 					},
/// 				},
/// 			},
/// 			Sinks: datafactory.FlowletDataFlowSinkArray{
/// 				&datafactory.FlowletDataFlowSinkArgs{
/// 					Name: pulumi.String("sink1"),
/// 					LinkedService: &datafactory.FlowletDataFlowSinkLinkedServiceArgs{
/// 						Name: exampleLinkedCustomService.Name,
/// 					},
/// 				},
/// 			},
/// 			Script: pulumi.String(`source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2FlowletDataFlow, err := datafactory.NewFlowletDataFlow(ctx, "example2", &datafactory.FlowletDataFlowArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Sources: datafactory.FlowletDataFlowSourceArray{
/// 				&datafactory.FlowletDataFlowSourceArgs{
/// 					Name: pulumi.String("source1"),
/// 					LinkedService: &datafactory.FlowletDataFlowSourceLinkedServiceArgs{
/// 						Name: exampleLinkedCustomService.Name,
/// 					},
/// 				},
/// 			},
/// 			Sinks: datafactory.FlowletDataFlowSinkArray{
/// 				&datafactory.FlowletDataFlowSinkArgs{
/// 					Name: pulumi.String("sink1"),
/// 					LinkedService: &datafactory.FlowletDataFlowSinkLinkedServiceArgs{
/// 						Name: exampleLinkedCustomService.Name,
/// 					},
/// 				},
/// 			},
/// 			Script: pulumi.String(`source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDataFlow(ctx, "example", &datafactory.DataFlowArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Sources: datafactory.DataFlowSourceArray{
/// 				&datafactory.DataFlowSourceArgs{
/// 					Name: pulumi.String("source1"),
/// 					Flowlet: &datafactory.DataFlowSourceFlowletArgs{
/// 						Name: example1FlowletDataFlow.Name,
/// 						Parameters: pulumi.StringMap{
/// 							"Key1": pulumi.String("value1"),
/// 						},
/// 					},
/// 					Dataset: &datafactory.DataFlowSourceDatasetArgs{
/// 						Name: example1.Name,
/// 					},
/// 				},
/// 			},
/// 			Sinks: datafactory.DataFlowSinkArray{
/// 				&datafactory.DataFlowSinkArgs{
/// 					Name: pulumi.String("sink1"),
/// 					Flowlet: &datafactory.DataFlowSinkFlowletArgs{
/// 						Name: example2FlowletDataFlow.Name,
/// 						Parameters: pulumi.StringMap{
/// 							"Key1": pulumi.String("value1"),
/// 						},
/// 					},
/// 					Dataset: &datafactory.DataFlowSinkDatasetArgs{
/// 						Name: example2.Name,
/// 					},
/// 				},
/// 			},
/// 			Script: pulumi.String(`source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
/// `),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedCustomService;
/// import com.pulumi.azure.datafactory.LinkedCustomServiceArgs;
/// import com.pulumi.azure.datafactory.DatasetJson;
/// import com.pulumi.azure.datafactory.DatasetJsonArgs;
/// import com.pulumi.azure.datafactory.inputs.DatasetJsonAzureBlobStorageLocationArgs;
/// import com.pulumi.azure.datafactory.FlowletDataFlow;
/// import com.pulumi.azure.datafactory.FlowletDataFlowArgs;
/// import com.pulumi.azure.datafactory.inputs.FlowletDataFlowSourceArgs;
/// import com.pulumi.azure.datafactory.inputs.FlowletDataFlowSourceLinkedServiceArgs;
/// import com.pulumi.azure.datafactory.inputs.FlowletDataFlowSinkArgs;
/// import com.pulumi.azure.datafactory.inputs.FlowletDataFlowSinkLinkedServiceArgs;
/// import com.pulumi.azure.datafactory.DataFlow;
/// import com.pulumi.azure.datafactory.DataFlowArgs;
/// import com.pulumi.azure.datafactory.inputs.DataFlowSourceArgs;
/// import com.pulumi.azure.datafactory.inputs.DataFlowSourceFlowletArgs;
/// import com.pulumi.azure.datafactory.inputs.DataFlowSourceDatasetArgs;
/// import com.pulumi.azure.datafactory.inputs.DataFlowSinkArgs;
/// import com.pulumi.azure.datafactory.inputs.DataFlowSinkFlowletArgs;
/// import com.pulumi.azure.datafactory.inputs.DataFlowSinkDatasetArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleLinkedCustomService = new LinkedCustomService("exampleLinkedCustomService", LinkedCustomServiceArgs.builder()
///             .name("linked_service")
///             .dataFactoryId(exampleFactory.id())
///             .type("AzureBlobStorage")
///             .typePropertiesJson(exampleAccount.primaryConnectionString().applyValue(_primaryConnectionString -> """
/// {
///   \"connectionString\": \"%s\"
/// }
/// ", _primaryConnectionString)))
///             .build());
///
///         var example1 = new DatasetJson("example1", DatasetJsonArgs.builder()
///             .name("dataset1")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedCustomService.name())
///             .azureBlobStorageLocation(DatasetJsonAzureBlobStorageLocationArgs.builder()
///                 .container("container")
///                 .path("foo/bar/")
///                 .filename("foo.txt")
///                 .build())
///             .encoding("UTF-8")
///             .build());
///
///         var example2 = new DatasetJson("example2", DatasetJsonArgs.builder()
///             .name("dataset2")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedCustomService.name())
///             .azureBlobStorageLocation(DatasetJsonAzureBlobStorageLocationArgs.builder()
///                 .container("container")
///                 .path("foo/bar/")
///                 .filename("bar.txt")
///                 .build())
///             .encoding("UTF-8")
///             .build());
///
///         var example1FlowletDataFlow = new FlowletDataFlow("example1FlowletDataFlow", FlowletDataFlowArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .sources(FlowletDataFlowSourceArgs.builder()
///                 .name("source1")
///                 .linkedService(FlowletDataFlowSourceLinkedServiceArgs.builder()
///                     .name(exampleLinkedCustomService.name())
///                     .build())
///                 .build())
///             .sinks(FlowletDataFlowSinkArgs.builder()
///                 .name("sink1")
///                 .linkedService(FlowletDataFlowSinkLinkedServiceArgs.builder()
///                     .name(exampleLinkedCustomService.name())
///                     .build())
///                 .build())
///             .script("""
/// source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
///             """)
///             .build());
///
///         var example2FlowletDataFlow = new FlowletDataFlow("example2FlowletDataFlow", FlowletDataFlowArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .sources(FlowletDataFlowSourceArgs.builder()
///                 .name("source1")
///                 .linkedService(FlowletDataFlowSourceLinkedServiceArgs.builder()
///                     .name(exampleLinkedCustomService.name())
///                     .build())
///                 .build())
///             .sinks(FlowletDataFlowSinkArgs.builder()
///                 .name("sink1")
///                 .linkedService(FlowletDataFlowSinkLinkedServiceArgs.builder()
///                     .name(exampleLinkedCustomService.name())
///                     .build())
///                 .build())
///             .script("""
/// source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
///             """)
///             .build());
///
///         var exampleDataFlow = new DataFlow("exampleDataFlow", DataFlowArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .sources(DataFlowSourceArgs.builder()
///                 .name("source1")
///                 .flowlet(DataFlowSourceFlowletArgs.builder()
///                     .name(example1FlowletDataFlow.name())
///                     .parameters(Map.of("Key1", "value1"))
///                     .build())
///                 .dataset(DataFlowSourceDatasetArgs.builder()
///                     .name(example1.name())
///                     .build())
///                 .build())
///             .sinks(DataFlowSinkArgs.builder()
///                 .name("sink1")
///                 .flowlet(DataFlowSinkFlowletArgs.builder()
///                     .name(example2FlowletDataFlow.name())
///                     .parameters(Map.of("Key1", "value1"))
///                     .build())
///                 .dataset(DataFlowSinkDatasetArgs.builder()
///                     .name(example2.name())
///                     .build())
///                 .build())
///             .script("""
/// source(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   limit: 100,
///   ignoreNoFilesFound: false,
///   documentForm: 'documentPerLine') ~> source1
/// source1 sink(
///   allowSchemaDrift: true,
///   validateSchema: false,
///   skipDuplicateMapInputs: true,
///   skipDuplicateMapOutputs: true) ~> sink1
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleLinkedCustomService:
///     type: azure:datafactory:LinkedCustomService
///     name: example
///     properties:
///       name: linked_service
///       dataFactoryId: ${exampleFactory.id}
///       type: AzureBlobStorage
///       typePropertiesJson: |
///         {
///           \"connectionString\": \"${exampleAccount.primaryConnectionString}\"
///         }
///   example1:
///     type: azure:datafactory:DatasetJson
///     properties:
///       name: dataset1
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedCustomService.name}
///       azureBlobStorageLocation:
///         container: container
///         path: foo/bar/
///         filename: foo.txt
///       encoding: UTF-8
///   example2:
///     type: azure:datafactory:DatasetJson
///     properties:
///       name: dataset2
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedCustomService.name}
///       azureBlobStorageLocation:
///         container: container
///         path: foo/bar/
///         filename: bar.txt
///       encoding: UTF-8
///   exampleDataFlow:
///     type: azure:datafactory:DataFlow
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       sources:
///         - name: source1
///           flowlet:
///             name: ${example1FlowletDataFlow.name}
///             parameters:
///               Key1: value1
///           dataset:
///             name: ${example1.name}
///       sinks:
///         - name: sink1
///           flowlet:
///             name: ${example2FlowletDataFlow.name}
///             parameters:
///               Key1: value1
///           dataset:
///             name: ${example2.name}
///       script: "source(\n  allowSchemaDrift: true, \n  validateSchema: false, \n  limit: 100, \n  ignoreNoFilesFound: false, \n  documentForm: 'documentPerLine') ~> source1 \nsource1 sink(\n  allowSchemaDrift: true, \n  validateSchema: false, \n  skipDuplicateMapInputs: true, \n  skipDuplicateMapOutputs: true) ~> sink1\n"
///   example1FlowletDataFlow:
///     type: azure:datafactory:FlowletDataFlow
///     name: example1
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       sources:
///         - name: source1
///           linkedService:
///             name: ${exampleLinkedCustomService.name}
///       sinks:
///         - name: sink1
///           linkedService:
///             name: ${exampleLinkedCustomService.name}
///       script: "source(\n  allowSchemaDrift: true, \n  validateSchema: false, \n  limit: 100, \n  ignoreNoFilesFound: false, \n  documentForm: 'documentPerLine') ~> source1 \nsource1 sink(\n  allowSchemaDrift: true, \n  validateSchema: false, \n  skipDuplicateMapInputs: true, \n  skipDuplicateMapOutputs: true) ~> sink1\n"
///   example2FlowletDataFlow:
///     type: azure:datafactory:FlowletDataFlow
///     name: example2
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       sources:
///         - name: source1
///           linkedService:
///             name: ${exampleLinkedCustomService.name}
///       sinks:
///         - name: sink1
///           linkedService:
///             name: ${exampleLinkedCustomService.name}
///       script: "source(\n  allowSchemaDrift: true, \n  validateSchema: false, \n  limit: 100, \n  ignoreNoFilesFound: false, \n  documentForm: 'documentPerLine') ~> source1 \nsource1 sink(\n  allowSchemaDrift: true, \n  validateSchema: false, \n  skipDuplicateMapInputs: true, \n  skipDuplicateMapOutputs: true) ~> sink1\n"
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factory Data Flow can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/dataFlow:DataFlow example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/dataflows/example
/// ```
class DataFlow extends pulumi.CustomResource {
  /// List of tags that can be used for describing the Data Factory Data Flow.
  late final pulumi.Output<List<String>?> annotations;
  /// The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Data Flow.
  late final pulumi.Output<String?> description;
  /// The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// Specifies the name of the Data Factory Data Flow. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The script for the Data Factory Data Flow.
  late final pulumi.Output<String?> script;
  /// The script lines for the Data Factory Data Flow.
  late final pulumi.Output<List<String>?> scriptLines;
  /// One or more `sink` blocks as defined below.
  late final pulumi.Output<List<DataFlowSink>> sinks;
  /// One or more `source` blocks as defined below.
  late final pulumi.Output<List<DataFlowSource>> sources;
  /// One or more `transformation` blocks as defined below.
  late final pulumi.Output<List<DataFlowTransformation>?> transformations;

  /// Creates a new [DataFlow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataFlow]. {@macro pulumi_datafactory_data_flow_data_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataFlow(
    String name, {
    DataFlowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/dataFlow:DataFlow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.folder = registerOutput<String?>('folder');
    this.name = registerOutput<String>('name');
    this.script = registerOutput<String?>('script');
    this.scriptLines = registerOutput<List<String>?>('scriptLines');
    this.sinks = registerOutput<List<DataFlowSink>>('sinks');
    this.sources = registerOutput<List<DataFlowSource>>('sources');
    this.transformations = registerOutput<List<DataFlowTransformation>?>('transformations');
  }

  /// Gets an existing [DataFlow] resource's state with the given [name] and [id].
  static DataFlow get(
    String name,
    pulumi.Input<String> id, {
    DataFlowState? state,
  }) {
    return DataFlow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataFlow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/dataFlow:DataFlow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.folder = registerOutput<String?>('folder');
    this.name = registerOutput<String>('name');
    this.script = registerOutput<String?>('script');
    this.scriptLines = registerOutput<List<String>?>('scriptLines');
    this.sinks = registerOutput<List<DataFlowSink>>('sinks');
    this.sources = registerOutput<List<DataFlowSource>>('sources');
    this.transformations = registerOutput<List<DataFlowTransformation>?>('transformations');
  }
}
