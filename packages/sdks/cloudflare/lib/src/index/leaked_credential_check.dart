import 'package:pulumi/pulumi.dart' as pulumi;
import 'leaked_credential_check_args.dart';
import 'leaked_credential_check_state.dart';

/// Accepted Permissions
///
/// - `Account WAF Read`
/// - `Account WAF Write`
/// - `Zone WAF Read`
/// - `Zone WAF Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLeakedCredentialCheck = new cloudflare.LeakedCredentialCheck("example_leaked_credential_check", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_leaked_credential_check = cloudflare.LeakedCredentialCheck("example_leaked_credential_check",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
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
///     var exampleLeakedCredentialCheck = new Cloudflare.LeakedCredentialCheck("example_leaked_credential_check", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
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
/// 		_, err := cloudflare.NewLeakedCredentialCheck(ctx, "example_leaked_credential_check", &cloudflare.LeakedCredentialCheckArgs{
/// 			ZoneId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Enabled: pulumi.Bool(true),
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
/// resource "cloudflare_leakedcredentialcheck" "example_leaked_credential_check" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LeakedCredentialCheck;
/// import com.pulumi.cloudflare.LeakedCredentialCheckArgs;
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
///         var exampleLeakedCredentialCheck = new LeakedCredentialCheck("exampleLeakedCredentialCheck", LeakedCredentialCheckArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLeakedCredentialCheck:
///     type: cloudflare:LeakedCredentialCheck
///     name: example_leaked_credential_check
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       enabled: true
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class LeakedCredentialCheck extends pulumi.CustomResource {
  /// Determines whether or not Leaked Credential Checks are enabled.
  late final pulumi.Output<bool?> enabled;
  /// Defines an identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [LeakedCredentialCheck].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LeakedCredentialCheck]. {@macro pulumi_index_leaked_credential_check_leaked_credential_check_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LeakedCredentialCheck(
    String name, {
    LeakedCredentialCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/leakedCredentialCheck:LeakedCredentialCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    enabled = registerOutput<bool?>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [LeakedCredentialCheck] resource's state with the given [name] and [id].
  static LeakedCredentialCheck get(
    String name,
    pulumi.Input<String> id, {
    LeakedCredentialCheckState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LeakedCredentialCheck._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LeakedCredentialCheck._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/leakedCredentialCheck:LeakedCredentialCheck',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool?>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [LeakedCredentialCheck] resource.
  LeakedCredentialCheck.reference(String urn)
    : super(
        'cloudflare:index/leakedCredentialCheck:LeakedCredentialCheck',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enabled = registerOutput<bool?>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }
}
