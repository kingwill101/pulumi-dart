import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_debugmask_args.dart';
import 'environment_debugmask_state.dart';

/// Manages the debug mask singleton for an Apigee environment. The debug mask
/// configuration restricts which data is captured (masked) in API proxy debug
/// sessions for an environment.
///
/// The debug mask always exists for every environment and cannot be created or
/// deleted through the API. Terraform manages it via `GET`/`PATCH` on the
/// environment's `debugmask` sub-resource. Creating the resource sets the
/// configured masks, and destroying it clears all masks.
///
///
/// To get more information about EnvironmentDebugmask, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments/getDebugmask)
/// * How-to Guides
/// * [Masking sensitive data](https://cloud.google.com/apigee/docs/api-platform/debug/masking-data)
///
/// ## Example Usage
///
/// ### Apigee Environment Debugmask Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debugmask = new gcp.apigee.EnvironmentDebugmask("debugmask", {
///     envId: apigeeEnv.id,
///     requestXPaths: ["/request/headers/header[@name=\"x-secret\"]"],
///     responseXPaths: ["/response/body/token"],
///     variables: ["request.header.apikey"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debugmask = gcp.apigee.EnvironmentDebugmask("debugmask",
///     env_id=apigee_env["id"],
///     request_x_paths=["/request/headers/header[@name=\"x-secret\"]"],
///     response_x_paths=["/response/body/token"],
///     variables=["request.header.apikey"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debugmask = new Gcp.Apigee.EnvironmentDebugmask("debugmask", new()
///     {
///         EnvId = apigeeEnv.Id,
///         RequestXPaths = new[]
///         {
///             "/request/headers/header[@name=\"x-secret\"]",
///         },
///         ResponseXPaths = new[]
///         {
///             "/response/body/token",
///         },
///         Variables = new[]
///         {
///             "request.header.apikey",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigee.NewEnvironmentDebugmask(ctx, "debugmask", &apigee.EnvironmentDebugmaskArgs{
/// 			EnvId: pulumi.Any(apigeeEnv.Id),
/// 			RequestXPaths: pulumi.StringArray{
/// 				pulumi.String("/request/headers/header[@name=\"x-secret\"]"),
/// 			},
/// 			ResponseXPaths: pulumi.StringArray{
/// 				pulumi.String("/response/body/token"),
/// 			},
/// 			Variables: pulumi.StringArray{
/// 				pulumi.String("request.header.apikey"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_apigee_environmentdebugmask" "debugmask" {
///   env_id           = apigeeEnv.id
///   request_x_paths  = ["/request/headers/header[@name=\"x-secret\"]"]
///   response_x_paths = ["/response/body/token"]
///   variables        = ["request.header.apikey"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigee.EnvironmentDebugmask;
/// import com.pulumi.gcp.apigee.EnvironmentDebugmaskArgs;
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
///         var debugmask = new EnvironmentDebugmask("debugmask", EnvironmentDebugmaskArgs.builder()
///             .envId(apigeeEnv.get("id"))
///             .requestXPaths("/request/headers/header[@name=\"x-secret\"]")
///             .responseXPaths("/response/body/token")
///             .variables("request.header.apikey")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   debugmask:
///     type: gcp:apigee:EnvironmentDebugmask
///     properties:
///       envId: ${apigeeEnv.id}
///       requestXPaths:
///         - /request/headers/header[@name="x-secret"]
///       responseXPaths:
///         - /response/body/token
///       variables:
///         - request.header.apikey
/// ```
///
///
/// ### Apigee Environment Debugmask Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const debugmask = new gcp.apigee.EnvironmentDebugmask("debugmask", {
///     envId: apigeeEnv.id,
///     requestXPaths: [
///         "/request/headers/header[@name=\"x-secret\"]",
///         "/request/body/password",
///     ],
///     responseXPaths: ["/response/body/token"],
///     faultXPaths: ["/fault/faultstring"],
///     requestJsonPaths: ["$.store.book[*].author"],
///     responseJsonPaths: ["$.store.book[*].price"],
///     variables: [
///         "request.header.apikey",
///         "request.header.x-token",
///     ],
///     namespaces: {
///         ns: "http://example.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// debugmask = gcp.apigee.EnvironmentDebugmask("debugmask",
///     env_id=apigee_env["id"],
///     request_x_paths=[
///         "/request/headers/header[@name=\"x-secret\"]",
///         "/request/body/password",
///     ],
///     response_x_paths=["/response/body/token"],
///     fault_x_paths=["/fault/faultstring"],
///     request_json_paths=["$.store.book[*].author"],
///     response_json_paths=["$.store.book[*].price"],
///     variables=[
///         "request.header.apikey",
///         "request.header.x-token",
///     ],
///     namespaces={
///         "ns": "http://example.com",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var debugmask = new Gcp.Apigee.EnvironmentDebugmask("debugmask", new()
///     {
///         EnvId = apigeeEnv.Id,
///         RequestXPaths = new[]
///         {
///             "/request/headers/header[@name=\"x-secret\"]",
///             "/request/body/password",
///         },
///         ResponseXPaths = new[]
///         {
///             "/response/body/token",
///         },
///         FaultXPaths = new[]
///         {
///             "/fault/faultstring",
///         },
///         RequestJsonPaths = new[]
///         {
///             "$.store.book[*].author",
///         },
///         ResponseJsonPaths = new[]
///         {
///             "$.store.book[*].price",
///         },
///         Variables = new[]
///         {
///             "request.header.apikey",
///             "request.header.x-token",
///         },
///         Namespaces =
///         {
///             { "ns", "http://example.com" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigee.NewEnvironmentDebugmask(ctx, "debugmask", &apigee.EnvironmentDebugmaskArgs{
/// 			EnvId: pulumi.Any(apigeeEnv.Id),
/// 			RequestXPaths: pulumi.StringArray{
/// 				pulumi.String("/request/headers/header[@name=\"x-secret\"]"),
/// 				pulumi.String("/request/body/password"),
/// 			},
/// 			ResponseXPaths: pulumi.StringArray{
/// 				pulumi.String("/response/body/token"),
/// 			},
/// 			FaultXPaths: pulumi.StringArray{
/// 				pulumi.String("/fault/faultstring"),
/// 			},
/// 			RequestJsonPaths: pulumi.StringArray{
/// 				pulumi.String("$.store.book[*].author"),
/// 			},
/// 			ResponseJsonPaths: pulumi.StringArray{
/// 				pulumi.String("$.store.book[*].price"),
/// 			},
/// 			Variables: pulumi.StringArray{
/// 				pulumi.String("request.header.apikey"),
/// 				pulumi.String("request.header.x-token"),
/// 			},
/// 			Namespaces: pulumi.StringMap{
/// 				"ns": pulumi.String("http://example.com"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_apigee_environmentdebugmask" "debugmask" {
///   env_id              = apigeeEnv.id
///   request_x_paths     = ["/request/headers/header[@name=\"x-secret\"]", "/request/body/password"]
///   response_x_paths    = ["/response/body/token"]
///   fault_x_paths       = ["/fault/faultstring"]
///   request_json_paths  = ["$.store.book[*].author"]
///   response_json_paths = ["$.store.book[*].price"]
///   variables           = ["request.header.apikey", "request.header.x-token"]
///   namespaces = {
///     "ns" = "http://example.com"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigee.EnvironmentDebugmask;
/// import com.pulumi.gcp.apigee.EnvironmentDebugmaskArgs;
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
///         var debugmask = new EnvironmentDebugmask("debugmask", EnvironmentDebugmaskArgs.builder()
///             .envId(apigeeEnv.get("id"))
///             .requestXPaths(
///                 "/request/headers/header[@name=\"x-secret\"]",
///                 "/request/body/password")
///             .responseXPaths("/response/body/token")
///             .faultXPaths("/fault/faultstring")
///             .requestJsonPaths("$.store.book[*].author")
///             .responseJsonPaths("$.store.book[*].price")
///             .variables(
///                 "request.header.apikey",
///                 "request.header.x-token")
///             .namespaces(Map.of("ns", "http://example.com"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   debugmask:
///     type: gcp:apigee:EnvironmentDebugmask
///     properties:
///       envId: ${apigeeEnv.id}
///       requestXPaths:
///         - /request/headers/header[@name="x-secret"]
///         - /request/body/password
///       responseXPaths:
///         - /response/body/token
///       faultXPaths:
///         - /fault/faultstring
///       requestJsonPaths:
///         - $.store.book[*].author
///       responseJsonPaths:
///         - $.store.book[*].price
///       variables:
///         - request.header.apikey
///         - request.header.x-token
///       namespaces:
///         ns: http://example.com
/// ```
///
///
/// ## Import
///
/// EnvironmentDebugmask can be imported using any of these accepted formats:
///
/// * `{{env_id}}/debugmask`
/// * `organizations/{{org_name}}/environments/{{env_name}}`
///
///
/// When using the `pulumi import` command, EnvironmentDebugmask can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentDebugmask:EnvironmentDebugmask default {{env_id}}/debugmask
/// $ pulumi import gcp:apigee/environmentDebugmask:EnvironmentDebugmask default organizations/{{org_name}}/environments/{{env_name}}
/// ```
class EnvironmentDebugmask extends pulumi.CustomResource {
  /// The Apigee environment associated with the debug mask, in the format
  /// `organizations/{{org_name}}/environments/{{env_name}}`.
  ///
  /// - - -
  late final pulumi.Output<String> envId;
  /// List of XPath expressions that specify the XML elements or attributes that the
  /// debug mask applies to for fault messages.
  late final pulumi.Output<List<String>?> faultXPaths;
  /// The fully qualified name of the debug mask, in the format
  /// `organizations/{{org_name}}/environments/{{env_name}}/debugmask`.
  late final pulumi.Output<String> name;
  /// Map of namespace prefixes to URIs used to evaluate the configured XPath
  /// expressions.
  late final pulumi.Output<Map<String, String>?> namespaces;
  /// List of JSONPath expressions that specify the JSON elements or attributes that
  /// the debug mask applies to for request messages.
  late final pulumi.Output<List<String>?> requestJsonPaths;
  /// List of XPath expressions that specify the XML elements or attributes that the
  /// debug mask applies to for request messages.
  late final pulumi.Output<List<String>?> requestXPaths;
  /// List of JSONPath expressions that specify the JSON elements or attributes that
  /// the debug mask applies to for response messages.
  late final pulumi.Output<List<String>?> responseJsonPaths;
  /// List of XPath expressions that specify the XML elements or attributes that the
  /// debug mask applies to for response messages.
  late final pulumi.Output<List<String>?> responseXPaths;
  /// List of flow variables that the debug mask applies to.
  late final pulumi.Output<List<String>?> variables;

