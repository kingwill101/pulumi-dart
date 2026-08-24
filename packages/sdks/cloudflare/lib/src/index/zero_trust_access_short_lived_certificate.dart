import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_short_lived_certificate_args.dart';
import 'zero_trust_access_short_lived_certificate_state.dart';

/// Accepted Permissions
///
/// - `Access: Apps and Policies Read`
/// - `Access: Apps and Policies Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessShortLivedCertificate = new cloudflare.ZeroTrustAccessShortLivedCertificate("example_zero_trust_access_short_lived_certificate", {
///     appId: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     zoneId: "zone_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_short_lived_certificate = cloudflare.ZeroTrustAccessShortLivedCertificate("example_zero_trust_access_short_lived_certificate",
///     app_id="f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///     zone_id="zone_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessShortLivedCertificate = new Cloudflare.ZeroTrustAccessShortLivedCertificate("example_zero_trust_access_short_lived_certificate", new()
///     {
///         AppId = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///         ZoneId = "zone_id",
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
/// 		_, err := cloudflare.NewZeroTrustAccessShortLivedCertificate(ctx, "example_zero_trust_access_short_lived_certificate", &cloudflare.ZeroTrustAccessShortLivedCertificateArgs{
/// 			AppId:  pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 			ZoneId: pulumi.String("zone_id"),
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
/// resource "cloudflare_zerotrustaccessshortlivedcertificate" "example_zero_trust_access_short_lived_certificate" {
///   app_id  = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///   zone_id = "zone_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessShortLivedCertificate;
/// import com.pulumi.cloudflare.ZeroTrustAccessShortLivedCertificateArgs;
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
///         var exampleZeroTrustAccessShortLivedCertificate = new ZeroTrustAccessShortLivedCertificate("exampleZeroTrustAccessShortLivedCertificate", ZeroTrustAccessShortLivedCertificateArgs.builder()
///             .appId("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///             .zoneId("zone_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessShortLivedCertificate:
///     type: cloudflare:ZeroTrustAccessShortLivedCertificate
///     name: example_zero_trust_access_short_lived_certificate
///     properties:
///       appId: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///       zoneId: zone_id
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustAccessShortLivedCertificate:ZeroTrustAccessShortLivedCertificate example '<{accounts|zones}/{account_id|zone_id}>/<app_id>'
/// ```
class ZeroTrustAccessShortLivedCertificate extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// UUID.
  late final pulumi.Output<String> appId;
  /// The Application Audience (AUD) tag. Identifies the application associated with the CA.
  late final pulumi.Output<String> aud;
  /// The public key to add to your SSH server configuration.
  late final pulumi.Output<String> publicKey;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [ZeroTrustAccessShortLivedCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustAccessShortLivedCertificate]. {@macro pulumi_index_zero_trust_access_short_lived_certificate_zero_trust_access_short_lived_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustAccessShortLivedCertificate(
    String name, {
    ZeroTrustAccessShortLivedCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessShortLivedCertificate:ZeroTrustAccessShortLivedCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    appId = registerOutput<String>('appId');
    aud = registerOutput<String>('aud');
    publicKey = registerOutput<String>('publicKey');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [ZeroTrustAccessShortLivedCertificate] resource's state with the given [name] and [id].
  static ZeroTrustAccessShortLivedCertificate get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustAccessShortLivedCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustAccessShortLivedCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustAccessShortLivedCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustAccessShortLivedCertificate:ZeroTrustAccessShortLivedCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    appId = registerOutput<String>('appId');
    aud = registerOutput<String>('aud');
    publicKey = registerOutput<String>('publicKey');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [ZeroTrustAccessShortLivedCertificate] resource.
  ZeroTrustAccessShortLivedCertificate.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustAccessShortLivedCertificate:ZeroTrustAccessShortLivedCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    appId = registerOutput<String>('appId');
    aud = registerOutput<String>('aud');
    publicKey = registerOutput<String>('publicKey');
    zoneId = registerOutput<String?>('zoneId');
  }
}
