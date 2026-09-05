import 'package:pulumi/pulumi.dart' as pulumi;
import 'authenticated_origin_pulls_args.dart';
import 'authenticated_origin_pulls_config.dart';
import 'authenticated_origin_pulls_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAuthenticatedOriginPulls = new cloudflare.AuthenticatedOriginPulls("example_authenticated_origin_pulls", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     configs: [{
///         certId: "2458ce5a-0c35-4c7f-82c7-8e9487d3ff60",
///         enabled: true,
///         hostname: "app.example.com",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_authenticated_origin_pulls = cloudflare.AuthenticatedOriginPulls("example_authenticated_origin_pulls",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     configs=[{
///         "cert_id": "2458ce5a-0c35-4c7f-82c7-8e9487d3ff60",
///         "enabled": True,
///         "hostname": "app.example.com",
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
///     var exampleAuthenticatedOriginPulls = new Cloudflare.AuthenticatedOriginPulls("example_authenticated_origin_pulls", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Configs = new[]
///         {
///             new Cloudflare.Inputs.AuthenticatedOriginPullsConfigArgs
///             {
///                 CertId = "2458ce5a-0c35-4c7f-82c7-8e9487d3ff60",
///                 Enabled = true,
///                 Hostname = "app.example.com",
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
/// 		_, err := cloudflare.NewAuthenticatedOriginPulls(ctx, "example_authenticated_origin_pulls", &cloudflare.AuthenticatedOriginPullsArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Configs: cloudflare.AuthenticatedOriginPullsConfigArray{
/// 				&cloudflare.AuthenticatedOriginPullsConfigArgs{
/// 					CertId:   pulumi.String("2458ce5a-0c35-4c7f-82c7-8e9487d3ff60"),
/// 					Enabled:  pulumi.Bool(true),
/// 					Hostname: pulumi.String("app.example.com"),
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
/// resource "cloudflare_authenticatedoriginpulls" "example_authenticated_origin_pulls" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   configs {
///     cert_id  = "2458ce5a-0c35-4c7f-82c7-8e9487d3ff60"
///     enabled  = true
///     hostname = "app.example.com"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AuthenticatedOriginPulls;
/// import com.pulumi.cloudflare.AuthenticatedOriginPullsArgs;
/// import com.pulumi.cloudflare.inputs.AuthenticatedOriginPullsConfigArgs;
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
///         var exampleAuthenticatedOriginPulls = new AuthenticatedOriginPulls("exampleAuthenticatedOriginPulls", AuthenticatedOriginPullsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .configs(AuthenticatedOriginPullsConfigArgs.builder()
///                 .certId("2458ce5a-0c35-4c7f-82c7-8e9487d3ff60")
///                 .enabled(true)
///                 .hostname("app.example.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAuthenticatedOriginPulls:
///     type: cloudflare:AuthenticatedOriginPulls
///     name: example_authenticated_origin_pulls
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       configs:
///         - certId: 2458ce5a-0c35-4c7f-82c7-8e9487d3ff60
///           enabled: true
///           hostname: app.example.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/authenticatedOriginPulls:AuthenticatedOriginPulls example '<zone_id>/<hostname>'
/// ```
class AuthenticatedOriginPulls extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> certId;
  /// Status of the certificate or the association.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  late final pulumi.Output<String> certStatus;
  /// The time when the certificate was updated.
  late final pulumi.Output<String> certUpdatedAt;
  /// The time when the certificate was uploaded.
  late final pulumi.Output<String> certUploadedOn;
  /// The hostname certificate.
  late final pulumi.Output<String> certificate;
  late final pulumi.Output<List<AuthenticatedOriginPullsConfig>> configs;
  /// The time when the certificate was created.
  late final pulumi.Output<String> createdAt;
  /// Indicates whether hostname-level authenticated origin pulls is enabled. A null value voids the association.
  late final pulumi.Output<bool> enabled;
  /// The date when the certificate expires.
  late final pulumi.Output<String> expiresOn;
  /// The hostname on the origin for which the client certificate uploaded will be used.
  late final pulumi.Output<String> hostname;
  /// The certificate authority that issued the certificate.
  late final pulumi.Output<String> issuer;
  /// The hostname certificate's private key.
  late final pulumi.Output<String> privateKey;
  /// The serial number on the uploaded certificate.
  late final pulumi.Output<String> serialNumber;
  /// The type of hash used for the certificate.
  late final pulumi.Output<String> signature;
  /// Status of the certificate or the association.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  late final pulumi.Output<String> status;
  /// The time when the certificate was updated.
  late final pulumi.Output<String> updatedAt;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [AuthenticatedOriginPulls].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthenticatedOriginPulls]. {@macro pulumi_index_authenticated_origin_pulls_authenticated_origin_pulls_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthenticatedOriginPulls(
    String name, {
    AuthenticatedOriginPullsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/authenticatedOriginPulls:AuthenticatedOriginPulls',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['privateKey'],
        ) {
    certId = registerOutput<String>('certId');
    certStatus = registerOutput<String>('certStatus');
    certUpdatedAt = registerOutput<String>('certUpdatedAt');
    certUploadedOn = registerOutput<String>('certUploadedOn');
    certificate = registerOutput<String>('certificate');
    configs = registerOutput<List<AuthenticatedOriginPullsConfig>>('configs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AuthenticatedOriginPullsConfig>(guardedValue, (value) => AuthenticatedOriginPullsConfig.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String>('createdAt');
    enabled = registerOutput<bool>('enabled');
    expiresOn = registerOutput<String>('expiresOn');
    hostname = registerOutput<String>('hostname');
    issuer = registerOutput<String>('issuer');
    privateKey = registerOutput<String>('privateKey', isSecret: true);
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [AuthenticatedOriginPulls] resource's state with the given [name] and [id].
  static AuthenticatedOriginPulls get(
    String name,
    pulumi.Input<String> id, {
    AuthenticatedOriginPullsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AuthenticatedOriginPulls._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AuthenticatedOriginPulls._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/authenticatedOriginPulls:AuthenticatedOriginPulls',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certId = registerOutput<String>('certId');
    certStatus = registerOutput<String>('certStatus');
    certUpdatedAt = registerOutput<String>('certUpdatedAt');
    certUploadedOn = registerOutput<String>('certUploadedOn');
    certificate = registerOutput<String>('certificate');
    configs = registerOutput<List<AuthenticatedOriginPullsConfig>>('configs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AuthenticatedOriginPullsConfig>(guardedValue, (value) => AuthenticatedOriginPullsConfig.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String>('createdAt');
    enabled = registerOutput<bool>('enabled');
    expiresOn = registerOutput<String>('expiresOn');
    hostname = registerOutput<String>('hostname');
    issuer = registerOutput<String>('issuer');
    privateKey = registerOutput<String>('privateKey', isSecret: true);
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [AuthenticatedOriginPulls] resource.
  AuthenticatedOriginPulls.reference(String urn)
    : super(
        'cloudflare:index/authenticatedOriginPulls:AuthenticatedOriginPulls',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['privateKey'],
        isResourceReference: true,
      ) {
    certId = registerOutput<String>('certId');
    certStatus = registerOutput<String>('certStatus');
    certUpdatedAt = registerOutput<String>('certUpdatedAt');
    certUploadedOn = registerOutput<String>('certUploadedOn');
    certificate = registerOutput<String>('certificate');
    configs = registerOutput<List<AuthenticatedOriginPullsConfig>>('configs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AuthenticatedOriginPullsConfig>(guardedValue, (value) => AuthenticatedOriginPullsConfig.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String>('createdAt');
    enabled = registerOutput<bool>('enabled');
    expiresOn = registerOutput<String>('expiresOn');
    hostname = registerOutput<String>('hostname');
    issuer = registerOutput<String>('issuer');
    privateKey = registerOutput<String>('privateKey', isSecret: true);
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    zoneId = registerOutput<String>('zoneId');
  }
}
