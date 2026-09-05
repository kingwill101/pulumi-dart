import 'package:pulumi/pulumi.dart' as pulumi;
import 'fulfillment_args.dart';
import 'fulfillment_feature.dart';
import 'fulfillment_generic_web_service.dart';
import 'fulfillment_state.dart';

/// By default, your agent responds to a matched intent with a static response. If you're using one of the integration options, you can provide a more dynamic response by using fulfillment. When you enable fulfillment for an intent, Dialogflow responds to that intent by calling a service that you define. For example, if an end-user wants to schedule a haircut on Friday, your service can check your database and respond to the end-user with availability information for Friday.
///
///
/// To get more information about Fulfillment, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent/getFulfillment)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/es/docs/fulfillment-overview)
///
/// ## Example Usage
///
/// ### Dialogflow Fulfillment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicAgent = new gcp.diagflow.Agent("basic_agent", {
///     displayName: "example_agent",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
/// });
/// const basicFulfillment = new gcp.diagflow.Fulfillment("basic_fulfillment", {
///     displayName: "basic-fulfillment",
///     enabled: true,
///     genericWebService: {
///         uri: "https://google.com",
///         username: "admin",
///         password: "password",
///         requestHeaders: {
///             name: "wrench",
///         },
///     },
/// }, {
///     dependsOn: [basicAgent],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_agent = gcp.diagflow.Agent("basic_agent",
///     display_name="example_agent",
///     default_language_code="en",
///     time_zone="America/New_York")
/// basic_fulfillment = gcp.diagflow.Fulfillment("basic_fulfillment",
///     display_name="basic-fulfillment",
///     enabled=True,
///     generic_web_service={
///         "uri": "https://google.com",
///         "username": "admin",
///         "password": "password",
///         "request_headers": {
///             "name": "wrench",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[basic_agent]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicAgent = new Gcp.Diagflow.Agent("basic_agent", new()
///     {
///         DisplayName = "example_agent",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///     });
///
///     var basicFulfillment = new Gcp.Diagflow.Fulfillment("basic_fulfillment", new()
///     {
///         DisplayName = "basic-fulfillment",
///         Enabled = true,
///         GenericWebService = new Gcp.Diagflow.Inputs.FulfillmentGenericWebServiceArgs
///         {
///             Uri = "https://google.com",
///             Username = "admin",
///             Password = "password",
///             RequestHeaders =
///             {
///                 { "name", "wrench" },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             basicAgent,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicAgent, err := diagflow.NewAgent(ctx, "basic_agent", &diagflow.AgentArgs{
/// 			DisplayName:         pulumi.String("example_agent"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewFulfillment(ctx, "basic_fulfillment", &diagflow.FulfillmentArgs{
/// 			DisplayName: pulumi.String("basic-fulfillment"),
/// 			Enabled:     pulumi.Bool(true),
/// 			GenericWebService: &diagflow.FulfillmentGenericWebServiceArgs{
/// 				Uri:      pulumi.String("https://google.com"),
/// 				Username: pulumi.String("admin"),
/// 				Password: pulumi.String("password"),
/// 				RequestHeaders: pulumi.StringMap{
/// 					"name": pulumi.String("wrench"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			basicAgent,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_diagflow_agent" "basic_agent" {
///   display_name          = "example_agent"
///   default_language_code = "en"
///   time_zone             = "America/New_York"
/// }
/// resource "gcp_diagflow_fulfillment" "basic_fulfillment" {
///   depends_on   = [gcp_diagflow_agent.basic_agent]
///   display_name = "basic-fulfillment"
///   enabled      = true
///   generic_web_service = {
///     uri      = "https://google.com"
///     username = "admin"
///     password = "password"
///     request_headers = {
///       "name" = "wrench"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.Agent;
/// import com.pulumi.gcp.diagflow.AgentArgs;
/// import com.pulumi.gcp.diagflow.Fulfillment;
/// import com.pulumi.gcp.diagflow.FulfillmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.FulfillmentGenericWebServiceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var basicAgent = new Agent("basicAgent", AgentArgs.builder()
///             .displayName("example_agent")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .build());
///
///         var basicFulfillment = new Fulfillment("basicFulfillment", FulfillmentArgs.builder()
///             .displayName("basic-fulfillment")
///             .enabled(true)
///             .genericWebService(FulfillmentGenericWebServiceArgs.builder()
///                 .uri("https://google.com")
///                 .username("admin")
///                 .password("password")
///                 .requestHeaders(Map.of("name", "wrench"))
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(basicAgent)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicAgent:
///     type: gcp:diagflow:Agent
///     name: basic_agent
///     properties:
///       displayName: example_agent
///       defaultLanguageCode: en
///       timeZone: America/New_York
///   basicFulfillment:
///     type: gcp:diagflow:Fulfillment
///     name: basic_fulfillment
///     properties:
///       displayName: basic-fulfillment
///       enabled: true
///       genericWebService:
///         uri: https://google.com
///         username: admin
///         password: password
///         requestHeaders:
///           name: wrench
///     options:
///       dependsOn:
///         - ${basicAgent}
/// ```
///
///
/// ## Import
///
/// Fulfillment can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Fulfillment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/fulfillment:Fulfillment default {{name}}
/// ```
class Fulfillment extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The human-readable name of the fulfillment, unique within the agent.
  late final pulumi.Output<String> displayName;
  /// Whether fulfillment is enabled.
  late final pulumi.Output<bool?> enabled;
  /// The field defines whether the fulfillment is enabled for certain features.
  /// Structure is documented below.
  late final pulumi.Output<List<FulfillmentFeature>?> features;
  /// Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers.
  /// Structure is documented below.
  late final pulumi.Output<FulfillmentGenericWebService?> genericWebService;
  /// The unique identifier of the fulfillment.
  /// Format: projects/&lt;Project ID&gt;/agent/fulfillment - projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agent/fulfillment
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Fulfillment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fulfillment]. {@macro pulumi_diagflow_fulfillment_fulfillment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fulfillment(
    String name, {
    FulfillmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/fulfillment:Fulfillment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    features = registerOutput<List<FulfillmentFeature>?>('features', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FulfillmentFeature>(guardedValue, (value) => FulfillmentFeature.fromMap((value as Map).cast<String, dynamic>())); });
    genericWebService = registerOutput<FulfillmentGenericWebService?>('genericWebService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FulfillmentGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Fulfillment] resource's state with the given [name] and [id].
  static Fulfillment get(
    String name,
    pulumi.Input<String> id, {
    FulfillmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Fulfillment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Fulfillment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/fulfillment:Fulfillment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    features = registerOutput<List<FulfillmentFeature>?>('features', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FulfillmentFeature>(guardedValue, (value) => FulfillmentFeature.fromMap((value as Map).cast<String, dynamic>())); });
    genericWebService = registerOutput<FulfillmentGenericWebService?>('genericWebService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FulfillmentGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [Fulfillment] resource.
  Fulfillment.reference(String urn)
    : super(
        'gcp:diagflow/fulfillment:Fulfillment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    features = registerOutput<List<FulfillmentFeature>?>('features', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FulfillmentFeature>(guardedValue, (value) => FulfillmentFeature.fromMap((value as Map).cast<String, dynamic>())); });
    genericWebService = registerOutput<FulfillmentGenericWebService?>('genericWebService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FulfillmentGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
