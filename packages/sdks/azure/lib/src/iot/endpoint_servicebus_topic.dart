import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_servicebus_topic_args.dart';
import 'endpoint_servicebus_topic_state.dart';

/// Manages an IotHub ServiceBus Topic Endpoint
///
/// &gt; **Note:** Endpoints can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azure.iot.IoTHub` resource is not supported.
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
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "exampleNamespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleTopic = new azure.servicebus.Topic("example", {
///     name: "exampleTopic",
///     namespaceId: exampleNamespace.id,
/// });
/// const exampleTopicAuthorizationRule = new azure.servicebus.TopicAuthorizationRule("example", {
///     name: "exampleRule",
///     topicId: exampleTopic.id,
///     listen: false,
///     send: true,
///     manage: false,
/// });
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "exampleIothub",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "B1",
///         capacity: 1,
///     },
///     tags: {
///         purpose: "example",
///     },
/// });
/// const exampleEndpointServicebusTopic = new azure.iot.EndpointServicebusTopic("example", {
///     resourceGroupName: example.name,
///     iothubId: exampleIoTHub.id,
///     name: "example",
///     connectionString: exampleTopicAuthorizationRule.primaryConnectionString,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="exampleNamespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_topic = azure.servicebus.Topic("example",
///     name="exampleTopic",
///     namespace_id=example_namespace.id)
/// example_topic_authorization_rule = azure.servicebus.TopicAuthorizationRule("example",
///     name="exampleRule",
///     topic_id=example_topic.id,
///     listen=False,
///     send=True,
///     manage=False)
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="exampleIothub",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "B1",
///         "capacity": 1,
///     },
///     tags={
///         "purpose": "example",
///     })
/// example_endpoint_servicebus_topic = azure.iot.EndpointServicebusTopic("example",
///     resource_group_name=example.name,
///     iothub_id=example_io_t_hub.id,
///     name="example",
///     connection_string=example_topic_authorization_rule.primary_connection_string)
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
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "exampleNamespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var exampleTopic = new Azure.ServiceBus.Topic("example", new()
///     {
///         Name = "exampleTopic",
///         NamespaceId = exampleNamespace.Id,
///     });
///
///     var exampleTopicAuthorizationRule = new Azure.ServiceBus.TopicAuthorizationRule("example", new()
///     {
///         Name = "exampleRule",
///         TopicId = exampleTopic.Id,
///         Listen = false,
///         Send = true,
///         Manage = false,
///     });
///
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "exampleIothub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "B1",
///             Capacity = 1,
///         },
///         Tags =
///         {
///             { "purpose", "example" },
///         },
///     });
///
///     var exampleEndpointServicebusTopic = new Azure.Iot.EndpointServicebusTopic("example", new()
///     {
///         ResourceGroupName = example.Name,
///         IothubId = exampleIoTHub.Id,
///         Name = "example",
///         ConnectionString = exampleTopicAuthorizationRule.PrimaryConnectionString,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
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
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("exampleNamespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := servicebus.NewTopic(ctx, "example", &servicebus.TopicArgs{
/// 			Name:        pulumi.String("exampleTopic"),
/// 			NamespaceId: exampleNamespace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopicAuthorizationRule, err := servicebus.NewTopicAuthorizationRule(ctx, "example", &servicebus.TopicAuthorizationRuleArgs{
/// 			Name:    pulumi.String("exampleRule"),
/// 			TopicId: exampleTopic.ID(),
/// 			Listen:  pulumi.Bool(false),
/// 			Send:    pulumi.Bool(true),
/// 			Manage:  pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIoTHub, err := iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:              pulumi.String("exampleIothub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("B1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"purpose": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewEndpointServicebusTopic(ctx, "example", &iot.EndpointServicebusTopicArgs{
/// 			ResourceGroupName: example.Name,
/// 			IothubId:          exampleIoTHub.ID(),
/// 			Name:              pulumi.String("example"),
/// 			ConnectionString:  exampleTopicAuthorizationRule.PrimaryConnectionString,
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
/// resource "azure_servicebus_namespace" "example" {
///   name                = "exampleNamespace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
/// }
/// resource "azure_servicebus_topic" "example" {
///   name         = "exampleTopic"
///   namespace_id = azure_servicebus_namespace.example.id
/// }
/// resource "azure_servicebus_topicauthorizationrule" "example" {
///   name     = "exampleRule"
///   topic_id = azure_servicebus_topic.example.id
///   listen   = false
///   send     = true
///   manage   = false
/// }
/// resource "azure_iot_iothub" "example" {
///   name                = "exampleIothub"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku = {
///     name     = "B1"
///     capacity = "1"
///   }
///   tags = {
///     "purpose" = "example"
///   }
/// }
/// resource "azure_iot_endpointservicebustopic" "example" {
///   resource_group_name = azure_core_resourcegroup.example.name
///   iothub_id           = azure_iot_iothub.example.id
///   name                = "example"
///   connection_string   = azure_servicebus_topicauthorizationrule.example.primary_connection_string
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
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.Topic;
/// import com.pulumi.azure.servicebus.TopicArgs;
/// import com.pulumi.azure.servicebus.TopicAuthorizationRule;
/// import com.pulumi.azure.servicebus.TopicAuthorizationRuleArgs;
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.EndpointServicebusTopic;
/// import com.pulumi.azure.iot.EndpointServicebusTopicArgs;
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
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("exampleNamespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("exampleTopic")
///             .namespaceId(exampleNamespace.id())
///             .build());
///
///         var exampleTopicAuthorizationRule = new TopicAuthorizationRule("exampleTopicAuthorizationRule", TopicAuthorizationRuleArgs.builder()
///             .name("exampleRule")
///             .topicId(exampleTopic.id())
///             .listen(false)
///             .send(true)
///             .manage(false)
///             .build());
///
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("exampleIothub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("B1")
///                 .capacity(1)
///                 .build())
///             .tags(Map.of("purpose", "example"))
///             .build());
///
///         var exampleEndpointServicebusTopic = new EndpointServicebusTopic("exampleEndpointServicebusTopic", EndpointServicebusTopicArgs.builder()
///             .resourceGroupName(example.name())
///             .iothubId(exampleIoTHub.id())
///             .name("example")
///             .connectionString(exampleTopicAuthorizationRule.primaryConnectionString())
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
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: exampleNamespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleTopic:
///     type: azure:servicebus:Topic
///     name: example
///     properties:
///       name: exampleTopic
///       namespaceId: ${exampleNamespace.id}
///   exampleTopicAuthorizationRule:
///     type: azure:servicebus:TopicAuthorizationRule
///     name: example
///     properties:
///       name: exampleRule
///       topicId: ${exampleTopic.id}
///       listen: false
///       send: true
///       manage: false
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: exampleIothub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: B1
///         capacity: '1'
///       tags:
///         purpose: example
///   exampleEndpointServicebusTopic:
///     type: azure:iot:EndpointServicebusTopic
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       iothubId: ${exampleIoTHub.id}
///       name: example
///       connectionString: ${exampleTopicAuthorizationRule.primaryConnectionString}
/// ```
///
///
/// ## Import
///
/// IoTHub ServiceBus Topic Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/endpointServicebusTopic:EndpointServicebusTopic servicebus_topic1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1/endpoints/servicebustopic_endpoint1
/// ```
class EndpointServicebusTopic extends pulumi.CustomResource {
  /// Type used to authenticate against the Service Bus Topic endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  late final pulumi.Output<String?> authenticationType;
  /// The connection string for the endpoint. This attribute can only be specified and is mandatory when `authenticationType` is `keyBased`.
  late final pulumi.Output<String?> connectionString;
  /// URI of the Service Bus endpoint. This attribute can only be specified and is mandatory when `authenticationType` is `identityBased`.
  late final pulumi.Output<String?> endpointUri;
  /// Name of the Service Bus Topic. This attribute can only be specified and is mandatory when `authenticationType` is `identityBased`.
  late final pulumi.Output<String?> entityPath;
  /// ID of the User Managed Identity used to authenticate against the Service Bus Topic endpoint.
  ///
  /// &gt; **Note:** `identityId` can only be specified when `authenticationType` is `identityBased`. It must be one of the `identityIds` of the Iot Hub. If not specified when `authenticationType` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  late final pulumi.Output<String?> identityId;
  /// The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubId;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group under which the Service Bus Topic has been created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The subscription ID for the endpoint.
  ///
  /// &gt; **Note:** When `subscriptionId` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [EndpointServicebusTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointServicebusTopic]. {@macro pulumi_iot_endpoint_servicebus_topic_endpoint_servicebus_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointServicebusTopic(
    String name, {
    EndpointServicebusTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointServicebusTopic:EndpointServicebusTopic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationType = registerOutput<String?>('authenticationType');
    connectionString = registerOutput<String?>('connectionString');
    endpointUri = registerOutput<String?>('endpointUri');
    entityPath = registerOutput<String?>('entityPath');
    identityId = registerOutput<String?>('identityId');
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [EndpointServicebusTopic] resource's state with the given [name] and [id].
  static EndpointServicebusTopic get(
    String name,
    pulumi.Input<String> id, {
    EndpointServicebusTopicState? state,
  }) {
    return EndpointServicebusTopic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointServicebusTopic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointServicebusTopic:EndpointServicebusTopic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationType = registerOutput<String?>('authenticationType');
    connectionString = registerOutput<String?>('connectionString');
    endpointUri = registerOutput<String?>('endpointUri');
    entityPath = registerOutput<String?>('entityPath');
    identityId = registerOutput<String?>('identityId');
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}
