import 'package:pulumi/pulumi.dart' as pulumi;
import 'token_validation_config_args.dart';
import 'token_validation_config_credentials.dart';
import 'token_validation_config_state.dart';

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
/// const exampleTokenValidationConfig = new cloudflare.TokenValidationConfig("example_token_validation_config", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     credentials: {
///         keys: [{
///             alg: "RS256",
///             e: "e",
///             kid: "kid",
///             kty: "RSA",
///             n: "n",
///         }],
///     },
///     description: "Long description for Token Validation Configuration",
///     title: "Example Token Validation Configuration",
///     tokenSources: [
///         "http.request.headers[\"x-auth\"][0]",
///         "http.request.cookies[\"Authorization\"][0]",
///     ],
///     tokenType: "JWT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_token_validation_config = cloudflare.TokenValidationConfig("example_token_validation_config",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     credentials={
///         "keys": [{
///             "alg": "RS256",
///             "e": "e",
///             "kid": "kid",
///             "kty": "RSA",
///             "n": "n",
///         }],
///     },
///     description="Long description for Token Validation Configuration",
///     title="Example Token Validation Configuration",
///     token_sources=[
///         "http.request.headers[\"x-auth\"][0]",
///         "http.request.cookies[\"Authorization\"][0]",
///     ],
///     token_type="JWT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleTokenValidationConfig = new Cloudflare.TokenValidationConfig("example_token_validation_config", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Credentials = new Cloudflare.Inputs.TokenValidationConfigCredentialsArgs
///         {
///             Keys = new[]
///             {
///                 new Cloudflare.Inputs.TokenValidationConfigCredentialsKeyArgs
///                 {
///                     Alg = "RS256",
///                     E = "e",
///                     Kid = "kid",
///                     Kty = "RSA",
///                     N = "n",
///                 },
///             },
///         },
///         Description = "Long description for Token Validation Configuration",
///         Title = "Example Token Validation Configuration",
///         TokenSources = new[]
///         {
///             "http.request.headers[\"x-auth\"][0]",
///             "http.request.cookies[\"Authorization\"][0]",
///         },
///         TokenType = "JWT",
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
/// 		_, err := cloudflare.NewTokenValidationConfig(ctx, "example_token_validation_config", &cloudflare.TokenValidationConfigArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Credentials: &cloudflare.TokenValidationConfigCredentialsArgs{
/// 				Keys: cloudflare.TokenValidationConfigCredentialsKeyArray{
/// 					&cloudflare.TokenValidationConfigCredentialsKeyArgs{
/// 						Alg: pulumi.String("RS256"),
/// 						E:   pulumi.String("e"),
/// 						Kid: pulumi.String("kid"),
/// 						Kty: pulumi.String("RSA"),
/// 						N:   pulumi.String("n"),
/// 					},
/// 				},
/// 			},
/// 			Description: pulumi.String("Long description for Token Validation Configuration"),
/// 			Title:       pulumi.String("Example Token Validation Configuration"),
/// 			TokenSources: pulumi.StringArray{
/// 				pulumi.String("http.request.headers[\"x-auth\"][0]"),
/// 				pulumi.String("http.request.cookies[\"Authorization\"][0]"),
/// 			},
/// 			TokenType: pulumi.String("JWT"),
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
/// resource "cloudflare_tokenvalidationconfig" "example_token_validation_config" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   credentials = {
///     keys = [{
///       "alg" = "RS256"
///       "e"   = "e"
///       "kid" = "kid"
///       "kty" = "RSA"
///       "n"   = "n"
///     }]
///   }
///   description   = "Long description for Token Validation Configuration"
///   title         = "Example Token Validation Configuration"
///   token_sources = ["http.request.headers[\"x-auth\"][0]", "http.request.cookies[\"Authorization\"][0]"]
///   token_type    = "JWT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.TokenValidationConfig;
/// import com.pulumi.cloudflare.TokenValidationConfigArgs;
/// import com.pulumi.cloudflare.inputs.TokenValidationConfigCredentialsArgs;
/// import com.pulumi.cloudflare.inputs.TokenValidationConfigCredentialsKeyArgs;
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
///         var exampleTokenValidationConfig = new TokenValidationConfig("exampleTokenValidationConfig", TokenValidationConfigArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .credentials(TokenValidationConfigCredentialsArgs.builder()
///                 .keys(TokenValidationConfigCredentialsKeyArgs.builder()
///                     .alg("RS256")
///                     .e("e")
///                     .kid("kid")
///                     .kty("RSA")
///                     .n("n")
///                     .build())
///                 .build())
///             .description("Long description for Token Validation Configuration")
///             .title("Example Token Validation Configuration")
///             .tokenSources(
///                 "http.request.headers[\"x-auth\"][0]",
///                 "http.request.cookies[\"Authorization\"][0]")
///             .tokenType("JWT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTokenValidationConfig:
///     type: cloudflare:TokenValidationConfig
///     name: example_token_validation_config
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       credentials:
///         keys:
///           - alg: RS256
///             e: e
///             kid: kid
///             kty: RSA
///             n: n
///       description: Long description for Token Validation Configuration
///       title: Example Token Validation Configuration
///       tokenSources:
///         - http.request.headers["x-auth"][0]
///         - http.request.cookies["Authorization"][0]
///       tokenType: JWT
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/tokenValidationConfig:TokenValidationConfig example '<zone_id>/<config_id>'
/// ```
class TokenValidationConfig extends pulumi.CustomResource {
  late final pulumi.Output<String> createdAt;
  /// Request payload for create and PUT credentials operations. Provided keys define the complete stored key set. Key identities (`{alg,kid}`) must be unique.
  late final pulumi.Output<TokenValidationConfigCredentials> credentials;
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> lastUpdated;
  late final pulumi.Output<String> title;
  late final pulumi.Output<List<String>> tokenSources;
  /// Available values: "JWT".
  late final pulumi.Output<String> tokenType;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [TokenValidationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TokenValidationConfig]. {@macro pulumi_index_token_validation_config_token_validation_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TokenValidationConfig(
    String name, {
    TokenValidationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/tokenValidationConfig:TokenValidationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    credentials = registerOutput<TokenValidationConfigCredentials>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TokenValidationConfigCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    lastUpdated = registerOutput<String>('lastUpdated');
    title = registerOutput<String>('title');
    tokenSources = registerOutput<List<String>>('tokenSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tokenType = registerOutput<String>('tokenType');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [TokenValidationConfig] resource's state with the given [name] and [id].
  static TokenValidationConfig get(
    String name,
    pulumi.Input<String> id, {
    TokenValidationConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TokenValidationConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TokenValidationConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/tokenValidationConfig:TokenValidationConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    credentials = registerOutput<TokenValidationConfigCredentials>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TokenValidationConfigCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    lastUpdated = registerOutput<String>('lastUpdated');
    title = registerOutput<String>('title');
    tokenSources = registerOutput<List<String>>('tokenSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tokenType = registerOutput<String>('tokenType');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [TokenValidationConfig] resource.
  TokenValidationConfig.reference(String urn)
    : super(
        'cloudflare:index/tokenValidationConfig:TokenValidationConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    credentials = registerOutput<TokenValidationConfigCredentials>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TokenValidationConfigCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String>('description');
    lastUpdated = registerOutput<String>('lastUpdated');
    title = registerOutput<String>('title');
    tokenSources = registerOutput<List<String>>('tokenSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tokenType = registerOutput<String>('tokenType');
    zoneId = registerOutput<String>('zoneId');
  }
}
