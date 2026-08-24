import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_args.dart';
import 'api_shield_operation_features.dart';
import 'api_shield_operation_schemas.dart';
import 'api_shield_operation_state.dart';

/// Accepted Permissions
///
/// - `Account API Gateway`
/// - `Account API Gateway Read`
/// - `Domain API Gateway`
/// - `Domain API Gateway Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleApiShieldOperation = new cloudflare.ApiShieldOperation("example_api_shield_operation", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     endpoint: "/api/v1/users/{var1}",
///     host: "www.example.com",
///     method: "GET",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_api_shield_operation = cloudflare.ApiShieldOperation("example_api_shield_operation",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     endpoint="/api/v1/users/{var1}",
///     host="www.example.com",
///     method="GET")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleApiShieldOperation = new Cloudflare.ApiShieldOperation("example_api_shield_operation", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Endpoint = "/api/v1/users/{var1}",
///         Host = "www.example.com",
///         Method = "GET",
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
/// 		_, err := cloudflare.NewApiShieldOperation(ctx, "example_api_shield_operation", &cloudflare.ApiShieldOperationArgs{
/// 			ZoneId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Endpoint: pulumi.String("/api/v1/users/{var1}"),
/// 			Host:     pulumi.String("www.example.com"),
/// 			Method:   pulumi.String("GET"),
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
/// resource "cloudflare_apishieldoperation" "example_api_shield_operation" {
///   zone_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   endpoint = "/api/v1/users/{var1}"
///   host     = "www.example.com"
///   method   = "GET"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ApiShieldOperation;
/// import com.pulumi.cloudflare.ApiShieldOperationArgs;
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
///         var exampleApiShieldOperation = new ApiShieldOperation("exampleApiShieldOperation", ApiShieldOperationArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .endpoint("/api/v1/users/{var1}")
///             .host("www.example.com")
///             .method("GET")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApiShieldOperation:
///     type: cloudflare:ApiShieldOperation
///     name: example_api_shield_operation
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       endpoint: /api/v1/users/{var1}
///       host: www.example.com
///       method: GET
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/apiShieldOperation:ApiShieldOperation example '<zone_id>/<operation_id>'
/// ```
class ApiShieldOperation extends pulumi.CustomResource {
  /// The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<ApiShieldOperationFeatures> features;
  /// RFC3986-compliant host.
  late final pulumi.Output<String> host;
  late final pulumi.Output<String> lastUpdated;
  /// The HTTP method used to access the endpoint.
  /// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "CONNECT", "PATCH", "TRACE".
  late final pulumi.Output<String> method;
  /// UUID.
  late final pulumi.Output<String> operationId;
  /// OpenAPI JSON schemas for an operation, including both user-uploaded and Cloudflare-learned schemas.
  late final pulumi.Output<ApiShieldOperationSchemas> schemas;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ApiShieldOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiShieldOperation]. {@macro pulumi_index_api_shield_operation_api_shield_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiShieldOperation(
    String name, {
    ApiShieldOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldOperation:ApiShieldOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    endpoint = registerOutput<String>('endpoint');
    features = registerOutput<ApiShieldOperationFeatures>('features', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldOperationFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    host = registerOutput<String>('host');
    lastUpdated = registerOutput<String>('lastUpdated');
    method = registerOutput<String>('method');
    operationId = registerOutput<String>('operationId');
    schemas = registerOutput<ApiShieldOperationSchemas>('schemas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldOperationSchemas.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ApiShieldOperation] resource's state with the given [name] and [id].
  static ApiShieldOperation get(
    String name,
    pulumi.Input<String> id, {
    ApiShieldOperationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiShieldOperation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiShieldOperation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldOperation:ApiShieldOperation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpoint = registerOutput<String>('endpoint');
    features = registerOutput<ApiShieldOperationFeatures>('features', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldOperationFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    host = registerOutput<String>('host');
    lastUpdated = registerOutput<String>('lastUpdated');
    method = registerOutput<String>('method');
    operationId = registerOutput<String>('operationId');
    schemas = registerOutput<ApiShieldOperationSchemas>('schemas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldOperationSchemas.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ApiShieldOperation] resource.
  ApiShieldOperation.reference(String urn)
    : super(
        'cloudflare:index/apiShieldOperation:ApiShieldOperation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    endpoint = registerOutput<String>('endpoint');
    features = registerOutput<ApiShieldOperationFeatures>('features', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldOperationFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    host = registerOutput<String>('host');
    lastUpdated = registerOutput<String>('lastUpdated');
    method = registerOutput<String>('method');
    operationId = registerOutput<String>('operationId');
    schemas = registerOutput<ApiShieldOperationSchemas>('schemas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiShieldOperationSchemas.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
  }
}
