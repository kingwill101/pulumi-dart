import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_custom_profile_local_domain_fallback_args.dart';
import 'zero_trust_device_custom_profile_local_domain_fallback_domain.dart';
import 'zero_trust_device_custom_profile_local_domain_fallback_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDeviceCustomProfileLocalDomainFallback = new cloudflare.ZeroTrustDeviceCustomProfileLocalDomainFallback("example_zero_trust_device_custom_profile_local_domain_fallback", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     policyId: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     domains: [{
///         suffix: "example.com",
///         description: "Domain bypass for local development",
///         dnsServer: ["1.1.1.1"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_custom_profile_local_domain_fallback = cloudflare.ZeroTrustDeviceCustomProfileLocalDomainFallback("example_zero_trust_device_custom_profile_local_domain_fallback",
///     account_id="699d98642c564d2e855e9661899b7252",
///     policy_id="f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     domains=[{
///         "suffix": "example.com",
///         "description": "Domain bypass for local development",
///         "dns_server": ["1.1.1.1"],
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
///     var exampleZeroTrustDeviceCustomProfileLocalDomainFallback = new Cloudflare.ZeroTrustDeviceCustomProfileLocalDomainFallback("example_zero_trust_device_custom_profile_local_domain_fallback", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         PolicyId = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///         Domains = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDeviceCustomProfileLocalDomainFallbackDomainArgs
///             {
///                 Suffix = "example.com",
///                 Description = "Domain bypass for local development",
///                 DnsServer = new[]
///                 {
///                     "1.1.1.1",
///                 },
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
/// 		_, err := cloudflare.NewZeroTrustDeviceCustomProfileLocalDomainFallback(ctx, "example_zero_trust_device_custom_profile_local_domain_fallback", &cloudflare.ZeroTrustDeviceCustomProfileLocalDomainFallbackArgs{
/// 			AccountId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			PolicyId:  pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 			Domains: cloudflare.ZeroTrustDeviceCustomProfileLocalDomainFallbackDomainArray{
/// 				&cloudflare.ZeroTrustDeviceCustomProfileLocalDomainFallbackDomainArgs{
/// 					Suffix:      pulumi.String("example.com"),
/// 					Description: pulumi.String("Domain bypass for local development"),
/// 					DnsServer: []string{
/// 						"1.1.1.1",
/// 					},
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
/// resource "cloudflare_zerotrustdevicecustomprofilelocaldomainfallback" "example_zero_trust_device_custom_profile_local_domain_fallback" {
///   account_id = "699d98642c564d2e855e9661899b7252"
///   policy_id  = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///   domains {
///     suffix      = "example.com"
///     description = "Domain bypass for local development"
///     dns_server  = ["1.1.1.1"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDeviceCustomProfileLocalDomainFallback;
/// import com.pulumi.cloudflare.ZeroTrustDeviceCustomProfileLocalDomainFallbackArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceCustomProfileLocalDomainFallbackDomainArgs;
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
///         var exampleZeroTrustDeviceCustomProfileLocalDomainFallback = new ZeroTrustDeviceCustomProfileLocalDomainFallback("exampleZeroTrustDeviceCustomProfileLocalDomainFallback", ZeroTrustDeviceCustomProfileLocalDomainFallbackArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .policyId("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///             .domains(ZeroTrustDeviceCustomProfileLocalDomainFallbackDomainArgs.builder()
///                 .suffix("example.com")
///                 .description("Domain bypass for local development")
///                 .dnsServer(Arrays.asList("1.1.1.1"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDeviceCustomProfileLocalDomainFallback:
///     type: cloudflare:ZeroTrustDeviceCustomProfileLocalDomainFallback
///     name: example_zero_trust_device_custom_profile_local_domain_fallback
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       policyId: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///       domains:
///         - suffix: example.com
///           description: Domain bypass for local development
///           dnsServer:
///             - 1.1.1.1
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDeviceCustomProfileLocalDomainFallback:ZeroTrustDeviceCustomProfileLocalDomainFallback example '<account_id>/<policy_id>'
/// ```
class ZeroTrustDeviceCustomProfileLocalDomainFallback extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<List<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>> domains;
  late final pulumi.Output<String> policyId;

  /// Creates a new [ZeroTrustDeviceCustomProfileLocalDomainFallback].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDeviceCustomProfileLocalDomainFallback]. {@macro pulumi_index_zero_trust_device_custom_profile_local_domain_fallback_zero_trust_device_custom_profile_local_domain_fallback_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDeviceCustomProfileLocalDomainFallback(
    String name, {
    ZeroTrustDeviceCustomProfileLocalDomainFallbackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceCustomProfileLocalDomainFallback:ZeroTrustDeviceCustomProfileLocalDomainFallback',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    domains = registerOutput<List<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
    policyId = registerOutput<String>('policyId');
  }

  /// Gets an existing [ZeroTrustDeviceCustomProfileLocalDomainFallback] resource's state with the given [name] and [id].
  static ZeroTrustDeviceCustomProfileLocalDomainFallback get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDeviceCustomProfileLocalDomainFallbackState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDeviceCustomProfileLocalDomainFallback._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDeviceCustomProfileLocalDomainFallback._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceCustomProfileLocalDomainFallback:ZeroTrustDeviceCustomProfileLocalDomainFallback',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    domains = registerOutput<List<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
    policyId = registerOutput<String>('policyId');
  }

  /// Creates a typed reference to an existing [ZeroTrustDeviceCustomProfileLocalDomainFallback] resource.
  ZeroTrustDeviceCustomProfileLocalDomainFallback.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDeviceCustomProfileLocalDomainFallback:ZeroTrustDeviceCustomProfileLocalDomainFallback',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    domains = registerOutput<List<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceCustomProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
    policyId = registerOutput<String>('policyId');
  }
}
