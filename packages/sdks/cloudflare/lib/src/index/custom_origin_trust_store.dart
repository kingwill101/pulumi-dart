import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_origin_trust_store_args.dart';
import 'custom_origin_trust_store_state.dart';

/// Accepted Permissions
///
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCustomOriginTrustStore = new cloudflare.CustomOriginTrustStore("example_custom_origin_trust_store", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     certificate: `  -----BEGIN CERTIFICATE-----
///   MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///   -----END CERTIFICATE-----
///
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_custom_origin_trust_store = cloudflare.CustomOriginTrustStore("example_custom_origin_trust_store",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     certificate="""  -----BEGIN CERTIFICATE-----
///   MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///   -----END CERTIFICATE-----
///
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCustomOriginTrustStore = new Cloudflare.CustomOriginTrustStore("example_custom_origin_trust_store", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Certificate = @"  -----BEGIN CERTIFICATE-----
///   MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///   -----END CERTIFICATE-----
///
/// ",
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
/// 		_, err := cloudflare.NewCustomOriginTrustStore(ctx, "example_custom_origin_trust_store", &cloudflare.CustomOriginTrustStoreArgs{
/// 			ZoneId:      pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Certificate: pulumi.String("  -----BEGIN CERTIFICATE-----\n  MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...\n  -----END CERTIFICATE-----\n\n"),
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
/// resource "cloudflare_customorigintruststore" "example_custom_origin_trust_store" {
///   zone_id     = "023e105f4ecef8ad9ca31a8372d0c353"
///   certificate = "  -----BEGIN CERTIFICATE-----\n  MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...\n  -----END CERTIFICATE-----\n\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CustomOriginTrustStore;
/// import com.pulumi.cloudflare.CustomOriginTrustStoreArgs;
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
///         var exampleCustomOriginTrustStore = new CustomOriginTrustStore("exampleCustomOriginTrustStore", CustomOriginTrustStoreArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .certificate("""
///   -----BEGIN CERTIFICATE-----
///   MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///   -----END CERTIFICATE-----
///
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCustomOriginTrustStore:
///     type: cloudflare:CustomOriginTrustStore
///     name: example_custom_origin_trust_store
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       certificate: |2+
///           -----BEGIN CERTIFICATE-----
///           MIIDdjCCAl6gAwIBAgIJAPnMg0Fs+/B0MA0GCSqGSIb3DQEBCwUAMFsx...
///           -----END CERTIFICATE-----
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/customOriginTrustStore:CustomOriginTrustStore example '<zone_id>/<custom_origin_trust_store_id>'
/// ```
class CustomOriginTrustStore extends pulumi.CustomResource {
  /// The root CA certificate in PEM format. Only root CA certificates are accepted; intermediate and leaf certificates are not supported.
  late final pulumi.Output<String> certificate;
  /// When the certificate expires.
  late final pulumi.Output<String> expiresOn;
  /// The certificate authority that issued the certificate.
  late final pulumi.Output<String> issuer;
  /// The type of hash used for the certificate.
  late final pulumi.Output<String> signature;
  /// Status of the zone's custom SSL.
  /// Available values: "initializing", "pending*deployment", "active", "pending*deletion", "deleted", "expired".
  late final pulumi.Output<String> status;
  /// When the certificate was last modified.
  late final pulumi.Output<String> updatedAt;
  /// When the certificate was uploaded to Cloudflare.
  late final pulumi.Output<String> uploadedOn;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [CustomOriginTrustStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomOriginTrustStore]. {@macro pulumi_index_custom_origin_trust_store_custom_origin_trust_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomOriginTrustStore(
    String name, {
    CustomOriginTrustStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customOriginTrustStore:CustomOriginTrustStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    certificate = registerOutput<String>('certificate');
    expiresOn = registerOutput<String>('expiresOn');
    issuer = registerOutput<String>('issuer');
    signature = registerOutput<String>('signature');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    uploadedOn = registerOutput<String>('uploadedOn');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [CustomOriginTrustStore] resource's state with the given [name] and [id].
  static CustomOriginTrustStore get(
    String name,
    pulumi.Input<String> id, {
    CustomOriginTrustStoreState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomOriginTrustStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomOriginTrustStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customOriginTrustStore:CustomOriginTrustStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    expiresOn = registerOutput<String>('expiresOn');
    issuer = registerOutput<String>('issuer');
    signature = registerOutput<String>('signature');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    uploadedOn = registerOutput<String>('uploadedOn');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [CustomOriginTrustStore] resource.
  CustomOriginTrustStore.reference(String urn)
    : super(
        'cloudflare:index/customOriginTrustStore:CustomOriginTrustStore',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificate = registerOutput<String>('certificate');
    expiresOn = registerOutput<String>('expiresOn');
    issuer = registerOutput<String>('issuer');
    signature = registerOutput<String>('signature');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
    uploadedOn = registerOutput<String>('uploadedOn');
    zoneId = registerOutput<String>('zoneId');
  }
}
