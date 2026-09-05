import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dynamic_routing_args.dart';
import 'ai_gateway_dynamic_routing_deployment.dart';
import 'ai_gateway_dynamic_routing_element.dart';
import 'ai_gateway_dynamic_routing_route.dart';
import 'ai_gateway_dynamic_routing_state.dart';
import 'ai_gateway_dynamic_routing_version.dart';

/// Accepted Permissions
///
/// - `AI Gateway Read`
/// - `AI Gateway Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAiGatewayDynamicRouting = new cloudflare.AiGatewayDynamicRouting("example_ai_gateway_dynamic_routing", {
///     accountId: "0d37909e38d3e99c29fa2cd343ac421a",
///     gatewayId: "54442216",
///     elements: [{
///         id: "id",
///         outputs: {
///             next: {
///                 elementId: "elementId",
///             },
///         },
///         type: "start",
///     }],
///     name: "name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_ai_gateway_dynamic_routing = cloudflare.AiGatewayDynamicRouting("example_ai_gateway_dynamic_routing",
///     account_id="0d37909e38d3e99c29fa2cd343ac421a",
///     gateway_id="54442216",
///     elements=[{
///         "id": "id",
///         "outputs": {
///             "next": {
///                 "element_id": "elementId",
///             },
///         },
///         "type": "start",
///     }],
///     name="name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAiGatewayDynamicRouting = new Cloudflare.AiGatewayDynamicRouting("example_ai_gateway_dynamic_routing", new()
///     {
///         AccountId = "0d37909e38d3e99c29fa2cd343ac421a",
///         GatewayId = "54442216",
///         Elements = new[]
///         {
///             new Cloudflare.Inputs.AiGatewayDynamicRoutingElementArgs
///             {
///                 Id = "id",
///                 Outputs = new Cloudflare.Inputs.AiGatewayDynamicRoutingElementOutputsArgs
///                 {
///                     Next = new Cloudflare.Inputs.AiGatewayDynamicRoutingElementOutputsNextArgs
///                     {
///                         ElementId = "elementId",
///                     },
///                 },
///                 Type = "start",
///             },
///         },
///         Name = "name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewAiGatewayDynamicRouting(ctx, "example_ai_gateway_dynamic_routing", &cloudflare.AiGatewayDynamicRoutingArgs{
/// 			AccountId: pulumi.String("0d37909e38d3e99c29fa2cd343ac421a"),
/// 			GatewayId: pulumi.String("54442216"),
/// 			Elements: cloudflare.AiGatewayDynamicRoutingElementArray{
/// 				&cloudflare.AiGatewayDynamicRoutingElementArgs{
/// 					Id: pulumi.String("id"),
/// 					Outputs: &cloudflare.AiGatewayDynamicRoutingElementOutputsArgs{
/// 						Next: &cloudflare.AiGatewayDynamicRoutingElementOutputsNextArgs{
/// 							ElementId: pulumi.String("elementId"),
/// 						},
/// 					},
/// 					Type: pulumi.String("start"),
/// 				},
/// 			},
/// 			Name: pulumi.String("name"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_aigatewaydynamicrouting" "example_ai_gateway_dynamic_routing" {
///   account_id = "0d37909e38d3e99c29fa2cd343ac421a"
///   gateway_id = "54442216"
///   elements {
///     id = "id"
///     outputs = {
///       next = {
///         element_id = "elementId"
///       }
///     }
///     type = "start"
///   }
///   name = "name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AiGatewayDynamicRouting;
/// import com.pulumi.cloudflare.AiGatewayDynamicRoutingArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewayDynamicRoutingElementArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewayDynamicRoutingElementOutputsArgs;
/// import com.pulumi.cloudflare.inputs.AiGatewayDynamicRoutingElementOutputsNextArgs;
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
///         var exampleAiGatewayDynamicRouting = new AiGatewayDynamicRouting("exampleAiGatewayDynamicRouting", AiGatewayDynamicRoutingArgs.builder()
///             .accountId("0d37909e38d3e99c29fa2cd343ac421a")
///             .gatewayId("54442216")
///             .elements(AiGatewayDynamicRoutingElementArgs.builder()
///                 .id("id")
///                 .outputs(AiGatewayDynamicRoutingElementOutputsArgs.builder()
///                     .next(AiGatewayDynamicRoutingElementOutputsNextArgs.builder()
///                         .elementId("elementId")
///                         .build())
///                     .build())
///                 .type("start")
///                 .build())
///             .name("name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAiGatewayDynamicRouting:
///     type: cloudflare:AiGatewayDynamicRouting
///     name: example_ai_gateway_dynamic_routing
///     properties:
///       accountId: 0d37909e38d3e99c29fa2cd343ac421a
///       gatewayId: '54442216'
///       elements:
///         - id: id
///           outputs:
///             next:
///               elementId: elementId
///           type: start
///       name: name
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/aiGatewayDynamicRouting:AiGatewayDynamicRouting example '<account_id>/<gateway_id>/<id>'
/// ```
class AiGatewayDynamicRouting extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<AiGatewayDynamicRoutingDeployment> deployment;
  late final pulumi.Output<List<AiGatewayDynamicRoutingElement>> elements;
  late final pulumi.Output<String> gatewayId;
  late final pulumi.Output<String> modifiedAt;
  late final pulumi.Output<String> name;
  late final pulumi.Output<AiGatewayDynamicRoutingRoute> route;
  late final pulumi.Output<bool> success;
  late final pulumi.Output<AiGatewayDynamicRoutingVersion> version;

  /// Creates a new [AiGatewayDynamicRouting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiGatewayDynamicRouting]. {@macro pulumi_index_ai_gateway_dynamic_routing_ai_gateway_dynamic_routing_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiGatewayDynamicRouting(
    String name, {
    AiGatewayDynamicRoutingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiGatewayDynamicRouting:AiGatewayDynamicRouting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    deployment = registerOutput<AiGatewayDynamicRoutingDeployment>('deployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDynamicRoutingDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elements = registerOutput<List<AiGatewayDynamicRoutingElement>>('elements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiGatewayDynamicRoutingElement>(guardedValue, (value) => AiGatewayDynamicRoutingElement.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayId = registerOutput<String>('gatewayId');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    route = registerOutput<AiGatewayDynamicRoutingRoute>('route', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDynamicRoutingRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    success = registerOutput<bool>('success');
    version = registerOutput<AiGatewayDynamicRoutingVersion>('version', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDynamicRoutingVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AiGatewayDynamicRouting] resource's state with the given [name] and [id].
  static AiGatewayDynamicRouting get(
    String name,
    pulumi.Input<String> id, {
    AiGatewayDynamicRoutingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiGatewayDynamicRouting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiGatewayDynamicRouting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiGatewayDynamicRouting:AiGatewayDynamicRouting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    deployment = registerOutput<AiGatewayDynamicRoutingDeployment>('deployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDynamicRoutingDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elements = registerOutput<List<AiGatewayDynamicRoutingElement>>('elements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiGatewayDynamicRoutingElement>(guardedValue, (value) => AiGatewayDynamicRoutingElement.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayId = registerOutput<String>('gatewayId');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    route = registerOutput<AiGatewayDynamicRoutingRoute>('route', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDynamicRoutingRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    success = registerOutput<bool>('success');
    version = registerOutput<AiGatewayDynamicRoutingVersion>('version', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDynamicRoutingVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AiGatewayDynamicRouting] resource.
  AiGatewayDynamicRouting.reference(String urn)
    : super(
        'cloudflare:index/aiGatewayDynamicRouting:AiGatewayDynamicRouting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    deployment = registerOutput<AiGatewayDynamicRoutingDeployment>('deployment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDynamicRoutingDeployment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    elements = registerOutput<List<AiGatewayDynamicRoutingElement>>('elements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiGatewayDynamicRoutingElement>(guardedValue, (value) => AiGatewayDynamicRoutingElement.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayId = registerOutput<String>('gatewayId');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    route = registerOutput<AiGatewayDynamicRoutingRoute>('route', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDynamicRoutingRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    success = registerOutput<bool>('success');
    version = registerOutput<AiGatewayDynamicRoutingVersion>('version', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayDynamicRoutingVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
