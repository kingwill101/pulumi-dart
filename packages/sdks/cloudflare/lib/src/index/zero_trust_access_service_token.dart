import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_service_token_args.dart';
import 'zero_trust_access_service_token_state.dart';

/// Accepted Permissions
///
/// - `Access: Service Tokens Read`
/// - `Access: Service Tokens Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessServiceToken = new cloudflare.ZeroTrustAccessServiceToken("example_zero_trust_access_service_token", {
///     name: "CI/CD token",
///     zoneId: "zone_id",
///     clientSecretVersion: 0,
///     duration: "60m",
///     previousClientSecretExpiresAt: "2014-01-01T05:20:00.12345Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_service_token = cloudflare.ZeroTrustAccessServiceToken("example_zero_trust_access_service_token",
///     name="CI/CD token",
///     zone_id="zone_id",
///     client_secret_version=float(0),
///     duration="60m",
///     previous_client_secret_expires_at="2014-01-01T05:20:00.12345Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessServiceToken = new Cloudflare.ZeroTrustAccessServiceToken("example_zero_trust_access_service_token", new()
///     {
///         Name = "CI/CD token",
///         ZoneId = "zone_id",
///         ClientSecretVersion = 0,
///         Duration = "60m",
///         PreviousClientSecretExpiresAt = "2014-01-01T05:20:00.12345Z",
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
/// 		_, err := cloudflare.NewZeroTrustAccessServiceToken(ctx, "example_zero_trust_access_service_token", &cloudflare.ZeroTrustAccessServiceTokenArgs{
/// 			Name:                          pulumi.String("CI/CD token"),
/// 			ZoneId:                        pulumi.String("zone_id"),
/// 			ClientSecretVersion:           pulumi.Float64(0),
/// 			Duration:                      pulumi.String("60m"),
/// 			PreviousClientSecretExpiresAt: pulumi.String("2014-01-01T05:20:00.12345Z"),
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
/// resource "cloudflare_zerotrustaccessservicetoken" "example_zero_trust_access_service_token" {
///   name                              = "CI/CD token"
///   zone_id                           = "zone_id"
///   client_secret_version             = 0
///   duration                          = "60m"
///   previous_client_secret_expires_at = "2014-01-01T05:20:00.12345Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessServiceToken;
/// import com.pulumi.cloudflare.ZeroTrustAccessServiceTokenArgs;
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
///         var exampleZeroTrustAccessServiceToken = new ZeroTrustAccessServiceToken("exampleZeroTrustAccessServiceToken", ZeroTrustAccessServiceTokenArgs.builder()
///             .name("CI/CD token")
///             .zoneId("zone_id")
///             .clientSecretVersion(0.0)
///             .duration("60m")
///             .previousClientSecretExpiresAt("2014-01-01T05:20:00.12345Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessServiceToken:
///     type: cloudflare:ZeroTrustAccessServiceToken
///     name: example_zero_trust_access_service_token
///     properties:
///       name: CI/CD token
///       zoneId: zone_id
///       clientSecretVersion: 0
///       duration: 60m
///       previousClientSecretExpiresAt: 2014-01-01T05:20:00.12345Z
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustAccessServiceToken:ZeroTrustAccessServiceToken example '<{accounts|zones}/{account_id|zone_id}>/<service_token_id>'
/// ```
class ZeroTrustAccessServiceToken extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  late final pulumi.Output<String> clientId;
  /// The Client Secret for the service token. Access will check for this value in the `CF-Access-Client-Secret` request header.
  late final pulumi.Output<String> clientSecret;
  /// A version number identifying the current `clientSecret` associated with the service token. Incrementing it triggers a rotation; the previous secret will still be accepted until the time indicated by `previousClientSecretExpiresAt`.
  late final pulumi.Output<double> clientSecretVersion;
  /// The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  late final pulumi.Output<String> duration;
  late final pulumi.Output<String> expiresAt;
  /// The name of the service token.
  late final pulumi.Output<String> name;
  /// The expiration of the previous `clientSecret`. This can be modified at any point after a rotation. For example, you may extend it further into the future if you need more time to update services with the new secret; or move it into the past to immediately invalidate the previous token in case of compromise.
  late final pulumi.Output<String?> previousClientSecretExpiresAt;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [ZeroTrustAccessServiceToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustAccessServiceToken]. {@macro pulumi_index_zero_trust_access_service_token_zero_trust_access_service_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustAccessServiceToken(
    String name, {
    ZeroTrustAccessServiceTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessServiceToken:ZeroTrustAccessServiceToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
          additionalSecretOutputs: const ['clientSecret'],
        ) {
    accountId = registerOutput<String?>('accountId');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    clientSecretVersion = registerOutput<double>('clientSecretVersion');
    duration = registerOutput<String>('duration');
    expiresAt = registerOutput<String>('expiresAt');
    this.name = registerOutput<String>('name');
    previousClientSecretExpiresAt = registerOutput<String?>('previousClientSecretExpiresAt');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [ZeroTrustAccessServiceToken] resource's state with the given [name] and [id].
  static ZeroTrustAccessServiceToken get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustAccessServiceTokenState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustAccessServiceToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustAccessServiceToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessServiceToken:ZeroTrustAccessServiceToken',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    clientSecretVersion = registerOutput<double>('clientSecretVersion');
    duration = registerOutput<String>('duration');
    expiresAt = registerOutput<String>('expiresAt');
    this.name = registerOutput<String>('name');
    previousClientSecretExpiresAt = registerOutput<String?>('previousClientSecretExpiresAt');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [ZeroTrustAccessServiceToken] resource.
  ZeroTrustAccessServiceToken.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustAccessServiceToken:ZeroTrustAccessServiceToken',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['clientSecret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    clientSecretVersion = registerOutput<double>('clientSecretVersion');
    duration = registerOutput<String>('duration');
    expiresAt = registerOutput<String>('expiresAt');
    this.name = registerOutput<String>('name');
    previousClientSecretExpiresAt = registerOutput<String?>('previousClientSecretExpiresAt');
    zoneId = registerOutput<String?>('zoneId');
  }
}
