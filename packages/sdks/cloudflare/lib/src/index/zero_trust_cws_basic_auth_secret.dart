import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_basic_auth_secret_args.dart';
import 'zero_trust_cws_basic_auth_secret_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustCwsBasicAuthSecret = new cloudflare.ZeroTrustCwsBasicAuthSecret("example_zero_trust_cws_basic_auth_secret", {
///     accountId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     credentialId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     password: "x",
///     expiresAt: "2019-12-27T18:11:19.117Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_cws_basic_auth_secret = cloudflare.ZeroTrustCwsBasicAuthSecret("example_zero_trust_cws_basic_auth_secret",
///     account_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///     credential_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     password="x",
///     expires_at="2019-12-27T18:11:19.117Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustCwsBasicAuthSecret = new Cloudflare.ZeroTrustCwsBasicAuthSecret("example_zero_trust_cws_basic_auth_secret", new()
///     {
///         AccountId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         CredentialId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         Password = "x",
///         ExpiresAt = "2019-12-27T18:11:19.117Z",
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
/// 		_, err := cloudflare.NewZeroTrustCwsBasicAuthSecret(ctx, "example_zero_trust_cws_basic_auth_secret", &cloudflare.ZeroTrustCwsBasicAuthSecretArgs{
/// 			AccountId:    pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 			CredentialId: pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			Password:     pulumi.String("x"),
/// 			ExpiresAt:    pulumi.String("2019-12-27T18:11:19.117Z"),
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
/// resource "cloudflare_zero_trust_cws_basic_auth_secret" "example_zero_trust_cws_basic_auth_secret" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id    = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///   credential_id = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   password      = "x"
///   expires_at    = "2019-12-27T18:11:19.117Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCwsBasicAuthSecret;
/// import com.pulumi.cloudflare.ZeroTrustCwsBasicAuthSecretArgs;
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
///         var exampleZeroTrustCwsBasicAuthSecret = new ZeroTrustCwsBasicAuthSecret("exampleZeroTrustCwsBasicAuthSecret", ZeroTrustCwsBasicAuthSecretArgs.builder()
///             .accountId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .credentialId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .password("x")
///             .expiresAt("2019-12-27T18:11:19.117Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustCwsBasicAuthSecret:
///     type: cloudflare:ZeroTrustCwsBasicAuthSecret
///     name: example_zero_trust_cws_basic_auth_secret
///     properties:
///       accountId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///       credentialId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       password: x
///       expiresAt: 2019-12-27T18:11:19.117Z
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCwsBasicAuthSecret:ZeroTrustCwsBasicAuthSecret example '<account_id>/<credential_id>/<secret_id>'
/// ```
class ZeroTrustCwsBasicAuthSecret extends pulumi.CustomResource {
  /// Cloudflare account ID (32-character hexadecimal string)
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// ID of the parent credential
  late final pulumi.Output<String> credentialId;
  /// Optional deactivation deadline (RFC 3339). Omit or null for no expiry.
  late final pulumi.Output<String?> expiresAt;
  /// Password stored only as a one-way hash and never returned. Maximum 72 UTF-8 bytes.
  late final pulumi.Output<String?> password;

  /// Creates a new [ZeroTrustCwsBasicAuthSecret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCwsBasicAuthSecret]. {@macro pulumi_index_zero_trust_cws_basic_auth_secret_zero_trust_cws_basic_auth_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCwsBasicAuthSecret(
    String name, {
    ZeroTrustCwsBasicAuthSecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsBasicAuthSecret:ZeroTrustCwsBasicAuthSecret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
          additionalSecretOutputs: const ['password'],
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    credentialId = registerOutput<String>('credentialId');
    expiresAt = registerOutput<String?>('expiresAt');
    password = registerOutput<String?>('password', isSecret: true);
  }

  /// Gets an existing [ZeroTrustCwsBasicAuthSecret] resource's state with the given [name] and [id].
  static ZeroTrustCwsBasicAuthSecret get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCwsBasicAuthSecretState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCwsBasicAuthSecret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCwsBasicAuthSecret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCwsBasicAuthSecret:ZeroTrustCwsBasicAuthSecret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    credentialId = registerOutput<String>('credentialId');
    expiresAt = registerOutput<String?>('expiresAt');
    password = registerOutput<String?>('password', isSecret: true);
  }

  /// Creates a typed reference to an existing [ZeroTrustCwsBasicAuthSecret] resource.
  ZeroTrustCwsBasicAuthSecret.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCwsBasicAuthSecret:ZeroTrustCwsBasicAuthSecret',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    credentialId = registerOutput<String>('credentialId');
    expiresAt = registerOutput<String?>('expiresAt');
    password = registerOutput<String?>('password', isSecret: true);
  }
}
