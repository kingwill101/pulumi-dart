import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_managed_domain_args.dart';
import 'r2_managed_domain_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleR2ManagedDomain = new cloudflare.R2ManagedDomain("example_r2_managed_domain", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bucketName: "example-bucket",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_r2_managed_domain = cloudflare.R2ManagedDomain("example_r2_managed_domain",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bucket_name="example-bucket",
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleR2ManagedDomain = new Cloudflare.R2ManagedDomain("example_r2_managed_domain", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         BucketName = "example-bucket",
///         Enabled = true,
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
/// 		_, err := cloudflare.NewR2ManagedDomain(ctx, "example_r2_managed_domain", &cloudflare.R2ManagedDomainArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			BucketName: pulumi.String("example-bucket"),
/// 			Enabled:    pulumi.Bool(true),
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
/// resource "cloudflare_r2manageddomain" "example_r2_managed_domain" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   bucket_name = "example-bucket"
///   enabled     = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.R2ManagedDomain;
/// import com.pulumi.cloudflare.R2ManagedDomainArgs;
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
///         var exampleR2ManagedDomain = new R2ManagedDomain("exampleR2ManagedDomain", R2ManagedDomainArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bucketName("example-bucket")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleR2ManagedDomain:
///     type: cloudflare:R2ManagedDomain
///     name: example_r2_managed_domain
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       bucketName: example-bucket
///       enabled: true
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class R2ManagedDomain extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;
  /// Bucket ID.
  late final pulumi.Output<String> bucketId;
  /// Name of the bucket.
  late final pulumi.Output<String> bucketName;
  /// Domain name of the bucket's r2.dev domain.
  late final pulumi.Output<String> domain;
  /// Whether to enable public bucket access at the r2.dev domain.
  late final pulumi.Output<bool> enabled;
  /// Jurisdiction of the bucket
  late final pulumi.Output<String> jurisdiction;

  /// Creates a new [R2ManagedDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [R2ManagedDomain]. {@macro pulumi_index_r2_managed_domain_r2_managed_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  R2ManagedDomain(
    String name, {
    R2ManagedDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2ManagedDomain:R2ManagedDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketId = registerOutput<String>('bucketId');
    bucketName = registerOutput<String>('bucketName');
    domain = registerOutput<String>('domain');
    enabled = registerOutput<bool>('enabled');
    jurisdiction = registerOutput<String>('jurisdiction');
  }

  /// Gets an existing [R2ManagedDomain] resource's state with the given [name] and [id].
  static R2ManagedDomain get(
    String name,
    pulumi.Input<String> id, {
    R2ManagedDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return R2ManagedDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  R2ManagedDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2ManagedDomain:R2ManagedDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketId = registerOutput<String>('bucketId');
    bucketName = registerOutput<String>('bucketName');
    domain = registerOutput<String>('domain');
    enabled = registerOutput<bool>('enabled');
    jurisdiction = registerOutput<String>('jurisdiction');
  }

  /// Creates a typed reference to an existing [R2ManagedDomain] resource.
  R2ManagedDomain.reference(String urn)
    : super(
        'cloudflare:index/r2ManagedDomain:R2ManagedDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bucketId = registerOutput<String>('bucketId');
    bucketName = registerOutput<String>('bucketName');
    domain = registerOutput<String>('domain');
    enabled = registerOutput<bool>('enabled');
    jurisdiction = registerOutput<String>('jurisdiction');
  }
}
