import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dex_test_args.dart';
import 'zero_trust_dex_test_data.dart';
import 'zero_trust_dex_test_state.dart';
import 'zero_trust_dex_test_target_policy.dart';

/// Accepted Permissions
///
/// - `Cloudflare DEX Read`
/// - `Cloudflare DEX Write`
/// - `Zero Trust Read`
/// - `Zero Trust Report`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDexTest = new cloudflare.ZeroTrustDexTest("example_zero_trust_dex_test", {
///     accountId: "01a7362d577a6c3019a474fd6f485823",
///     data: {
///         host: "https://dash.cloudflare.com",
///         kind: "http",
///         method: "GET",
///     },
///     enabled: true,
///     interval: "30m",
///     name: "HTTP dash health check",
///     description: "Checks the dash endpoint every 30 minutes",
///     targetPolicies: [{
///         id: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///         "default": true,
///         name: "name",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dex_test = cloudflare.ZeroTrustDexTest("example_zero_trust_dex_test",
///     account_id="01a7362d577a6c3019a474fd6f485823",
///     data={
///         "host": "https://dash.cloudflare.com",
///         "kind": "http",
///         "method": "GET",
///     },
///     enabled=True,
///     interval="30m",
///     name="HTTP dash health check",
///     description="Checks the dash endpoint every 30 minutes",
///     target_policies=[{
///         "id": "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///         "default": True,
///         "name": "name",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDexTest = new Cloudflare.ZeroTrustDexTest("example_zero_trust_dex_test", new()
///     {
///         AccountId = "01a7362d577a6c3019a474fd6f485823",
///         Data = new Cloudflare.Inputs.ZeroTrustDexTestDataArgs
///         {
///             Host = "https://dash.cloudflare.com",
///             Kind = "http",
///             Method = "GET",
///         },
///         Enabled = true,
///         Interval = "30m",
///         Name = "HTTP dash health check",
///         Description = "Checks the dash endpoint every 30 minutes",
///         TargetPolicies = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDexTestTargetPolicyArgs
///             {
///                 Id = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///                 Default = true,
///                 Name = "name",
///             },
///         },
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
/// 		_, err := cloudflare.NewZeroTrustDexTest(ctx, "example_zero_trust_dex_test", &cloudflare.ZeroTrustDexTestArgs{
/// 			AccountId: pulumi.String("01a7362d577a6c3019a474fd6f485823"),
/// 			Data: &cloudflare.ZeroTrustDexTestDataArgs{
/// 				Host:   pulumi.String("https://dash.cloudflare.com"),
/// 				Kind:   pulumi.String("http"),
/// 				Method: pulumi.String("GET"),
/// 			},
/// 			Enabled:     pulumi.Bool(true),
/// 			Interval:    pulumi.String("30m"),
/// 			Name:        pulumi.String("HTTP dash health check"),
/// 			Description: pulumi.String("Checks the dash endpoint every 30 minutes"),
/// 			TargetPolicies: cloudflare.ZeroTrustDexTestTargetPolicyArray{
/// 				&cloudflare.ZeroTrustDexTestTargetPolicyArgs{
/// 					Id:      pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 					Default: pulumi.Bool(true),
/// 					Name:    pulumi.String("name"),
/// 				},
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrustdextest" "example_zero_trust_dex_test" {
///   account_id = "01a7362d577a6c3019a474fd6f485823"
///   data = {
///     host   = "https://dash.cloudflare.com"
///     kind   = "http"
///     method = "GET"
///   }
///   enabled     = true
///   interval    = "30m"
///   name        = "HTTP dash health check"
///   description = "Checks the dash endpoint every 30 minutes"
///   target_policies {
///     id      = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///     default = true
///     name    = "name"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDexTest;
/// import com.pulumi.cloudflare.ZeroTrustDexTestArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDexTestDataArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDexTestTargetPolicyArgs;
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
///         var exampleZeroTrustDexTest = new ZeroTrustDexTest("exampleZeroTrustDexTest", ZeroTrustDexTestArgs.builder()
///             .accountId("01a7362d577a6c3019a474fd6f485823")
///             .data(ZeroTrustDexTestDataArgs.builder()
///                 .host("https://dash.cloudflare.com")
///                 .kind("http")
///                 .method("GET")
///                 .build())
///             .enabled(true)
///             .interval("30m")
///             .name("HTTP dash health check")
///             .description("Checks the dash endpoint every 30 minutes")
///             .targetPolicies(ZeroTrustDexTestTargetPolicyArgs.builder()
///                 .id("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///                 .default_(true)
///                 .name("name")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDexTest:
///     type: cloudflare:ZeroTrustDexTest
///     name: example_zero_trust_dex_test
///     properties:
///       accountId: 01a7362d577a6c3019a474fd6f485823
///       data:
///         host: https://dash.cloudflare.com
///         kind: http
///         method: GET
///       enabled: true
///       interval: 30m
///       name: HTTP dash health check
///       description: Checks the dash endpoint every 30 minutes
///       targetPolicies:
///         - id: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///           default: true
///           name: name
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDexTest:ZeroTrustDexTest example '<account_id>/<dex_test_id>'
/// ```
class ZeroTrustDexTest extends pulumi.CustomResource {
  /// Unique identifier linked to an account.
  late final pulumi.Output<String> accountId;
  /// The configuration object which contains the details for the WARP client to conduct the test.
  late final pulumi.Output<ZeroTrustDexTestData> data;
  /// Additional details about the test.
  late final pulumi.Output<String?> description;
  /// Determines whether or not the test is active.
  late final pulumi.Output<bool> enabled;
  /// How often the test will run.
  late final pulumi.Output<String> interval;
  /// The name of the DEX test. Must be unique.
  late final pulumi.Output<String> name;
  /// DEX rules targeted by this test
  late final pulumi.Output<List<ZeroTrustDexTestTargetPolicy>> targetPolicies;
  late final pulumi.Output<bool> targeted;
  /// The unique identifier for the test.
  late final pulumi.Output<String> testId;

