import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_default_profile_local_domain_fallback_args.dart';
import 'zero_trust_device_default_profile_local_domain_fallback_domain.dart';
import 'zero_trust_device_default_profile_local_domain_fallback_state.dart';

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
/// const exampleZeroTrustDeviceDefaultProfileLocalDomainFallback = new cloudflare.ZeroTrustDeviceDefaultProfileLocalDomainFallback("example_zero_trust_device_default_profile_local_domain_fallback", {
///     accountId: "699d98642c564d2e855e9661899b7252",
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
/// example_zero_trust_device_default_profile_local_domain_fallback = cloudflare.ZeroTrustDeviceDefaultProfileLocalDomainFallback("example_zero_trust_device_default_profile_local_domain_fallback",
///     account_id="699d98642c564d2e855e9661899b7252",
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
///     var exampleZeroTrustDeviceDefaultProfileLocalDomainFallback = new Cloudflare.ZeroTrustDeviceDefaultProfileLocalDomainFallback("example_zero_trust_device_default_profile_local_domain_fallback", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Domains = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomainArgs
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
/// 		_, err := cloudflare.NewZeroTrustDeviceDefaultProfileLocalDomainFallback(ctx, "example_zero_trust_device_default_profile_local_domain_fallback", &cloudflare.ZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs{
/// 			AccountId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Domains: cloudflare.ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomainArray{
/// 				&cloudflare.ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomainArgs{
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
/// resource "cloudflare_zerotrustdevicedefaultprofilelocaldomainfallback" "example_zero_trust_device_default_profile_local_domain_fallback" {
///   account_id = "699d98642c564d2e855e9661899b7252"
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
/// import com.pulumi.cloudflare.ZeroTrustDeviceDefaultProfileLocalDomainFallback;
/// import com.pulumi.cloudflare.ZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomainArgs;
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
///         var exampleZeroTrustDeviceDefaultProfileLocalDomainFallback = new ZeroTrustDeviceDefaultProfileLocalDomainFallback("exampleZeroTrustDeviceDefaultProfileLocalDomainFallback", ZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .domains(ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomainArgs.builder()
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
///   exampleZeroTrustDeviceDefaultProfileLocalDomainFallback:
///     type: cloudflare:ZeroTrustDeviceDefaultProfileLocalDomainFallback
///     name: example_zero_trust_device_default_profile_local_domain_fallback
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
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
/// $ pulumi import cloudflare:index/zeroTrustDeviceDefaultProfileLocalDomainFallback:ZeroTrustDeviceDefaultProfileLocalDomainFallback example '<account_id>'
/// ```
class ZeroTrustDeviceDefaultProfileLocalDomainFallback extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<List<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>> domains;

  /// Creates a new [ZeroTrustDeviceDefaultProfileLocalDomainFallback].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDeviceDefaultProfileLocalDomainFallback]. {@macro pulumi_index_zero_trust_device_default_profile_local_domain_fallback_zero_trust_device_default_profile_local_domain_fallback_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDeviceDefaultProfileLocalDomainFallback(
    String name, {
    ZeroTrustDeviceDefaultProfileLocalDomainFallbackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceDefaultProfileLocalDomainFallback:ZeroTrustDeviceDefaultProfileLocalDomainFallback',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    domains = registerOutput<List<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ZeroTrustDeviceDefaultProfileLocalDomainFallback] resource's state with the given [name] and [id].
  static ZeroTrustDeviceDefaultProfileLocalDomainFallback get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDeviceDefaultProfileLocalDomainFallbackState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDeviceDefaultProfileLocalDomainFallback._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDeviceDefaultProfileLocalDomainFallback._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDeviceDefaultProfileLocalDomainFallback:ZeroTrustDeviceDefaultProfileLocalDomainFallback',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    domains = registerOutput<List<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ZeroTrustDeviceDefaultProfileLocalDomainFallback] resource.
  ZeroTrustDeviceDefaultProfileLocalDomainFallback.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDeviceDefaultProfileLocalDomainFallback:ZeroTrustDeviceDefaultProfileLocalDomainFallback',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    domains = registerOutput<List<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain>(guardedValue, (value) => ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomain.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
