import 'package:pulumi/pulumi.dart' as pulumi;
import 'cdn_args.dart';
import 'cdn_state.dart';

/// Provides a DigitalOcean CDN Endpoint resource for use with Spaces.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// // Create a new Spaces Bucket
/// const mybucket = new digitalocean.SpacesBucket("mybucket", {
///     name: "example",
///     region: digitalocean.Region.SFO2,
///     acl: "public-read",
/// });
/// // Add a CDN endpoint to the Spaces Bucket
/// const mycdn = new digitalocean.Cdn("mycdn", {origin: mybucket.bucketDomainName});
/// export const fqdn = mycdn.endpoint;
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// # Create a new Spaces Bucket
/// mybucket = digitalocean.SpacesBucket("mybucket",
///     name="example",
///     region=digitalocean.Region.SFO2,
///     acl="public-read")
/// # Add a CDN endpoint to the Spaces Bucket
/// mycdn = digitalocean.Cdn("mycdn", origin=mybucket.bucket_domain_name)
/// pulumi.export("fqdn", mycdn.endpoint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new Spaces Bucket
///     var mybucket = new DigitalOcean.SpacesBucket("mybucket", new()
///     {
///         Name = "example",
///         Region = DigitalOcean.Region.SFO2,
///         Acl = "public-read",
///     });
///
///     // Add a CDN endpoint to the Spaces Bucket
///     var mycdn = new DigitalOcean.Cdn("mycdn", new()
///     {
///         Origin = mybucket.BucketDomainName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["fqdn"] = mycdn.Endpoint,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new Spaces Bucket
/// 		mybucket, err := digitalocean.NewSpacesBucket(ctx, "mybucket", &digitalocean.SpacesBucketArgs{
/// 			Name:   pulumi.String("example"),
/// 			Region: pulumi.String(digitalocean.RegionSFO2),
/// 			Acl:    pulumi.String("public-read"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Add a CDN endpoint to the Spaces Bucket
/// 		mycdn, err := digitalocean.NewCdn(ctx, "mycdn", &digitalocean.CdnArgs{
/// 			Origin: mybucket.BucketDomainName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("fqdn", mycdn.Endpoint)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.SpacesBucket;
/// import com.pulumi.digitalocean.SpacesBucketArgs;
/// import com.pulumi.digitalocean.Cdn;
/// import com.pulumi.digitalocean.CdnArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // Create a new Spaces Bucket
///         var mybucket = new SpacesBucket("mybucket", SpacesBucketArgs.builder()
///             .name("example")
///             .region("sfo2")
///             .acl("public-read")
///             .build());
///
///         // Add a CDN endpoint to the Spaces Bucket
///         var mycdn = new Cdn("mycdn", CdnArgs.builder()
///             .origin(mybucket.bucketDomainName())
///             .build());
///
///         ctx.export("fqdn", mycdn.endpoint());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new Spaces Bucket
///   mybucket:
///     type: digitalocean:SpacesBucket
///     properties:
///       name: example
///       region: sfo2
///       acl: public-read
///   # Add a CDN endpoint to the Spaces Bucket
///   mycdn:
///     type: digitalocean:Cdn
///     properties:
///       origin: ${mybucket.bucketDomainName}
/// outputs:
///   # Output the endpoint for the CDN resource
///   fqdn: ${mycdn.endpoint}
/// ```
///
///
/// ### Custom Sub-Domain Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// // Create a new Spaces Bucket
/// const mybucket = new digitalocean.SpacesBucket("mybucket", {
///     name: "example",
///     region: digitalocean.Region.SFO2,
///     acl: "public-read",
/// });
/// // Create a DigitalOcean managed Let's Encrypt Certificate
/// const cert = new digitalocean.Certificate("cert", {
///     name: "cdn-cert",
///     type: digitalocean.CertificateType.LetsEncrypt,
///     domains: ["static.example.com"],
/// });
/// // Add a CDN endpoint with a custom sub-domain to the Spaces Bucket
/// const mycdn = new digitalocean.Cdn("mycdn", {
///     origin: mybucket.bucketDomainName,
///     customDomain: "static.example.com",
///     certificateName: cert.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// # Create a new Spaces Bucket
/// mybucket = digitalocean.SpacesBucket("mybucket",
///     name="example",
///     region=digitalocean.Region.SFO2,
///     acl="public-read")
/// # Create a DigitalOcean managed Let's Encrypt Certificate
/// cert = digitalocean.Certificate("cert",
///     name="cdn-cert",
///     type=digitalocean.CertificateType.LETS_ENCRYPT,
///     domains=["static.example.com"])
/// # Add a CDN endpoint with a custom sub-domain to the Spaces Bucket
/// mycdn = digitalocean.Cdn("mycdn",
///     origin=mybucket.bucket_domain_name,
///     custom_domain="static.example.com",
///     certificate_name=cert.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new Spaces Bucket
///     var mybucket = new DigitalOcean.SpacesBucket("mybucket", new()
///     {
///         Name = "example",
///         Region = DigitalOcean.Region.SFO2,
///         Acl = "public-read",
///     });
///
///     // Create a DigitalOcean managed Let's Encrypt Certificate
///     var cert = new DigitalOcean.Certificate("cert", new()
///     {
///         Name = "cdn-cert",
///         Type = DigitalOcean.CertificateType.LetsEncrypt,
///         Domains = new[]
///         {
///             "static.example.com",
///         },
///     });
///
///     // Add a CDN endpoint with a custom sub-domain to the Spaces Bucket
///     var mycdn = new DigitalOcean.Cdn("mycdn", new()
///     {
///         Origin = mybucket.BucketDomainName,
///         CustomDomain = "static.example.com",
///         CertificateName = cert.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new Spaces Bucket
/// 		mybucket, err := digitalocean.NewSpacesBucket(ctx, "mybucket", &digitalocean.SpacesBucketArgs{
/// 			Name:   pulumi.String("example"),
/// 			Region: pulumi.String(digitalocean.RegionSFO2),
/// 			Acl:    pulumi.String("public-read"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a DigitalOcean managed Let's Encrypt Certificate
/// 		cert, err := digitalocean.NewCertificate(ctx, "cert", &digitalocean.CertificateArgs{
/// 			Name: pulumi.String("cdn-cert"),
/// 			Type: pulumi.String(digitalocean.CertificateTypeLetsEncrypt),
/// 			Domains: pulumi.StringArray{
/// 				pulumi.String("static.example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Add a CDN endpoint with a custom sub-domain to the Spaces Bucket
/// 		_, err = digitalocean.NewCdn(ctx, "mycdn", &digitalocean.CdnArgs{
/// 			Origin:          mybucket.BucketDomainName,
/// 			CustomDomain:    pulumi.String("static.example.com"),
/// 			CertificateName: cert.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.SpacesBucket;
/// import com.pulumi.digitalocean.SpacesBucketArgs;
/// import com.pulumi.digitalocean.Certificate;
/// import com.pulumi.digitalocean.CertificateArgs;
/// import com.pulumi.digitalocean.Cdn;
/// import com.pulumi.digitalocean.CdnArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         // Create a new Spaces Bucket
///         var mybucket = new SpacesBucket("mybucket", SpacesBucketArgs.builder()
///             .name("example")
///             .region("sfo2")
///             .acl("public-read")
///             .build());
///
///         // Create a DigitalOcean managed Let's Encrypt Certificate
///         var cert = new Certificate("cert", CertificateArgs.builder()
///             .name("cdn-cert")
///             .type("lets_encrypt")
///             .domains("static.example.com")
///             .build());
///
///         // Add a CDN endpoint with a custom sub-domain to the Spaces Bucket
///         var mycdn = new Cdn("mycdn", CdnArgs.builder()
///             .origin(mybucket.bucketDomainName())
///             .customDomain("static.example.com")
///             .certificateName(cert.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new Spaces Bucket
///   mybucket:
///     type: digitalocean:SpacesBucket
///     properties:
///       name: example
///       region: sfo2
///       acl: public-read
///   # Create a DigitalOcean managed Let's Encrypt Certificate
///   cert:
///     type: digitalocean:Certificate
///     properties:
///       name: cdn-cert
///       type: lets_encrypt
///       domains:
///         - static.example.com
///   # Add a CDN endpoint with a custom sub-domain to the Spaces Bucket
///   mycdn:
///     type: digitalocean:Cdn
///     properties:
///       origin: ${mybucket.bucketDomainName}
///       customDomain: static.example.com
///       certificateName: ${cert.name}
/// ```
///
///
/// ## Import
///
/// CDN Endpoints can be imported using the CDN `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/cdn:Cdn mycdn fb06ad00-351f-45c8-b5eb-13523c438661
/// ```
class Cdn extends pulumi.CustomResource {
  /// **Deprecated** The ID of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  late final pulumi.Output<String> certificateId;
  /// The unique name of a DigitalOcean managed TLS certificate used for SSL when a custom subdomain is provided.
  late final pulumi.Output<String> certificateName;
  /// The date and time when the CDN Endpoint was created.
  late final pulumi.Output<String> createdAt;
  /// The fully qualified domain name (FQDN) of the custom subdomain used with the CDN Endpoint.
  late final pulumi.Output<String?> customDomain;
  /// The fully qualified domain name (FQDN) from which the CDN-backed content is served.
  late final pulumi.Output<String> endpoint;
  /// The fully qualified domain name, (FQDN) for a Space.
  late final pulumi.Output<String> origin;
  /// The time to live for the CDN Endpoint, in seconds. Default is 3600 seconds.
  late final pulumi.Output<int> ttl;

  /// Creates a new [Cdn].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cdn]. {@macro pulumi_index_cdn_cdn_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cdn(
    String name, {
    CdnArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/cdn:Cdn',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateId = registerOutput<String>('certificateId');
    this.certificateName = registerOutput<String>('certificateName');
    this.createdAt = registerOutput<String>('createdAt');
    this.customDomain = registerOutput<String?>('customDomain');
    this.endpoint = registerOutput<String>('endpoint');
    this.origin = registerOutput<String>('origin');
    this.ttl = registerOutput<int>('ttl');
  }

  /// Gets an existing [Cdn] resource's state with the given [name] and [id].
  static Cdn get(
    String name,
    pulumi.Input<String> id, {
    CdnState? state,
  }) {
    return Cdn._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cdn._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/cdn:Cdn',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateId = registerOutput<String>('certificateId');
    this.certificateName = registerOutput<String>('certificateName');
    this.createdAt = registerOutput<String>('createdAt');
    this.customDomain = registerOutput<String?>('customDomain');
    this.endpoint = registerOutput<String>('endpoint');
    this.origin = registerOutput<String>('origin');
    this.ttl = registerOutput<int>('ttl');
  }
}