  /// Creates a new [EnvironmentDebugmask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentDebugmask]. {@macro pulumi_apigee_environment_debugmask_environment_debugmask_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentDebugmask(
    String name, {
    EnvironmentDebugmaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentDebugmask:EnvironmentDebugmask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    envId = registerOutput<String>('envId');
    faultXPaths = registerOutput<List<String>?>('faultXPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    namespaces = registerOutput<Map<String, String>?>('namespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    requestJsonPaths = registerOutput<List<String>?>('requestJsonPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    requestXPaths = registerOutput<List<String>?>('requestXPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    responseJsonPaths = registerOutput<List<String>?>('responseJsonPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    responseXPaths = registerOutput<List<String>?>('responseXPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    variables = registerOutput<List<String>?>('variables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [EnvironmentDebugmask] resource's state with the given [name] and [id].
  static EnvironmentDebugmask get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentDebugmaskState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnvironmentDebugmask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnvironmentDebugmask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentDebugmask:EnvironmentDebugmask',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    envId = registerOutput<String>('envId');
    faultXPaths = registerOutput<List<String>?>('faultXPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    namespaces = registerOutput<Map<String, String>?>('namespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    requestJsonPaths = registerOutput<List<String>?>('requestJsonPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    requestXPaths = registerOutput<List<String>?>('requestXPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    responseJsonPaths = registerOutput<List<String>?>('responseJsonPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    responseXPaths = registerOutput<List<String>?>('responseXPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    variables = registerOutput<List<String>?>('variables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [EnvironmentDebugmask] resource.
  EnvironmentDebugmask.reference(String urn)
    : super(
        'gcp:apigee/environmentDebugmask:EnvironmentDebugmask',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    envId = registerOutput<String>('envId');
    faultXPaths = registerOutput<List<String>?>('faultXPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    namespaces = registerOutput<Map<String, String>?>('namespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    requestJsonPaths = registerOutput<List<String>?>('requestJsonPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    requestXPaths = registerOutput<List<String>?>('requestXPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    responseJsonPaths = registerOutput<List<String>?>('responseJsonPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    responseXPaths = registerOutput<List<String>?>('responseXPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    variables = registerOutput<List<String>?>('variables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
