import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_pack_args.dart';
import 'certificate_pack_certificate.dart';
import 'certificate_pack_dcv_delegation_record.dart';
import 'certificate_pack_state.dart';
import 'certificate_pack_validation_error.dart';
import 'certificate_pack_validation_record.dart';

/// Accepted Permissions
///
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
///
/// &gt; Certificate packs are not able to be updated in place. If
/// you require a zero downtime rotation, you can create multiple
/// resources using a 2-phase change where you have both resources
/// live at once and you remove the old one once you've confirmed
/// the certificate is available.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCertificatePack = new cloudflare.CertificatePack("example_certificate_pack", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     certificateAuthority: "lets_encrypt",
///     hosts: [
///         "example.com",
///         "*.example.com",
///         "www.example.com",
///     ],
///     type: "advanced",
///     validationMethod: "txt",
///     validityDays: 14,
///     cloudflareBranding: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_certificate_pack = cloudflare.CertificatePack("example_certificate_pack",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     certificate_authority="lets_encrypt",
///     hosts=[
///         "example.com",
///         "*.example.com",
///         "www.example.com",
///     ],
///     type="advanced",
///     validation_method="txt",
///     validity_days=14,
///     cloudflare_branding=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCertificatePack = new Cloudflare.CertificatePack("example_certificate_pack", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         CertificateAuthority = "lets_encrypt",
///         Hosts = new[]
///         {
///             "example.com",
///             "*.example.com",
///             "www.example.com",
///         },
///         Type = "advanced",
///         ValidationMethod = "txt",
///         ValidityDays = 14,
///         CloudflareBranding = false,
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
/// 		_, err := cloudflare.NewCertificatePack(ctx, "example_certificate_pack", &cloudflare.CertificatePackArgs{
/// 			ZoneId:               pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			CertificateAuthority: pulumi.String("lets_encrypt"),
/// 			Hosts: pulumi.StringArray{
/// 				pulumi.String("example.com"),
/// 				pulumi.String("*.example.com"),
/// 				pulumi.String("www.example.com"),
/// 			},
/// 			Type:               pulumi.String("advanced"),
/// 			ValidationMethod:   pulumi.String("txt"),
/// 			ValidityDays:       pulumi.Int(14),
/// 			CloudflareBranding: pulumi.Bool(false),
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
/// resource "cloudflare_certificatepack" "example_certificate_pack" {
///   zone_id               = "023e105f4ecef8ad9ca31a8372d0c353"
///   certificate_authority = "lets_encrypt"
///   hosts                 = ["example.com", "*.example.com", "www.example.com"]
///   type                  = "advanced"
///   validation_method     = "txt"
///   validity_days         = 14
///   cloudflare_branding   = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CertificatePack;
/// import com.pulumi.cloudflare.CertificatePackArgs;
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
///         var exampleCertificatePack = new CertificatePack("exampleCertificatePack", CertificatePackArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .certificateAuthority("lets_encrypt")
///             .hosts(
///                 "example.com",
///                 "*.example.com",
///                 "www.example.com")
///             .type("advanced")
///             .validationMethod("txt")
///             .validityDays(14)
///             .cloudflareBranding(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCertificatePack:
///     type: cloudflare:CertificatePack
///     name: example_certificate_pack
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       certificateAuthority: lets_encrypt
///       hosts:
///         - example.com
///         - '*.example.com'
///         - www.example.com
///       type: advanced
///       validationMethod: txt
///       validityDays: 14
///       cloudflareBranding: false
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/certificatePack:CertificatePack example '<zone_id>/<certificate_pack_id>'
/// ```
///
/// While supported, importing isn't recommended and it is advised to replace the
/// certificate entirely instead.
class CertificatePack extends pulumi.CustomResource {
  /// Certificate Authority selected for the order.  For information on any certificate authority specific details or restrictions [see this page for more details](https://developers.cloudflare.com/ssl/reference/certificate-authorities).
  /// Available values: "google", "lets*encrypt", "ssl*com".
  late final pulumi.Output<String> certificateAuthority;
  /// Array of certificates in this pack.
  late final pulumi.Output<List<CertificatePackCertificate>> certificates;
  /// Whether or not to add Cloudflare Branding for the order.  This will add a subdomain of sni.cloudflaressl.com as the Common Name if set to true.
  late final pulumi.Output<bool?> cloudflareBranding;
  /// DCV Delegation records for domain validation.
  late final pulumi.Output<List<CertificatePackDcvDelegationRecord>> dcvDelegationRecords;
  /// Comma separated list of valid host names for the certificate packs. Must contain the zone apex, may not contain more than 50 hosts, and may not be empty.
  late final pulumi.Output<List<String>> hosts;
  /// Identifier of the primary certificate in a pack.
  late final pulumi.Output<String> primaryCertificate;
  /// Status of certificate pack.
  /// Available values: "initializing", "pending*validation", "deleted", "pending*issuance", "pending*deployment", "pending*deletion", "pending*expiration", "expired", "active", "initializing*timed*out", "validation*timed*out", "issuance*timed*out", "deployment*timed*out", "deletion*timed*out", "pending*cleanup", "staging*deployment", "staging*active", "deactivating", "inactive", "backup*issued", "holding*deployment".
  late final pulumi.Output<String> status;
  /// Type of certificate pack.
  /// Available values: "advanced".
  late final pulumi.Output<String> type;
  /// Domain validation errors that have been received by the certificate authority (CA).
  late final pulumi.Output<List<CertificatePackValidationError>> validationErrors;
  /// Validation Method selected for the order.
  /// Available values: "txt", "http", "email".
  late final pulumi.Output<String> validationMethod;
  /// Certificates' validation records.
  late final pulumi.Output<List<CertificatePackValidationRecord>> validationRecords;
  /// Validity Days selected for the order.
  /// Available values: 14, 30, 90, 365.
  late final pulumi.Output<int> validityDays;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [CertificatePack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificatePack]. {@macro pulumi_index_certificate_pack_certificate_pack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificatePack(
    String name, {
    CertificatePackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/certificatePack:CertificatePack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    certificateAuthority = registerOutput<String>('certificateAuthority');
    certificates = registerOutput<List<CertificatePackCertificate>>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackCertificate>(guardedValue, (value) => CertificatePackCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    cloudflareBranding = registerOutput<bool?>('cloudflareBranding');
    dcvDelegationRecords = registerOutput<List<CertificatePackDcvDelegationRecord>>('dcvDelegationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackDcvDelegationRecord>(guardedValue, (value) => CertificatePackDcvDelegationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    hosts = registerOutput<List<String>>('hosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    primaryCertificate = registerOutput<String>('primaryCertificate');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
    validationErrors = registerOutput<List<CertificatePackValidationError>>('validationErrors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackValidationError>(guardedValue, (value) => CertificatePackValidationError.fromMap((value as Map).cast<String, dynamic>())); });
    validationMethod = registerOutput<String>('validationMethod');
    validationRecords = registerOutput<List<CertificatePackValidationRecord>>('validationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackValidationRecord>(guardedValue, (value) => CertificatePackValidationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    validityDays = registerOutput<int>('validityDays');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [CertificatePack] resource's state with the given [name] and [id].
  static CertificatePack get(
    String name,
    pulumi.Input<String> id, {
    CertificatePackState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CertificatePack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CertificatePack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/certificatePack:CertificatePack',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateAuthority = registerOutput<String>('certificateAuthority');
    certificates = registerOutput<List<CertificatePackCertificate>>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackCertificate>(guardedValue, (value) => CertificatePackCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    cloudflareBranding = registerOutput<bool?>('cloudflareBranding');
    dcvDelegationRecords = registerOutput<List<CertificatePackDcvDelegationRecord>>('dcvDelegationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackDcvDelegationRecord>(guardedValue, (value) => CertificatePackDcvDelegationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    hosts = registerOutput<List<String>>('hosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    primaryCertificate = registerOutput<String>('primaryCertificate');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
    validationErrors = registerOutput<List<CertificatePackValidationError>>('validationErrors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackValidationError>(guardedValue, (value) => CertificatePackValidationError.fromMap((value as Map).cast<String, dynamic>())); });
    validationMethod = registerOutput<String>('validationMethod');
    validationRecords = registerOutput<List<CertificatePackValidationRecord>>('validationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackValidationRecord>(guardedValue, (value) => CertificatePackValidationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    validityDays = registerOutput<int>('validityDays');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [CertificatePack] resource.
  CertificatePack.reference(String urn)
    : super(
        'cloudflare:index/certificatePack:CertificatePack',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateAuthority = registerOutput<String>('certificateAuthority');
    certificates = registerOutput<List<CertificatePackCertificate>>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackCertificate>(guardedValue, (value) => CertificatePackCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    cloudflareBranding = registerOutput<bool?>('cloudflareBranding');
    dcvDelegationRecords = registerOutput<List<CertificatePackDcvDelegationRecord>>('dcvDelegationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackDcvDelegationRecord>(guardedValue, (value) => CertificatePackDcvDelegationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    hosts = registerOutput<List<String>>('hosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    primaryCertificate = registerOutput<String>('primaryCertificate');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
    validationErrors = registerOutput<List<CertificatePackValidationError>>('validationErrors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackValidationError>(guardedValue, (value) => CertificatePackValidationError.fromMap((value as Map).cast<String, dynamic>())); });
    validationMethod = registerOutput<String>('validationMethod');
    validationRecords = registerOutput<List<CertificatePackValidationRecord>>('validationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificatePackValidationRecord>(guardedValue, (value) => CertificatePackValidationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    validityDays = registerOutput<int>('validityDays');
    zoneId = registerOutput<String>('zoneId');
  }
}
