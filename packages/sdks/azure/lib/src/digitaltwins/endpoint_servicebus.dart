import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_servicebus_args.dart';
import 'endpoint_servicebus_state.dart';

/// Manages a Digital Twins Service Bus Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example_resources",
///     location: "West Europe",
/// });
/// const exampleInstance = new azure.digitaltwins.Instance("example", {
///     name: "example-DT",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "exampleservicebusnamespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleTopic = new azure.servicebus.Topic("example", {
///     name: "exampleservicebustopic",
///     namespaceId: exampleNamespace.id,
/// });
/// const exampleTopicAuthorizationRule = new azure.servicebus.TopicAuthorizationRule("example", {
///     name: "example-rule",
///     topicId: exampleTopic.id,
///     listen: false,
///     send: true,
///     manage: false,
/// });
/// const exampleEndpointServicebus = new azure.digitaltwins.EndpointServicebus("example", {
///     name: "example-EndpointSB",
///     digitalTwinsId: exampleInstance.id,
///     servicebusPrimaryConnectionString: exampleTopicAuthorizationRule.primaryConnectionString,
///     servicebusSecondaryConnectionString: exampleTopicAuthorizationRule.secondaryConnectionString,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example_resources",
///     location="West Europe")
/// example_instance = azure.digitaltwins.Instance("example",
///     name="example-DT",
///     resource_group_name=example.name,
///     location=example.location)
/// example_namespace = azure.servicebus.Namespace("example",
///     name="exampleservicebusnamespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_topic = azure.servicebus.Topic("example",
///     name="exampleservicebustopic",
///     namespace_id=example_namespace.id)
/// example_topic_authorization_rule = azure.servicebus.TopicAuthorizationRule("example",
///     name="example-rule",
///     topic_id=example_topic.id,
///     listen=False,
///     send=True,
///     manage=False)
/// example_endpoint_servicebus = azure.digitaltwins.EndpointServicebus("example",
///     name="example-EndpointSB",
///     digital_twins_id=example_instance.id,
///     servicebus_primary_connection_string=example_topic_authorization_rule.primary_connection_string,
///     servicebus_secondary_connection_string=example_topic_authorization_rule.secondary_connection_string)
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
///         Name = "example_resources",
///         Location = "West Europe",
///     });
///
///     var exampleInstance = new Azure.DigitalTwins.Instance("example", new()
///     {
///         Name = "example-DT",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "exampleservicebusnamespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var exampleTopic = new Azure.ServiceBus.Topic("example", new()
///     {
///         Name = "exampleservicebustopic",
///         NamespaceId = exampleNamespace.Id,
///     });
///
///     var exampleTopicAuthorizationRule = new Azure.ServiceBus.TopicAuthorizationRule("example", new()
///     {
///         Name = "example-rule",
///         TopicId = exampleTopic.Id,
///         Listen = false,
///         Send = true,
///         Manage = false,
///     });
///
///     var exampleEndpointServicebus = new Azure.DigitalTwins.EndpointServicebus("example", new()
///     {
///         Name = "example-EndpointSB",
///         DigitalTwinsId = exampleInstance.Id,
///         ServicebusPrimaryConnectionString = exampleTopicAuthorizationRule.PrimaryConnectionString,
///         ServicebusSecondaryConnectionString = exampleTopicAuthorizationRule.SecondaryConnectionString,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/digitaltwins"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example_resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := digitaltwins.NewInstance(ctx, "example", &digitaltwins.InstanceArgs{
/// 			Name:              pulumi.String("example-DT"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("exampleservicebusnamespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := servicebus.NewTopic(ctx, "example", &servicebus.TopicArgs{
/// 			Name:        pulumi.String("exampleservicebustopic"),
/// 			NamespaceId: exampleNamespace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopicAuthorizationRule, err := servicebus.NewTopicAuthorizationRule(ctx, "example", &servicebus.TopicAuthorizationRuleArgs{
/// 			Name:    pulumi.String("example-rule"),
/// 			TopicId: exampleTopic.ID(),
/// 			Listen:  pulumi.Bool(false),
/// 			Send:    pulumi.Bool(true),
/// 			Manage:  pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitaltwins.NewEndpointServicebus(ctx, "example", &digitaltwins.EndpointServicebusArgs{
/// 			Name:                                pulumi.String("example-EndpointSB"),
/// 			DigitalTwinsId:                      exampleInstance.ID(),
/// 			ServicebusPrimaryConnectionString:   exampleTopicAuthorizationRule.PrimaryConnectionString,
/// 			ServicebusSecondaryConnectionString: exampleTopicAuthorizationRule.SecondaryConnectionString,
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
/// import com.pulumi.azure.digitaltwins.Instance;
/// import com.pulumi.azure.digitaltwins.InstanceArgs;
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.Topic;
/// import com.pulumi.azure.servicebus.TopicArgs;
/// import com.pulumi.azure.servicebus.TopicAuthorizationRule;
/// import com.pulumi.azure.servicebus.TopicAuthorizationRuleArgs;
/// import com.pulumi.azure.digitaltwins.EndpointServicebus;
/// import com.pulumi.azure.digitaltwins.EndpointServicebusArgs;
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
///             .name("example_resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .name("example-DT")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("exampleservicebusnamespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("exampleservicebustopic")
///             .namespaceId(exampleNamespace.id())
///             .build());
///
///         var exampleTopicAuthorizationRule = new TopicAuthorizationRule("exampleTopicAuthorizationRule", TopicAuthorizationRuleArgs.builder()
///             .name("example-rule")
///             .topicId(exampleTopic.id())
///             .listen(false)
///             .send(true)
///             .manage(false)
///             .build());
///
///         var exampleEndpointServicebus = new EndpointServicebus("exampleEndpointServicebus", EndpointServicebusArgs.builder()
///             .name("example-EndpointSB")
///             .digitalTwinsId(exampleInstance.id())
///             .servicebusPrimaryConnectionString(exampleTopicAuthorizationRule.primaryConnectionString())
///             .servicebusSecondaryConnectionString(exampleTopicAuthorizationRule.secondaryConnectionString())
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
///       name: example_resources
///       location: West Europe
///   exampleInstance:
///     type: azure:digitaltwins:Instance
///     name: example
///     properties:
///       name: example-DT
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: exampleservicebusnamespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleTopic:
///     type: azure:servicebus:Topic
///     name: example
///     properties:
///       name: exampleservicebustopic
///       namespaceId: ${exampleNamespace.id}
///   exampleTopicAuthorizationRule:
///     type: azure:servicebus:TopicAuthorizationRule
///     name: example
///     properties:
///       name: example-rule
///       topicId: ${exampleTopic.id}
///       listen: false
///       send: true
///       manage: false
///   exampleEndpointServicebus:
///     type: azure:digitaltwins:EndpointServicebus
///     name: example
///     properties:
///       name: example-EndpointSB
///       digitalTwinsId: ${exampleInstance.id}
///       servicebusPrimaryConnectionString: ${exampleTopicAuthorizationRule.primaryConnectionString}
///       servicebusSecondaryConnectionString: ${exampleTopicAuthorizationRule.secondaryConnectionString}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DigitalTwins` - 2023-01-31
///
/// ## Import
///
/// Digital Twins Service Bus Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:digitaltwins/endpointServicebus:EndpointServicebus example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DigitalTwins/digitalTwinsInstances/dt1/endpoints/ep1
/// ```
class EndpointServicebus extends pulumi.CustomResource {
  /// The storage secret of the dead-lettering, whose format is `https://&lt;storageAccountname&gt;.blob.core.windows.net/&lt;containerName&gt;?&lt;SASToken&gt;`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  late final pulumi.Output<String?> deadLetterStorageSecret;

