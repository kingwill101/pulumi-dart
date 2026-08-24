import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_certificate_args.dart';
import 'zero_trust_gateway_certificate_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustGatewayCertificate = new cloudflare.ZeroTrustGatewayCertificate("example_zero_trust_gateway_certificate", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     validityPeriodDays: 1826,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_gateway_certificate = cloudflare.ZeroTrustGatewayCertificate("example_zero_trust_gateway_certificate",
///     account_id="699d98642c564d2e855e9661899b7252",
///     validity_period_days=1826)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustGatewayCertificate = new Cloudflare.ZeroTrustGatewayCertificate("example_zero_trust_gateway_certificate", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         ValidityPeriodDays = 1826,
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
/// 		_, err := cloudflare.NewZeroTrustGatewayCertificate(ctx, "example_zero_trust_gateway_certificate", &cloudflare.ZeroTrustGatewayCertificateArgs{
/// 			AccountId:          pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			ValidityPeriodDays: pulumi.Int(1826),
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
/// resource "cloudflare_zerotrustgatewaycertificate" "example_zero_trust_gateway_certificate" {
///   account_id           = "699d98642c564d2e855e9661899b7252"
///   validity_period_days = 1826
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustGatewayCertificate;
/// import com.pulumi.cloudflare.ZeroTrustGatewayCertificateArgs;
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
///         var exampleZeroTrustGatewayCertificate = new ZeroTrustGatewayCertificate("exampleZeroTrustGatewayCertificate", ZeroTrustGatewayCertificateArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .validityPeriodDays(1826)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustGatewayCertificate:
///     type: cloudflare:ZeroTrustGatewayCertificate
///     name: example_zero_trust_gateway_certificate
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       validityPeriodDays: 1826
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustGatewayCertificate:ZeroTrustGatewayCertificate example '<account_id>/<certificate_id>'
/// ```
class ZeroTrustGatewayCertificate extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Whether to activate the certificate on Cloudflare's edge. When true, the certificate will be activated. When false, the certificate will be deactivated at the edge. This is a Terraform-only field and does not appear in the API response. Monitor `bindingStatus` for the activation status. Once a certificate is activated, you may use the certificate to intercept traffic
  late final pulumi.Output<bool?> activate;
  /// Indicate the read-only deployment status of the certificate on Cloudflare's edge. Gateway TLS interception can use certificates in the 'available' (previously called 'active') state.
  /// Available values: "pending*deployment", "available", "pending*deletion", "inactive".
  late final pulumi.Output<String> bindingStatus;
  /// Provide the CA certificate (read-only).
  late final pulumi.Output<String> certificate;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> expiresOn;
  /// Provide the SHA256 fingerprint of the certificate (read-only).
  late final pulumi.Output<String> fingerprint;
  /// Indicate whether Gateway TLS interception uses this certificate (read-only). You cannot set this value directly. To configure interception, use the Gateway configuration setting named `certificate` (read-only).
  late final pulumi.Output<bool> inUse;
  /// Indicate the organization that issued the certificate (read-only).
  late final pulumi.Output<String> issuerOrg;
  /// Provide the entire issuer field of the certificate (read-only).
  late final pulumi.Output<String> issuerRaw;
  /// Indicate the read-only certificate type, BYO-PKI (custom) or Gateway-managed.
  /// Available values: "custom", "gatewayManaged".
  late final pulumi.Output<String> type;
  late final pulumi.Output<String> updatedAt;
  late final pulumi.Output<String> uploadedOn;
  /// Sets the certificate validity period in days (range: 1-10,950 days / ~30 years). Defaults to 1,825 days (5 years). **Important**: This field is only settable during the certificate creation.  Certificates becomes immutable after creation - use the `/activate` and `/deactivate` endpoints to manage certificate lifecycle.
  late final pulumi.Output<int?> validityPeriodDays;

  /// Creates a new [ZeroTrustGatewayCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustGatewayCertificate]. {@macro pulumi_index_zero_trust_gateway_certificate_zero_trust_gateway_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustGatewayCertificate(
    String name, {
    ZeroTrustGatewayCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustGatewayCertificate:ZeroTrustGatewayCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    activate = registerOutput<bool?>('activate');
    bindingStatus = registerOutput<String>('bindingStatus');
    certificate = registerOutput<String>('certificate');
    createdAt = registerOutput<String>('createdAt');
    expiresOn = registerOutput<String>('expiresOn');
    fingerprint = registerOutput<String>('fingerprint');
    inUse = registerOutput<bool>('inUse');
    issuerOrg = registerOutput<String>('issuerOrg');
    issuerRaw = registerOutput<String>('issuerRaw');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadedOn = registerOutput<String>('uploadedOn');
    validityPeriodDays = registerOutput<int?>('validityPeriodDays');
  }

  /// Gets an existing [ZeroTrustGatewayCertificate] resource's state with the given [name] and [id].
  static ZeroTrustGatewayCertificate get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustGatewayCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustGatewayCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustGatewayCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustGatewayCertificate:ZeroTrustGatewayCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    activate = registerOutput<bool?>('activate');
    bindingStatus = registerOutput<String>('bindingStatus');
    certificate = registerOutput<String>('certificate');
    createdAt = registerOutput<String>('createdAt');
    expiresOn = registerOutput<String>('expiresOn');
    fingerprint = registerOutput<String>('fingerprint');
    inUse = registerOutput<bool>('inUse');
    issuerOrg = registerOutput<String>('issuerOrg');
    issuerRaw = registerOutput<String>('issuerRaw');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadedOn = registerOutput<String>('uploadedOn');
    validityPeriodDays = registerOutput<int?>('validityPeriodDays');
  }

  /// Creates a typed reference to an existing [ZeroTrustGatewayCertificate] resource.
  ZeroTrustGatewayCertificate.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustGatewayCertificate:ZeroTrustGatewayCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    activate = registerOutput<bool?>('activate');
    bindingStatus = registerOutput<String>('bindingStatus');
    certificate = registerOutput<String>('certificate');
    createdAt = registerOutput<String>('createdAt');
    expiresOn = registerOutput<String>('expiresOn');
    fingerprint = registerOutput<String>('fingerprint');
    inUse = registerOutput<bool>('inUse');
    issuerOrg = registerOutput<String>('issuerOrg');
    issuerRaw = registerOutput<String>('issuerRaw');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    uploadedOn = registerOutput<String>('uploadedOn');
    validityPeriodDays = registerOutput<int?>('validityPeriodDays');
  }
}
