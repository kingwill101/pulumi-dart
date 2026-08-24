import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authorities_hostname_associations_args.dart';
import 'certificate_authorities_hostname_associations_state.dart';

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
/// const exampleCertificateAuthoritiesHostnameAssociations = new cloudflare.CertificateAuthoritiesHostnameAssociations("example_certificate_authorities_hostname_associations", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     hostnames: ["api.example.com"],
///     mtlsCertificateId: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_certificate_authorities_hostname_associations = cloudflare.CertificateAuthoritiesHostnameAssociations("example_certificate_authorities_hostname_associations",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     hostnames=["api.example.com"],
///     mtls_certificate_id="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCertificateAuthoritiesHostnameAssociations = new Cloudflare.CertificateAuthoritiesHostnameAssociations("example_certificate_authorities_hostname_associations", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Hostnames = new[]
///         {
///             "api.example.com",
///         },
///         MtlsCertificateId = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
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
/// 		_, err := cloudflare.NewCertificateAuthoritiesHostnameAssociations(ctx, "example_certificate_authorities_hostname_associations", &cloudflare.CertificateAuthoritiesHostnameAssociationsArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("api.example.com"),
/// 			},
/// 			MtlsCertificateId: pulumi.String("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
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
/// resource "cloudflare_certificateauthoritieshostnameassociations" "example_certificate_authorities_hostname_associations" {
///   zone_id             = "023e105f4ecef8ad9ca31a8372d0c353"
///   hostnames           = ["api.example.com"]
///   mtls_certificate_id = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CertificateAuthoritiesHostnameAssociations;
/// import com.pulumi.cloudflare.CertificateAuthoritiesHostnameAssociationsArgs;
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
///         var exampleCertificateAuthoritiesHostnameAssociations = new CertificateAuthoritiesHostnameAssociations("exampleCertificateAuthoritiesHostnameAssociations", CertificateAuthoritiesHostnameAssociationsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .hostnames("api.example.com")
///             .mtlsCertificateId("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCertificateAuthoritiesHostnameAssociations:
///     type: cloudflare:CertificateAuthoritiesHostnameAssociations
///     name: example_certificate_authorities_hostname_associations
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       hostnames:
///         - api.example.com
///       mtlsCertificateId: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/certificateAuthoritiesHostnameAssociations:CertificateAuthoritiesHostnameAssociations example '<zone_id>'
/// ```
class CertificateAuthoritiesHostnameAssociations extends pulumi.CustomResource {
  late final pulumi.Output<List<String>?> hostnames;
  /// The UUID for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls*certificate*id is given, the hostnames will be associated to your active Cloudflare Managed CA.
  late final pulumi.Output<String?> mtlsCertificateId;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [CertificateAuthoritiesHostnameAssociations].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateAuthoritiesHostnameAssociations]. {@macro pulumi_index_certificate_authorities_hostname_associations_certificate_authorities_hostname_associations_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateAuthoritiesHostnameAssociations(
    String name, {
    CertificateAuthoritiesHostnameAssociationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/certificateAuthoritiesHostnameAssociations:CertificateAuthoritiesHostnameAssociations',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    hostnames = registerOutput<List<String>?>('hostnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    mtlsCertificateId = registerOutput<String?>('mtlsCertificateId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [CertificateAuthoritiesHostnameAssociations] resource's state with the given [name] and [id].
  static CertificateAuthoritiesHostnameAssociations get(
    String name,
    pulumi.Input<String> id, {
    CertificateAuthoritiesHostnameAssociationsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CertificateAuthoritiesHostnameAssociations._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CertificateAuthoritiesHostnameAssociations._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/certificateAuthoritiesHostnameAssociations:CertificateAuthoritiesHostnameAssociations',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hostnames = registerOutput<List<String>?>('hostnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    mtlsCertificateId = registerOutput<String?>('mtlsCertificateId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [CertificateAuthoritiesHostnameAssociations] resource.
  CertificateAuthoritiesHostnameAssociations.reference(String urn)
    : super(
        'cloudflare:index/certificateAuthoritiesHostnameAssociations:CertificateAuthoritiesHostnameAssociations',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    hostnames = registerOutput<List<String>?>('hostnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    mtlsCertificateId = registerOutput<String?>('mtlsCertificateId');
    zoneId = registerOutput<String>('zoneId');
  }
}
