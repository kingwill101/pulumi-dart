import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_basic_auth_credential_args.dart';
import 'zero_trust_cws_basic_auth_credential_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsBasicAuthCredential = new cloudflare.ZeroTrustCwsBasicAuthCredential("example_zero_trust_cws_basic_auth_credential", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     username: "x",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_basic_auth_credential = cloudflare.ZeroTrustCwsBasicAuthCredential("example_zero_trust_cws_basic_auth_credential",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     username="x")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCwsBasicAuthCredential = new Cloudflare.ZeroTrustCwsBasicAuthCredential("example_zero_trust_cws_basic_auth_credential", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         Username = "x",
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
/// 		_, err := cloudflare.NewZeroTrustCwsBasicAuthCredential(ctx, "example_zero_trust_cws_basic_auth_credential", &cloudflare.ZeroTrustCwsBasicAuthCredentialArgs{
/// 			AccountId: pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			Username:  pulumi.String("x"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zero_trust_cws_basic_auth_credential" "example_zero_trust_cws_basic_auth_credential" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   username   = "x"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCwsBasicAuthCredential;
/// import com.pulumi.cloudflare.ZeroTrustCwsBasicAuthCredentialArgs;
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
///         var exampleZeroTrustCwsBasicAuthCredential = new ZeroTrustCwsBasicAuthCredential("exampleZeroTrustCwsBasicAuthCredential", ZeroTrustCwsBasicAuthCredentialArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .username("x")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsBasicAuthCredential:
///     type: cloudflare:ZeroTrustCwsBasicAuthCredential
///     name: example_zero_trust_cws_basic_auth_credential
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       username: x
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsBasicAuthCredential:ZeroTrustCwsBasicAuthCredential example '<account_id>/<credential_id>'
/// ```
class ZeroTrustCwsBasicAuthCredential extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> updatedAt;
  /// Login presented by the client. Printable ASCII only, excluding space and colon.
  late final pulumi.Output<String> username;

  /// Creates a new [ZeroTrustCwsBasicAuthCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsBasicAuthCredential]. {@macro pulumi_index_zero_trust_cws_basic_auth_credential_zero_trust_cws_basic_auth_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsBasicAuthCredential(
    String name, {
    ZeroTrustCwsBasicAuthCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsBasicAuthCredential:ZeroTrustCwsBasicAuthCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    updatedAt = registerOutput<String>('updatedAt');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [ZeroTrustCwsBasicAuthCredential] resource's state with the given [name] and [id].
  static ZeroTrustCwsBasicAuthCredential get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsBasicAuthCredentialState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsBasicAuthCredential._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsBasicAuthCredential._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsBasicAuthCredential:ZeroTrustCwsBasicAuthCredential',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    updatedAt = registerOutput<String>('updatedAt');
    username = registerOutput<String>('username');
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsBasicAuthCredential] resource.
  ZeroTrustCwsBasicAuthCredential.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsBasicAuthCredential:ZeroTrustCwsBasicAuthCredential',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    updatedAt = registerOutput<String>('updatedAt');
    username = registerOutput<String>('username');
  }
}
