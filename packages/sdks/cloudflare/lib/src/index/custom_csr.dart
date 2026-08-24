import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_csr_args.dart';
import 'custom_csr_state.dart';

/// Accepted Permissions
///
/// - `Account: SSL and Certificates Read`
/// - `Account: SSL and Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCustomCsr = new cloudflare.CustomCsr("example_custom_csr", {
///     commonName: "example.com",
///     country: "US",
///     locality: "San Francisco",
///     organization: "Cloudflare, Inc.",
///     sans: [
///         "example.com",
///         "www.example.com",
///     ],
///     state: "California",
///     zoneId: "zone_id",
///     description: "CSR for example.com wildcard",
///     keyType: "rsa2048",
///     name: "My Custom CSR",
///     organizationalUnit: "Engineering",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_custom_csr = cloudflare.CustomCsr("example_custom_csr",
///     common_name="example.com",
///     country="US",
///     locality="San Francisco",
///     organization="Cloudflare, Inc.",
///     sans=[
///         "example.com",
///         "www.example.com",
///     ],
///     state="California",
///     zone_id="zone_id",
///     description="CSR for example.com wildcard",
///     key_type="rsa2048",
///     name="My Custom CSR",
///     organizational_unit="Engineering")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCustomCsr = new Cloudflare.CustomCsr("example_custom_csr", new()
///     {
///         CommonName = "example.com",
///         Country = "US",
///         Locality = "San Francisco",
///         Organization = "Cloudflare, Inc.",
///         Sans = new[]
///         {
///             "example.com",
///             "www.example.com",
///         },
///         State = "California",
///         ZoneId = "zone_id",
///         Description = "CSR for example.com wildcard",
///         KeyType = "rsa2048",
///         Name = "My Custom CSR",
///         OrganizationalUnit = "Engineering",
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
/// 		_, err := cloudflare.NewCustomCsr(ctx, "example_custom_csr", &cloudflare.CustomCsrArgs{
/// 			CommonName:   pulumi.String("example.com"),
/// 			Country:      pulumi.String("US"),
/// 			Locality:     pulumi.String("San Francisco"),
/// 			Organization: pulumi.String("Cloudflare, Inc."),
/// 			Sans: pulumi.StringArray{
/// 				pulumi.String("example.com"),
/// 				pulumi.String("www.example.com"),
/// 			},
/// 			State:              pulumi.String("California"),
/// 			ZoneId:             pulumi.String("zone_id"),
/// 			Description:        pulumi.String("CSR for example.com wildcard"),
/// 			KeyType:            pulumi.String("rsa2048"),
/// 			Name:               pulumi.String("My Custom CSR"),
/// 			OrganizationalUnit: pulumi.String("Engineering"),
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
/// resource "cloudflare_customcsr" "example_custom_csr" {
///   common_name         = "example.com"
///   country             = "US"
///   locality            = "San Francisco"
///   organization        = "Cloudflare, Inc."
///   sans                = ["example.com", "www.example.com"]
///   state               = "California"
///   zone_id             = "zone_id"
///   description         = "CSR for example.com wildcard"
///   key_type            = "rsa2048"
///   name                = "My Custom CSR"
///   organizational_unit = "Engineering"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CustomCsr;
/// import com.pulumi.cloudflare.CustomCsrArgs;
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
///         var exampleCustomCsr = new CustomCsr("exampleCustomCsr", CustomCsrArgs.builder()
///             .commonName("example.com")
///             .country("US")
///             .locality("San Francisco")
///             .organization("Cloudflare, Inc.")
///             .sans(
///                 "example.com",
///                 "www.example.com")
///             .state("California")
///             .zoneId("zone_id")
///             .description("CSR for example.com wildcard")
///             .keyType("rsa2048")
///             .name("My Custom CSR")
///             .organizationalUnit("Engineering")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCustomCsr:
///     type: cloudflare:CustomCsr
///     name: example_custom_csr
///     properties:
///       commonName: example.com
///       country: US
///       locality: San Francisco
///       organization: Cloudflare, Inc.
///       sans:
///         - example.com
///         - www.example.com
///       state: California
///       zoneId: zone_id
///       description: CSR for example.com wildcard
///       keyType: rsa2048
///       name: My Custom CSR
///       organizationalUnit: Engineering
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/customCsr:CustomCsr example '<{accounts|zones}/{account_id|zone_id}>/<custom_csr_id>'
/// ```
class CustomCsr extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// Account identifier associated with this CSR.
  late final pulumi.Output<String> accountTag;
  /// The common name (domain) for the CSR. Must be at most 64 characters.
  late final pulumi.Output<String> commonName;
  /// Two-letter ISO 3166-1 alpha-2 country code.
  late final pulumi.Output<String> country;
  /// When the CSR was created.
  late final pulumi.Output<String> createdAt;
  /// The PEM-encoded Certificate Signing Request.
  late final pulumi.Output<String> csr;
  /// Optional description for the CSR.
  late final pulumi.Output<String?> description;
  /// Key algorithm to use for the CSR. Defaults to rsa2048 if not specified.
  /// Available values: "rsa2048", "p256v1".
  late final pulumi.Output<String> keyType;
  /// City or locality name.
  late final pulumi.Output<String> locality;
  /// Human-readable name for the CSR.
  late final pulumi.Output<String?> name;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Organizational unit name.
  late final pulumi.Output<String?> organizationalUnit;
  /// Subject Alternative Names for the CSR. At least one SAN is required.
  late final pulumi.Output<List<String>> sans;
  /// State or province name.
  late final pulumi.Output<String> state;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [CustomCsr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomCsr]. {@macro pulumi_index_custom_csr_custom_csr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomCsr(
    String name, {
    CustomCsrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customCsr:CustomCsr',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    accountTag = registerOutput<String>('accountTag');
    commonName = registerOutput<String>('commonName');
    country = registerOutput<String>('country');
    createdAt = registerOutput<String>('createdAt');
    csr = registerOutput<String>('csr');
    description = registerOutput<String?>('description');
    keyType = registerOutput<String>('keyType');
    locality = registerOutput<String>('locality');
    this.name = registerOutput<String?>('name');
    organization = registerOutput<String>('organization');
    organizationalUnit = registerOutput<String?>('organizationalUnit');
    sans = registerOutput<List<String>>('sans', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    state = registerOutput<String>('state');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [CustomCsr] resource's state with the given [name] and [id].
  static CustomCsr get(
    String name,
    pulumi.Input<String> id, {
    CustomCsrState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomCsr._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomCsr._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/customCsr:CustomCsr',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    accountTag = registerOutput<String>('accountTag');
    commonName = registerOutput<String>('commonName');
    country = registerOutput<String>('country');
    createdAt = registerOutput<String>('createdAt');
    csr = registerOutput<String>('csr');
    description = registerOutput<String?>('description');
    keyType = registerOutput<String>('keyType');
    locality = registerOutput<String>('locality');
    this.name = registerOutput<String?>('name');
    organization = registerOutput<String>('organization');
    organizationalUnit = registerOutput<String?>('organizationalUnit');
    sans = registerOutput<List<String>>('sans', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.state = registerOutput<String>('state');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [CustomCsr] resource.
  CustomCsr.reference(String urn)
    : super(
        'cloudflare:index/customCsr:CustomCsr',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    accountTag = registerOutput<String>('accountTag');
    commonName = registerOutput<String>('commonName');
    country = registerOutput<String>('country');
    createdAt = registerOutput<String>('createdAt');
    csr = registerOutput<String>('csr');
    description = registerOutput<String?>('description');
    keyType = registerOutput<String>('keyType');
    locality = registerOutput<String>('locality');
    this.name = registerOutput<String?>('name');
    organization = registerOutput<String>('organization');
    organizationalUnit = registerOutput<String?>('organizationalUnit');
    sans = registerOutput<List<String>>('sans', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    state = registerOutput<String>('state');
    zoneId = registerOutput<String?>('zoneId');
  }
}
