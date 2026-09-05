import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_custom_domain_args.dart';
import 'r2_custom_domain_state.dart';
import 'r2_custom_domain_status.dart';

/// Accepted Permissions
///
/// - `Workers R2 Storage Read`
/// - `Workers R2 Storage Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleR2CustomDomain = new cloudflare.R2CustomDomain("example_r2_custom_domain", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bucketName: "example-bucket",
///     domain: "prefix.example-domain.com",
///     enabled: true,
///     zoneId: "36ca64a6d92827b8a6b90be344bb1bfd",
///     ciphers: ["string"],
///     minTls: "1.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_r2_custom_domain = cloudflare.R2CustomDomain("example_r2_custom_domain",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bucket_name="example-bucket",
///     domain="prefix.example-domain.com",
///     enabled=True,
///     zone_id="36ca64a6d92827b8a6b90be344bb1bfd",
///     ciphers=["string"],
///     min_tls="1.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleR2CustomDomain = new Cloudflare.R2CustomDomain("example_r2_custom_domain", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         BucketName = "example-bucket",
///         Domain = "prefix.example-domain.com",
///         Enabled = true,
///         ZoneId = "36ca64a6d92827b8a6b90be344bb1bfd",
///         Ciphers = new[]
///         {
///             "string",
///         },
///         MinTls = "1.0",
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
/// 		_, err := cloudflare.NewR2CustomDomain(ctx, "example_r2_custom_domain", &cloudflare.R2CustomDomainArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			BucketName: pulumi.String("example-bucket"),
/// 			Domain:     pulumi.String("prefix.example-domain.com"),
/// 			Enabled:    pulumi.Bool(true),
/// 			ZoneId:     pulumi.String("36ca64a6d92827b8a6b90be344bb1bfd"),
/// 			Ciphers: pulumi.StringArray{
/// 				pulumi.String("string"),
/// 			},
/// 			MinTls: pulumi.String("1.0"),
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
/// resource "cloudflare_r2customdomain" "example_r2_custom_domain" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   bucket_name = "example-bucket"
///   domain      = "prefix.example-domain.com"
///   enabled     = true
///   zone_id     = "36ca64a6d92827b8a6b90be344bb1bfd"
///   ciphers     = ["string"]
///   min_tls     = "1.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.R2CustomDomain;
/// import com.pulumi.cloudflare.R2CustomDomainArgs;
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
///         var exampleR2CustomDomain = new R2CustomDomain("exampleR2CustomDomain", R2CustomDomainArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bucketName("example-bucket")
///             .domain("prefix.example-domain.com")
///             .enabled(true)
///             .zoneId("36ca64a6d92827b8a6b90be344bb1bfd")
///             .ciphers("string")
///             .minTls("1.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleR2CustomDomain:
///     type: cloudflare:R2CustomDomain
///     name: example_r2_custom_domain
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       bucketName: example-bucket
///       domain: prefix.example-domain.com
///       enabled: true
///       zoneId: 36ca64a6d92827b8a6b90be344bb1bfd
///       ciphers:
///         - string
///       minTls: '1.0'
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class R2CustomDomain extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;
  /// Name of the bucket.
  late final pulumi.Output<String> bucketName;
  /// An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
  late final pulumi.Output<List<String>?> ciphers;
  /// Name of the custom domain to be added.
  late final pulumi.Output<String> domain;
  /// Whether to enable public bucket access at the custom domain. If undefined, the domain will be enabled.
  late final pulumi.Output<bool> enabled;
  /// Jurisdiction of the bucket
  late final pulumi.Output<String> jurisdiction;
  /// Minimum TLS Version the custom domain will accept for incoming connections. If not set, defaults to 1.0.
  /// Available values: "1.0", "1.1", "1.2", "1.3".
  late final pulumi.Output<String?> minTls;
  late final pulumi.Output<R2CustomDomainStatus> status;
  /// Zone ID of the custom domain.
  late final pulumi.Output<String> zoneId;
  /// Zone that the custom domain resides in.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [R2CustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [R2CustomDomain]. {@macro pulumi_index_r2_custom_domain_r2_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  R2CustomDomain(
    String name, {
    R2CustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2CustomDomain:R2CustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    ciphers = registerOutput<List<String>?>('ciphers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domain = registerOutput<String>('domain');
    enabled = registerOutput<bool>('enabled');
    jurisdiction = registerOutput<String>('jurisdiction');
    minTls = registerOutput<String?>('minTls');
    status = registerOutput<R2CustomDomainStatus>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2CustomDomainStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [R2CustomDomain] resource's state with the given [name] and [id].
  static R2CustomDomain get(
    String name,
    pulumi.Input<String> id, {
    R2CustomDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return R2CustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  R2CustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2CustomDomain:R2CustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    ciphers = registerOutput<List<String>?>('ciphers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domain = registerOutput<String>('domain');
    enabled = registerOutput<bool>('enabled');
    jurisdiction = registerOutput<String>('jurisdiction');
    minTls = registerOutput<String?>('minTls');
    status = registerOutput<R2CustomDomainStatus>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2CustomDomainStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Creates a typed reference to an existing [R2CustomDomain] resource.
  R2CustomDomain.reference(String urn)
    : super(
        'cloudflare:index/r2CustomDomain:R2CustomDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    ciphers = registerOutput<List<String>?>('ciphers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domain = registerOutput<String>('domain');
    enabled = registerOutput<bool>('enabled');
    jurisdiction = registerOutput<String>('jurisdiction');
    minTls = registerOutput<String?>('minTls');
    status = registerOutput<R2CustomDomainStatus>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2CustomDomainStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
    zoneName = registerOutput<String>('zoneName');
  }
}
