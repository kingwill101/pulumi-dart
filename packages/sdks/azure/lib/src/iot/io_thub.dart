import 'package:pulumi/pulumi.dart' as pulumi;
import 'io_thub_args.dart';
import 'io_thub_cloud_to_device.dart';
import 'io_thub_endpoint.dart';
import 'io_thub_enrichment.dart';
import 'io_thub_fallback_route.dart';
import 'io_thub_file_upload.dart';
import 'io_thub_identity.dart';
import 'io_thub_network_rule_set.dart';
import 'io_thub_route.dart';
import 'io_thub_shared_access_policy.dart';
import 'io_thub_sku.dart';
import 'io_thub_state.dart';

/// Manages an IotHub
///
/// &gt; **Note:** Endpoints can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azure.iot.IoTHub` resource is not supported.
///
/// &gt; **Note:** Routes can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azure.iot.Route` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.
///
/// &gt; **Note:** Enrichments can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azure.iot.Enrichment` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.
///
/// &gt; **Note:** Fallback route can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azure.iot.FallbackRoute` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.
///
/// &gt; **Note:** File upload can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azure.iot.FileUpload` resource - but the two cannot be used together. If both are used against the same IoTHub, spurious changes will occur.
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
///     name: "examplestorage",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "examplecontainer",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-namespace",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Basic",
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "example-eventhub",
///     namespaceId: exampleEventHubNamespace.id,
///     partitionCount: 2,
///     messageRetention: 1,
/// });
/// const exampleAuthorizationRule = new azure.eventhub.AuthorizationRule("example", {
///     resourceGroupName: example.name,
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     name: "acctest",
///     send: true,
/// });
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "Example-IoTHub",
///     resourceGroupName: example.name,
///     location: example.location,
///     localAuthenticationEnabled: false,
///     sku: {
///         name: "S1",
///         capacity: 1,
///     },
///     endpoints: [
///         {
///             type: "AzureIotHub.StorageContainer",
///             connectionString: exampleAccount.primaryBlobConnectionString,
///             name: "export",
///             batchFrequencyInSeconds: 60,
///             maxChunkSizeInBytes: 10485760,
///             containerName: exampleContainer.name,
///             encoding: "Avro",
///             fileNameFormat: "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}",
///         },
///         {
///             type: "AzureIotHub.EventHub",
///             connectionString: exampleAuthorizationRule.primaryConnectionString,
///             name: "export2",
///         },
///     ],
///     routes: [
///         {
///             name: "export",
///             source: "DeviceMessages",
///             condition: "true",
///             endpointNames: ["export"],
///             enabled: true,
///         },
///         {
///             name: "export2",
///             source: "DeviceMessages",
///             condition: "true",
///             endpointNames: ["export2"],
///             enabled: true,
///         },
///     ],
///     enrichments: [{
///         key: "tenant",
///         value: "$twin.tags.Tenant",
///         endpointNames: [
///             "export",
///             "export2",
///         ],
///     }],
///     cloudToDevice: {
///         maxDeliveryCount: 30,
///         defaultTtl: "PT1H",
///         feedbacks: [{
///             timeToLive: "PT1H10M",
///             maxDeliveryCount: 15,
///             lockDuration: "PT30S",
///         }],
///     },
///     tags: {
///         purpose: "testing",
///     },
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
///     name="examplestorage",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="examplecontainer",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-namespace",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Basic")
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="example-eventhub",
///     namespace_id=example_event_hub_namespace.id,
///     partition_count=2,
///     message_retention=1)
/// example_authorization_rule = azure.eventhub.AuthorizationRule("example",
///     resource_group_name=example.name,
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     name="acctest",
///     send=True)
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="Example-IoTHub",
///     resource_group_name=example.name,
///     location=example.location,
///     local_authentication_enabled=False,
///     sku={
///         "name": "S1",
///         "capacity": 1,
///     },
///     endpoints=[
///         {
///             "type": "AzureIotHub.StorageContainer",
///             "connection_string": example_account.primary_blob_connection_string,
///             "name": "export",
///             "batch_frequency_in_seconds": 60,
///             "max_chunk_size_in_bytes": 10485760,
///             "container_name": example_container.name,
///             "encoding": "Avro",
///             "file_name_format": "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}",
///         },
///         {
///             "type": "AzureIotHub.EventHub",
///             "connection_string": example_authorization_rule.primary_connection_string,
///             "name": "export2",
///         },
///     ],
///     routes=[
///         {
///             "name": "export",
///             "source": "DeviceMessages",
///             "condition": "true",
///             "endpoint_names": ["export"],
///             "enabled": True,
///         },
///         {
///             "name": "export2",
///             "source": "DeviceMessages",
///             "condition": "true",
///             "endpoint_names": ["export2"],
///             "enabled": True,
///         },
///     ],
///     enrichments=[{
///         "key": "tenant",
///         "value": "$twin.tags.Tenant",
///         "endpoint_names": [
///             "export",
///             "export2",
///         ],
///     }],
///     cloud_to_device={
///         "max_delivery_count": 30,
///         "default_ttl": "PT1H",
///         "feedbacks": [{
///             "time_to_live": "PT1H10M",
///             "max_delivery_count": 15,
///             "lock_duration": "PT30S",
///         }],
///     },
///     tags={
///         "purpose": "testing",
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorage",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "examplecontainer",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "example-namespace",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Basic",
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "example-eventhub",
///         NamespaceId = exampleEventHubNamespace.Id,
///         PartitionCount = 2,
///         MessageRetention = 1,
///     });
///
///     var exampleAuthorizationRule = new Azure.EventHub.AuthorizationRule("example", new()
///     {
///         ResourceGroupName = example.Name,
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         Name = "acctest",
///         Send = true,
///     });
///
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "Example-IoTHub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         LocalAuthenticationEnabled = false,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "S1",
///             Capacity = 1,
///         },
///         Endpoints = new[]
///         {
///             new Azure.Iot.Inputs.IoTHubEndpointArgs
///             {
///                 Type = "AzureIotHub.StorageContainer",
///                 ConnectionString = exampleAccount.PrimaryBlobConnectionString,
///                 Name = "export",
///                 BatchFrequencyInSeconds = 60,
///                 MaxChunkSizeInBytes = 10485760,
///                 ContainerName = exampleContainer.Name,
///                 Encoding = "Avro",
///                 FileNameFormat = "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}",
///             },
///             new Azure.Iot.Inputs.IoTHubEndpointArgs
///             {
///                 Type = "AzureIotHub.EventHub",
///                 ConnectionString = exampleAuthorizationRule.PrimaryConnectionString,
///                 Name = "export2",
///             },
///         },
///         Routes = new[]
///         {
///             new Azure.Iot.Inputs.IoTHubRouteArgs
///             {
///                 Name = "export",
///                 Source = "DeviceMessages",
///                 Condition = "true",
///                 EndpointNames = new[]
///                 {
///                     "export",
///                 },
///                 Enabled = true,
///             },
///             new Azure.Iot.Inputs.IoTHubRouteArgs
///             {
///                 Name = "export2",
///                 Source = "DeviceMessages",
///                 Condition = "true",
///                 EndpointNames = new[]
///                 {
///                     "export2",
///                 },
///                 Enabled = true,
///             },
///         },
///         Enrichments = new[]
///         {
///             new Azure.Iot.Inputs.IoTHubEnrichmentArgs
///             {
///                 Key = "tenant",
///                 Value = "$twin.tags.Tenant",
///                 EndpointNames = new[]
///                 {
///                     "export",
///                     "export2",
///                 },
///             },
///         },
///         CloudToDevice = new Azure.Iot.Inputs.IoTHubCloudToDeviceArgs
///         {
///             MaxDeliveryCount = 30,
///             DefaultTtl = "PT1H",
///             Feedbacks = new[]
///             {
///                 new Azure.Iot.Inputs.IoTHubCloudToDeviceFeedbackArgs
///                 {
///                     TimeToLive = "PT1H10M",
///                     MaxDeliveryCount = 15,
///                     LockDuration = "PT30S",
///                 },
///             },
///         },
///         Tags =
///         {
///             { "purpose", "testing" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
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
/// 			Name:                   pulumi.String("examplestorage"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("examplecontainer"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("example-namespace"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:             pulumi.String("example-eventhub"),
/// 			NamespaceId:      exampleEventHubNamespace.ID().ToIDOutput().ToStringOutput(),
/// 			PartitionCount:   pulumi.Int(2),
/// 			MessageRetention: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAuthorizationRule, err := eventhub.NewAuthorizationRule(ctx, "example", &eventhub.AuthorizationRuleArgs{
/// 			ResourceGroupName: example.Name,
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			Name:              pulumi.String("acctest"),
/// 			Send:              pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:                       pulumi.String("Example-IoTHub"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			LocalAuthenticationEnabled: pulumi.Bool(false),
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("S1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 			Endpoints: iot.IoTHubEndpointArray{
/// 				&iot.IoTHubEndpointArgs{
/// 					Type:                    pulumi.String("AzureIotHub.StorageContainer"),
/// 					ConnectionString:        exampleAccount.PrimaryBlobConnectionString,
/// 					Name:                    pulumi.String("export"),
/// 					BatchFrequencyInSeconds: pulumi.Int(60),
/// 					MaxChunkSizeInBytes:     pulumi.Int(10485760),
/// 					ContainerName:           exampleContainer.Name,
/// 					Encoding:                pulumi.String("Avro"),
/// 					FileNameFormat:          pulumi.String("{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}"),
/// 				},
/// 				&iot.IoTHubEndpointArgs{
/// 					Type:             pulumi.String("AzureIotHub.EventHub"),
/// 					ConnectionString: exampleAuthorizationRule.PrimaryConnectionString,
/// 					Name:             pulumi.String("export2"),
/// 				},
/// 			},
/// 			Routes: iot.IoTHubRouteArray{
/// 				&iot.IoTHubRouteArgs{
/// 					Name:      pulumi.String("export"),
/// 					Source:    pulumi.String("DeviceMessages"),
/// 					Condition: pulumi.String("true"),
/// 					EndpointNames: pulumi.StringArray{
/// 						pulumi.String("export"),
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				&iot.IoTHubRouteArgs{
/// 					Name:      pulumi.String("export2"),
/// 					Source:    pulumi.String("DeviceMessages"),
/// 					Condition: pulumi.String("true"),
/// 					EndpointNames: pulumi.StringArray{
/// 						pulumi.String("export2"),
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Enrichments: iot.IoTHubEnrichmentArray{
/// 				&iot.IoTHubEnrichmentArgs{
/// 					Key:   pulumi.String("tenant"),
/// 					Value: pulumi.String("$twin.tags.Tenant"),
/// 					EndpointNames: pulumi.StringArray{
/// 						pulumi.String("export"),
/// 						pulumi.String("export2"),
/// 					},
/// 				},
/// 			},
/// 			CloudToDevice: &iot.IoTHubCloudToDeviceArgs{
/// 				MaxDeliveryCount: pulumi.Int(30),
/// 				DefaultTtl:       pulumi.String("PT1H"),
/// 				Feedbacks: iot.IoTHubCloudToDeviceFeedbackArray{
/// 					&iot.IoTHubCloudToDeviceFeedbackArgs{
/// 						TimeToLive:       pulumi.String("PT1H10M"),
/// 						MaxDeliveryCount: pulumi.Int(15),
/// 						LockDuration:     pulumi.String("PT30S"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"purpose": pulumi.String("testing"),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "examplestorage"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_storage_container" "example" {
///   name                  = "examplecontainer"
///   storage_account_name  = azure_storage_account.example.name
///   container_access_type = "private"
/// }
/// resource "azure_eventhub_eventhubnamespace" "example" {
///   name                = "example-namespace"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku                 = "Basic"
/// }
/// resource "azure_eventhub_eventhub" "example" {
///   name              = "example-eventhub"
///   namespace_id      = azure_eventhub_eventhubnamespace.example.id
///   partition_count   = 2
///   message_retention = 1
/// }
/// resource "azure_eventhub_authorizationrule" "example" {
///   resource_group_name = azure_core_resourcegroup.example.name
///   namespace_name      = azure_eventhub_eventhubnamespace.example.name
///   eventhub_name       = azure_eventhub_eventhub.example.name
///   name                = "acctest"
///   send                = true
/// }
/// resource "azure_iot_iothub" "example" {
///   name                         = "Example-IoTHub"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = azure_core_resourcegroup.example.location
///   local_authentication_enabled = false
///   sku = {
///     name     = "S1"
///     capacity = "1"
///   }
///   endpoints {
///     type                       = "AzureIotHub.StorageContainer"
///     connection_string          = azure_storage_account.example.primary_blob_connection_string
///     name                       = "export"
///     batch_frequency_in_seconds = 60
///     max_chunk_size_in_bytes    = 10485760
///     container_name             = azure_storage_container.example.name
///     encoding                   = "Avro"
///     file_name_format           = "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}"
///   }
///   endpoints {
///     type              = "AzureIotHub.EventHub"
///     connection_string = azure_eventhub_authorizationrule.example.primary_connection_string
///     name              = "export2"
///   }
///   routes {
///     name           = "export"
///     source         = "DeviceMessages"
///     condition      = "true"
///     endpoint_names = ["export"]
///     enabled        = true
///   }
///   routes {
///     name           = "export2"
///     source         = "DeviceMessages"
///     condition      = "true"
///     endpoint_names = ["export2"]
///     enabled        = true
///   }
///   enrichments {
///     key            = "tenant"
///     value          = "$twin.tags.Tenant"
///     endpoint_names = ["export", "export2"]
///   }
///   cloud_to_device = {
///     max_delivery_count = 30
///     default_ttl        = "PT1H"
///     feedbacks = [{
///       "timeToLive"       = "PT1H10M"
///       "maxDeliveryCount" = 15
///       "lockDuration"     = "PT30S"
///     }]
///   }
///   tags = {
///     "purpose" = "testing"
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.AuthorizationRule;
/// import com.pulumi.azure.eventhub.AuthorizationRuleArgs;
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubEndpointArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubRouteArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubEnrichmentArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubCloudToDeviceArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubCloudToDeviceFeedbackArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorage")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("examplecontainer")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-namespace")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Basic")
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("example-eventhub")
///             .namespaceId(exampleEventHubNamespace.id())
///             .partitionCount(2)
///             .messageRetention(1)
///             .build());
///
///         var exampleAuthorizationRule = new AuthorizationRule("exampleAuthorizationRule", AuthorizationRuleArgs.builder()
///             .resourceGroupName(example.name())
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .name("acctest")
///             .send(true)
///             .build());
///
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("Example-IoTHub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .localAuthenticationEnabled(false)
///             .sku(IoTHubSkuArgs.builder()
///                 .name("S1")
///                 .capacity(1)
///                 .build())
///             .endpoints(
///                 IoTHubEndpointArgs.builder()
///                     .type("AzureIotHub.StorageContainer")
///                     .connectionString(exampleAccount.primaryBlobConnectionString())
///                     .name("export")
///                     .batchFrequencyInSeconds(60)
///                     .maxChunkSizeInBytes(10485760)
///                     .containerName(exampleContainer.name())
///                     .encoding("Avro")
///                     .fileNameFormat("{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}")
///                     .build(),
///                 IoTHubEndpointArgs.builder()
///                     .type("AzureIotHub.EventHub")
///                     .connectionString(exampleAuthorizationRule.primaryConnectionString())
///                     .name("export2")
///                     .build())
///             .routes(
///                 IoTHubRouteArgs.builder()
///                     .name("export")
///                     .source("DeviceMessages")
///                     .condition("true")
///                     .endpointNames("export")
///                     .enabled(true)
///                     .build(),
///                 IoTHubRouteArgs.builder()
///                     .name("export2")
///                     .source("DeviceMessages")
///                     .condition("true")
///                     .endpointNames("export2")
///                     .enabled(true)
///                     .build())
///             .enrichments(IoTHubEnrichmentArgs.builder()
///                 .key("tenant")
///                 .value("$twin.tags.Tenant")
///                 .endpointNames(
///                     "export",
///                     "export2")
///                 .build())
///             .cloudToDevice(IoTHubCloudToDeviceArgs.builder()
///                 .maxDeliveryCount(30)
///                 .defaultTtl("PT1H")
///                 .feedbacks(IoTHubCloudToDeviceFeedbackArgs.builder()
///                     .timeToLive("PT1H10M")
///                     .maxDeliveryCount(15)
///                     .lockDuration("PT30S")
///                     .build())
///                 .build())
///             .tags(Map.of("purpose", "testing"))
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
///       name: examplestorage
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: examplecontainer
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-namespace
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Basic
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: example-eventhub
///       namespaceId: ${exampleEventHubNamespace.id}
///       partitionCount: 2
///       messageRetention: 1
///   exampleAuthorizationRule:
///     type: azure:eventhub:AuthorizationRule
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       name: acctest
///       send: true
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: Example-IoTHub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       localAuthenticationEnabled: false
///       sku:
///         name: S1
///         capacity: '1'
///       endpoints:
///         - type: AzureIotHub.StorageContainer
///           connectionString: ${exampleAccount.primaryBlobConnectionString}
///           name: export
///           batchFrequencyInSeconds: 60
///           maxChunkSizeInBytes: 1.048576e+07
///           containerName: ${exampleContainer.name}
///           encoding: Avro
///           fileNameFormat: '{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}'
///         - type: AzureIotHub.EventHub
///           connectionString: ${exampleAuthorizationRule.primaryConnectionString}
///           name: export2
///       routes:
///         - name: export
///           source: DeviceMessages
///           condition: 'true'
///           endpointNames:
///             - export
///           enabled: true
///         - name: export2
///           source: DeviceMessages
///           condition: 'true'
///           endpointNames:
///             - export2
///           enabled: true
///       enrichments:
///         - key: tenant
///           value: $twin.tags.Tenant
///           endpointNames:
///             - export
///             - export2
///       cloudToDevice:
///         maxDeliveryCount: 30
///         defaultTtl: PT1H
///         feedbacks:
///           - timeToLive: PT1H10M
///             maxDeliveryCount: 15
///             lockDuration: PT30S
///       tags:
///         purpose: testing
/// ```
///
///
/// ## Import
///
/// IoTHubs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/ioTHub:IoTHub hub1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1
/// ```
class IoTHub extends pulumi.CustomResource {
  late final pulumi.Output<IoTHubCloudToDevice> cloudToDevice;
  /// An `endpoint` block as defined below.
  late final pulumi.Output<List<IoTHubEndpoint>> endpoints;
  late final pulumi.Output<List<IoTHubEnrichment>> enrichments;
  /// The EventHub compatible endpoint for events data
  late final pulumi.Output<String> eventHubEventsEndpoint;
  /// The EventHub namespace for events data
  late final pulumi.Output<String> eventHubEventsNamespace;
  /// The EventHub compatible path for events data
  late final pulumi.Output<String> eventHubEventsPath;
  /// The EventHub compatible endpoint for operational data
  late final pulumi.Output<String> eventHubOperationsEndpoint;
  /// The EventHub compatible path for operational data
  late final pulumi.Output<String> eventHubOperationsPath;
  /// The number of device-to-cloud partitions used by backing event hubs. Must be between `2` and `128`. Defaults to `4`.
  late final pulumi.Output<int?> eventHubPartitionCount;
  /// The event hub retention to use in days. Must be between `1` and `7`. Defaults to `1`.
  late final pulumi.Output<int?> eventHubRetentionInDays;
  /// A `fallbackRoute` block as defined below. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events.
  ///
  /// &gt; **Note:** If `fallbackRoute` isn't explicitly specified, the fallback route wouldn't be enabled by default.
  late final pulumi.Output<IoTHubFallbackRoute> fallbackRoute;
  /// A `fileUpload` block as defined below.
  late final pulumi.Output<IoTHubFileUpload?> fileUpload;
  /// The hostname of the IotHub Resource.
  late final pulumi.Output<String> hostname;
  /// An `identity` block as defined below.
  late final pulumi.Output<IoTHubIdentity?> identity;
  /// If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  late final pulumi.Output<String?> minTlsVersion;
  /// Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `networkRuleSet` block as defined below.
  late final pulumi.Output<List<IoTHubNetworkRuleSet>?> networkRuleSets;
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  late final pulumi.Output<List<IoTHubRoute>> routes;
  /// One or more `sharedAccessPolicy` blocks as defined below.
  late final pulumi.Output<List<IoTHubSharedAccessPolicy>> sharedAccessPolicies;
  /// A `sku` block as defined below.
  late final pulumi.Output<IoTHubSku> sku;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> type;

  /// Creates a new [IoTHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IoTHub]. {@macro pulumi_iot_io_thub_io_thub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IoTHub(
    String name, {
    IoTHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/ioTHub:IoTHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    cloudToDevice = registerOutput<IoTHubCloudToDevice>('cloudToDevice', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubCloudToDevice.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoints = registerOutput<List<IoTHubEndpoint>>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubEndpoint>(guardedValue, (value) => IoTHubEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    enrichments = registerOutput<List<IoTHubEnrichment>>('enrichments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubEnrichment>(guardedValue, (value) => IoTHubEnrichment.fromMap((value as Map).cast<String, dynamic>())); });
    eventHubEventsEndpoint = registerOutput<String>('eventHubEventsEndpoint');
    eventHubEventsNamespace = registerOutput<String>('eventHubEventsNamespace');
    eventHubEventsPath = registerOutput<String>('eventHubEventsPath');
    eventHubOperationsEndpoint = registerOutput<String>('eventHubOperationsEndpoint');
    eventHubOperationsPath = registerOutput<String>('eventHubOperationsPath');
    eventHubPartitionCount = registerOutput<int?>('eventHubPartitionCount');
    eventHubRetentionInDays = registerOutput<int?>('eventHubRetentionInDays');
    fallbackRoute = registerOutput<IoTHubFallbackRoute>('fallbackRoute', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubFallbackRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileUpload = registerOutput<IoTHubFileUpload?>('fileUpload', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubFileUpload.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<IoTHubIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    networkRuleSets = registerOutput<List<IoTHubNetworkRuleSet>?>('networkRuleSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubNetworkRuleSet>(guardedValue, (value) => IoTHubNetworkRuleSet.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routes = registerOutput<List<IoTHubRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubRoute>(guardedValue, (value) => IoTHubRoute.fromMap((value as Map).cast<String, dynamic>())); });
    sharedAccessPolicies = registerOutput<List<IoTHubSharedAccessPolicy>>('sharedAccessPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubSharedAccessPolicy>(guardedValue, (value) => IoTHubSharedAccessPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<IoTHubSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [IoTHub] resource's state with the given [name] and [id].
  static IoTHub get(
    String name,
    pulumi.Input<String> id, {
    IoTHubState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IoTHub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IoTHub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/ioTHub:IoTHub',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudToDevice = registerOutput<IoTHubCloudToDevice>('cloudToDevice', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubCloudToDevice.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoints = registerOutput<List<IoTHubEndpoint>>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubEndpoint>(guardedValue, (value) => IoTHubEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    enrichments = registerOutput<List<IoTHubEnrichment>>('enrichments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubEnrichment>(guardedValue, (value) => IoTHubEnrichment.fromMap((value as Map).cast<String, dynamic>())); });
    eventHubEventsEndpoint = registerOutput<String>('eventHubEventsEndpoint');
    eventHubEventsNamespace = registerOutput<String>('eventHubEventsNamespace');
    eventHubEventsPath = registerOutput<String>('eventHubEventsPath');
    eventHubOperationsEndpoint = registerOutput<String>('eventHubOperationsEndpoint');
    eventHubOperationsPath = registerOutput<String>('eventHubOperationsPath');
    eventHubPartitionCount = registerOutput<int?>('eventHubPartitionCount');
    eventHubRetentionInDays = registerOutput<int?>('eventHubRetentionInDays');
    fallbackRoute = registerOutput<IoTHubFallbackRoute>('fallbackRoute', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubFallbackRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileUpload = registerOutput<IoTHubFileUpload?>('fileUpload', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubFileUpload.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<IoTHubIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    networkRuleSets = registerOutput<List<IoTHubNetworkRuleSet>?>('networkRuleSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubNetworkRuleSet>(guardedValue, (value) => IoTHubNetworkRuleSet.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routes = registerOutput<List<IoTHubRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubRoute>(guardedValue, (value) => IoTHubRoute.fromMap((value as Map).cast<String, dynamic>())); });
    sharedAccessPolicies = registerOutput<List<IoTHubSharedAccessPolicy>>('sharedAccessPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubSharedAccessPolicy>(guardedValue, (value) => IoTHubSharedAccessPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<IoTHubSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [IoTHub] resource.
  IoTHub.reference(String urn)
    : super(
        'azure:iot/ioTHub:IoTHub',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cloudToDevice = registerOutput<IoTHubCloudToDevice>('cloudToDevice', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubCloudToDevice.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpoints = registerOutput<List<IoTHubEndpoint>>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubEndpoint>(guardedValue, (value) => IoTHubEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    enrichments = registerOutput<List<IoTHubEnrichment>>('enrichments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubEnrichment>(guardedValue, (value) => IoTHubEnrichment.fromMap((value as Map).cast<String, dynamic>())); });
    eventHubEventsEndpoint = registerOutput<String>('eventHubEventsEndpoint');
    eventHubEventsNamespace = registerOutput<String>('eventHubEventsNamespace');
    eventHubEventsPath = registerOutput<String>('eventHubEventsPath');
    eventHubOperationsEndpoint = registerOutput<String>('eventHubOperationsEndpoint');
    eventHubOperationsPath = registerOutput<String>('eventHubOperationsPath');
    eventHubPartitionCount = registerOutput<int?>('eventHubPartitionCount');
    eventHubRetentionInDays = registerOutput<int?>('eventHubRetentionInDays');
    fallbackRoute = registerOutput<IoTHubFallbackRoute>('fallbackRoute', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubFallbackRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileUpload = registerOutput<IoTHubFileUpload?>('fileUpload', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubFileUpload.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<IoTHubIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    networkRuleSets = registerOutput<List<IoTHubNetworkRuleSet>?>('networkRuleSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubNetworkRuleSet>(guardedValue, (value) => IoTHubNetworkRuleSet.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routes = registerOutput<List<IoTHubRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubRoute>(guardedValue, (value) => IoTHubRoute.fromMap((value as Map).cast<String, dynamic>())); });
    sharedAccessPolicies = registerOutput<List<IoTHubSharedAccessPolicy>>('sharedAccessPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IoTHubSharedAccessPolicy>(guardedValue, (value) => IoTHubSharedAccessPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<IoTHubSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IoTHubSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