  /// The ID of the Digital Twins Instance. Changing this forces a new Digital Twins Service Bus Endpoint to be created.
  late final pulumi.Output<String> digitalTwinsId;

  /// The name which should be used for this Digital Twins Service Bus Endpoint. Changing this forces a new Digital Twins Service Bus Endpoint to be created.
  late final pulumi.Output<String> name;

  /// The primary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission. .
  late final pulumi.Output<String> servicebusPrimaryConnectionString;

  /// The secondary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission.
  late final pulumi.Output<String> servicebusSecondaryConnectionString;

  /// Creates a new [EndpointServicebus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointServicebus]. {@macro pulumi_digitaltwins_endpoint_servicebus_endpoint_servicebus_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointServicebus(
    String name, {
    EndpointServicebusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:digitaltwins/endpointServicebus:EndpointServicebus',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deadLetterStorageSecret = registerOutput<String?>(
      'deadLetterStorageSecret',
    );
    digitalTwinsId = registerOutput<String>('digitalTwinsId');
    this.name = registerOutput<String>('name');
    servicebusPrimaryConnectionString = registerOutput<String>(
      'servicebusPrimaryConnectionString',
    );
    servicebusSecondaryConnectionString = registerOutput<String>(
      'servicebusSecondaryConnectionString',
    );
  }

  /// Gets an existing [EndpointServicebus] resource's state with the given [name] and [id].
  static EndpointServicebus get(
    String name,
    pulumi.Input<String> id, {
    EndpointServicebusState? state,
  }) {
    return EndpointServicebus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointServicebus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:digitaltwins/endpointServicebus:EndpointServicebus',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deadLetterStorageSecret = registerOutput<String?>(
      'deadLetterStorageSecret',
    );
    digitalTwinsId = registerOutput<String>('digitalTwinsId');
    this.name = registerOutput<String>('name');
    servicebusPrimaryConnectionString = registerOutput<String>(
      'servicebusPrimaryConnectionString',
    );
    servicebusSecondaryConnectionString = registerOutput<String>(
      'servicebusSecondaryConnectionString',
    );
  }
}