  /// Creates a new [ZeroTrustDexTest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDexTest]. {@macro pulumi_index_zero_trust_dex_test_zero_trust_dex_test_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDexTest(
    String name, {
    ZeroTrustDexTestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDexTest:ZeroTrustDexTest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    data = registerOutput<ZeroTrustDexTestData>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDexTestData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    interval = registerOutput<String>('interval');
    this.name = registerOutput<String>('name');
    targetPolicies = registerOutput<List<ZeroTrustDexTestTargetPolicy>>('targetPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDexTestTargetPolicy>(guardedValue, (value) => ZeroTrustDexTestTargetPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    targeted = registerOutput<bool>('targeted');
    testId = registerOutput<String>('testId');
  }

  /// Gets an existing [ZeroTrustDexTest] resource's state with the given [name] and [id].
  static ZeroTrustDexTest get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDexTestState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDexTest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDexTest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDexTest:ZeroTrustDexTest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    data = registerOutput<ZeroTrustDexTestData>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDexTestData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    interval = registerOutput<String>('interval');
    this.name = registerOutput<String>('name');
    targetPolicies = registerOutput<List<ZeroTrustDexTestTargetPolicy>>('targetPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDexTestTargetPolicy>(guardedValue, (value) => ZeroTrustDexTestTargetPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    targeted = registerOutput<bool>('targeted');
    testId = registerOutput<String>('testId');
  }

  /// Creates a typed reference to an existing [ZeroTrustDexTest] resource.
  ZeroTrustDexTest.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDexTest:ZeroTrustDexTest',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    data = registerOutput<ZeroTrustDexTestData>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDexTestData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    interval = registerOutput<String>('interval');
    this.name = registerOutput<String>('name');
    targetPolicies = registerOutput<List<ZeroTrustDexTestTargetPolicy>>('targetPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDexTestTargetPolicy>(guardedValue, (value) => ZeroTrustDexTestTargetPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    targeted = registerOutput<bool>('targeted');
    testId = registerOutput<String>('testId');
  }
}
