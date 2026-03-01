import 'package:pulumi/pulumi.dart' as pulumi;
import 'services_communications_gateway_test_line_args.dart';
import 'services_communications_gateway_test_line_state.dart';

/// Manages a Voice Services Communications Gateway Test Line.
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
///     location: "West Central US",
/// });
/// const exampleServicesCommunicationsGateway = new azure.voice.ServicesCommunicationsGateway("example", {
///     name: "example-vcg",
///     resourceGroupName: example.name,
/// });
/// const exampleServicesCommunicationsGatewayTestLine = new azure.voice.ServicesCommunicationsGatewayTestLine("example", {
///     name: "example-vtl",
///     location: "West Central US",
///     voiceServicesCommunicationsGatewayId: exampleServicesCommunicationsGateway.id,
///     phoneNumber: "123456789",
///     purpose: "Automated",
///     tags: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Central US")
/// example_services_communications_gateway = azure.voice.ServicesCommunicationsGateway("example",
///     name="example-vcg",
///     resource_group_name=example.name)
/// example_services_communications_gateway_test_line = azure.voice.ServicesCommunicationsGatewayTestLine("example",
///     name="example-vtl",
///     location="West Central US",
///     voice_services_communications_gateway_id=example_services_communications_gateway.id,
///     phone_number="123456789",
///     purpose="Automated",
///     tags={
///         "key": "value",
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
///         Location = "West Central US",
///     });
///
///     var exampleServicesCommunicationsGateway = new Azure.Voice.ServicesCommunicationsGateway("example", new()
///     {
///         Name = "example-vcg",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleServicesCommunicationsGatewayTestLine = new Azure.Voice.ServicesCommunicationsGatewayTestLine("example", new()
///     {
///         Name = "example-vtl",
///         Location = "West Central US",
///         VoiceServicesCommunicationsGatewayId = exampleServicesCommunicationsGateway.Id,
///         PhoneNumber = "123456789",
///         Purpose = "Automated",
///         Tags =
///         {
///             { "key", "value" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/voice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Central US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicesCommunicationsGateway, err := voice.NewServicesCommunicationsGateway(ctx, "example", &voice.ServicesCommunicationsGatewayArgs{
/// 			Name:              pulumi.String("example-vcg"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = voice.NewServicesCommunicationsGatewayTestLine(ctx, "example", &voice.ServicesCommunicationsGatewayTestLineArgs{
/// 			Name:                                 pulumi.String("example-vtl"),
/// 			Location:                             pulumi.String("West Central US"),
/// 			VoiceServicesCommunicationsGatewayId: exampleServicesCommunicationsGateway.ID(),
/// 			PhoneNumber:                          pulumi.String("123456789"),
/// 			Purpose:                              pulumi.String("Automated"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azure.voice.ServicesCommunicationsGateway;
/// import com.pulumi.azure.voice.ServicesCommunicationsGatewayArgs;
/// import com.pulumi.azure.voice.ServicesCommunicationsGatewayTestLine;
/// import com.pulumi.azure.voice.ServicesCommunicationsGatewayTestLineArgs;
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
///             .location("West Central US")
///             .build());
///
///         var exampleServicesCommunicationsGateway = new ServicesCommunicationsGateway("exampleServicesCommunicationsGateway", ServicesCommunicationsGatewayArgs.builder()
///             .name("example-vcg")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleServicesCommunicationsGatewayTestLine = new ServicesCommunicationsGatewayTestLine("exampleServicesCommunicationsGatewayTestLine", ServicesCommunicationsGatewayTestLineArgs.builder()
///             .name("example-vtl")
///             .location("West Central US")
///             .voiceServicesCommunicationsGatewayId(exampleServicesCommunicationsGateway.id())
///             .phoneNumber("123456789")
///             .purpose("Automated")
///             .tags(Map.of("key", "value"))
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
///       location: West Central US
///   exampleServicesCommunicationsGateway:
///     type: azure:voice:ServicesCommunicationsGateway
///     name: example
///     properties:
///       name: example-vcg
///       resourceGroupName: ${example.name}
///   exampleServicesCommunicationsGatewayTestLine:
///     type: azure:voice:ServicesCommunicationsGatewayTestLine
///     name: example
///     properties:
///       name: example-vtl
///       location: West Central US
///       voiceServicesCommunicationsGatewayId: ${exampleServicesCommunicationsGateway.id}
///       phoneNumber: '123456789'
///       purpose: Automated
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.VoiceServices` - 2023-04-03
///
/// ## Import
///
/// Voice Services Communications Gateway Test Line can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:voice/servicesCommunicationsGatewayTestLine:ServicesCommunicationsGatewayTestLine example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.VoiceServices/communicationsGateways/communicationsGateway1/testLines/testLine1
/// ```
class ServicesCommunicationsGatewayTestLine extends pulumi.CustomResource {
  /// Specifies the Azure Region where the Voice Services Communications Gateway Test Line should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Voice Services Communications Gateway Test Line. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the phone number.
  late final pulumi.Output<String> phoneNumber;
  /// The purpose of the Voice Services Communications Gateway Test Line. Possible values are `Automated` or `Manual`.
  late final pulumi.Output<String> purpose;
  /// A mapping of tags which should be assigned to the Voice Services Communications Gateway Test Line.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the ID of the Voice Services Communications Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> voiceServicesCommunicationsGatewayId;

  /// Creates a new [ServicesCommunicationsGatewayTestLine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicesCommunicationsGatewayTestLine]. {@macro pulumi_voice_services_communications_gateway_test_line_services_communications_gateway_test_line_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicesCommunicationsGatewayTestLine(
    String name, {
    ServicesCommunicationsGatewayTestLineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:voice/servicesCommunicationsGatewayTestLine:ServicesCommunicationsGatewayTestLine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.phoneNumber = registerOutput<String>('phoneNumber');
    this.purpose = registerOutput<String>('purpose');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.voiceServicesCommunicationsGatewayId = registerOutput<String>('voiceServicesCommunicationsGatewayId');
  }

  /// Gets an existing [ServicesCommunicationsGatewayTestLine] resource's state with the given [name] and [id].
  static ServicesCommunicationsGatewayTestLine get(
    String name,
    pulumi.Input<String> id, {
    ServicesCommunicationsGatewayTestLineState? state,
  }) {
    return ServicesCommunicationsGatewayTestLine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicesCommunicationsGatewayTestLine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:voice/servicesCommunicationsGatewayTestLine:ServicesCommunicationsGatewayTestLine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.phoneNumber = registerOutput<String>('phoneNumber');
    this.purpose = registerOutput<String>('purpose');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.voiceServicesCommunicationsGatewayId = registerOutput<String>('voiceServicesCommunicationsGatewayId');
  }
}
