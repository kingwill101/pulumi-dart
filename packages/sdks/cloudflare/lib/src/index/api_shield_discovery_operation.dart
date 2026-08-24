import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_discovery_operation_args.dart';
import 'api_shield_discovery_operation_state.dart';

/// Accepted Permissions
///
/// - `Account API Gateway`
/// - `Domain API Gateway`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleApiShieldDiscoveryOperation = new cloudflare.ApiShieldDiscoveryOperation("example_api_shield_discovery_operation", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     operationId: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     state: "review",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_api_shield_discovery_operation = cloudflare.ApiShieldDiscoveryOperation("example_api_shield_discovery_operation",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     operation_id="f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     state="review")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleApiShieldDiscoveryOperation = new Cloudflare.ApiShieldDiscoveryOperation("example_api_shield_discovery_operation", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         OperationId = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///         State = "review",
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
/// 		_, err := cloudflare.NewApiShieldDiscoveryOperation(ctx, "example_api_shield_discovery_operation", &cloudflare.ApiShieldDiscoveryOperationArgs{
/// 			ZoneId:      pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			OperationId: pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 			State:       pulumi.String("review"),
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
/// resource "cloudflare_apishielddiscoveryoperation" "example_api_shield_discovery_operation" {
///   zone_id      = "023e105f4ecef8ad9ca31a8372d0c353"
///   operation_id = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///   state        = "review"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ApiShieldDiscoveryOperation;
/// import com.pulumi.cloudflare.ApiShieldDiscoveryOperationArgs;
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
///         var exampleApiShieldDiscoveryOperation = new ApiShieldDiscoveryOperation("exampleApiShieldDiscoveryOperation", ApiShieldDiscoveryOperationArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .operationId("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///             .state("review")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApiShieldDiscoveryOperation:
///     type: cloudflare:ApiShieldDiscoveryOperation
///     name: example_api_shield_discovery_operation
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       operationId: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///       state: review
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class ApiShieldDiscoveryOperation extends pulumi.CustomResource {
  /// UUID.
  late final pulumi.Output<String> operationId;
  /// Mark state of operation in API Discovery
  /// * `review` - Mark operation as for review
  /// * `ignored` - Mark operation as ignored
  /// Available values: "review", "ignored".
  late final pulumi.Output<String?> state;
  /// Identifier.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [ApiShieldDiscoveryOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiShieldDiscoveryOperation]. {@macro pulumi_index_api_shield_discovery_operation_api_shield_discovery_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiShieldDiscoveryOperation(
    String name, {
    ApiShieldDiscoveryOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldDiscoveryOperation:ApiShieldDiscoveryOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    operationId = registerOutput<String>('operationId');
    state = registerOutput<String?>('state');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [ApiShieldDiscoveryOperation] resource's state with the given [name] and [id].
  static ApiShieldDiscoveryOperation get(
    String name,
    pulumi.Input<String> id, {
    ApiShieldDiscoveryOperationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiShieldDiscoveryOperation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiShieldDiscoveryOperation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShieldDiscoveryOperation:ApiShieldDiscoveryOperation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    operationId = registerOutput<String>('operationId');
    this.state = registerOutput<String?>('state');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [ApiShieldDiscoveryOperation] resource.
  ApiShieldDiscoveryOperation.reference(String urn)
    : super(
        'cloudflare:index/apiShieldDiscoveryOperation:ApiShieldDiscoveryOperation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    operationId = registerOutput<String>('operationId');
    state = registerOutput<String?>('state');
    zoneId = registerOutput<String?>('zoneId');
  }
}
