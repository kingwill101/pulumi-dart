import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_resource_library_application_args.dart';
import 'zero_trust_resource_library_application_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustResourceLibraryApplication = new cloudflare.ZeroTrustResourceLibraryApplication("example_zero_trust_resource_library_application", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     categoryId: 12,
///     humanId: "HR",
///     name: "HR",
///     hostnames: [
///         "example.com",
///         "foo.com",
///     ],
///     ipSubnets: [
///         "192.168.1.0/24",
///         "10.0.0.0/8",
///     ],
///     portProtocols: [
///         "tcp/80",
///         "tcp/443",
///     ],
///     supportDomains: [
///         "example.com",
///         "foo.com",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_resource_library_application = cloudflare.ZeroTrustResourceLibraryApplication("example_zero_trust_resource_library_application",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     category_id=12,
///     human_id="HR",
///     name="HR",
///     hostnames=[
///         "example.com",
///         "foo.com",
///     ],
///     ip_subnets=[
///         "192.168.1.0/24",
///         "10.0.0.0/8",
///     ],
///     port_protocols=[
///         "tcp/80",
///         "tcp/443",
///     ],
///     support_domains=[
///         "example.com",
///         "foo.com",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustResourceLibraryApplication = new Cloudflare.ZeroTrustResourceLibraryApplication("example_zero_trust_resource_library_application", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         CategoryId = 12,
///         HumanId = "HR",
///         Name = "HR",
///         Hostnames = new[]
///         {
///             "example.com",
///             "foo.com",
///         },
///         IpSubnets = new[]
///         {
///             "192.168.1.0/24",
///             "10.0.0.0/8",
///         },
///         PortProtocols = new[]
///         {
///             "tcp/80",
///             "tcp/443",
///         },
///         SupportDomains = new[]
///         {
///             "example.com",
///             "foo.com",
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
/// 		_, err := cloudflare.NewZeroTrustResourceLibraryApplication(ctx, "example_zero_trust_resource_library_application", &cloudflare.ZeroTrustResourceLibraryApplicationArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			CategoryId: pulumi.Int(12),
/// 			HumanId:    pulumi.String("HR"),
/// 			Name:       pulumi.String("HR"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("example.com"),
/// 				pulumi.String("foo.com"),
/// 			},
/// 			IpSubnets: pulumi.StringArray{
/// 				pulumi.String("192.168.1.0/24"),
/// 				pulumi.String("10.0.0.0/8"),
/// 			},
/// 			PortProtocols: pulumi.StringArray{
/// 				pulumi.String("tcp/80"),
/// 				pulumi.String("tcp/443"),
/// 			},
/// 			SupportDomains: pulumi.StringArray{
/// 				pulumi.String("example.com"),
/// 				pulumi.String("foo.com"),
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
/// resource "cloudflare_zerotrustresourcelibraryapplication" "example_zero_trust_resource_library_application" {
///   account_id      = "023e105f4ecef8ad9ca31a8372d0c353"
///   category_id     = 12
///   human_id        = "HR"
///   name            = "HR"
///   hostnames       = ["example.com", "foo.com"]
///   ip_subnets      = ["192.168.1.0/24", "10.0.0.0/8"]
///   port_protocols  = ["tcp/80", "tcp/443"]
///   support_domains = ["example.com", "foo.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustResourceLibraryApplication;
/// import com.pulumi.cloudflare.ZeroTrustResourceLibraryApplicationArgs;
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
///         var exampleZeroTrustResourceLibraryApplication = new ZeroTrustResourceLibraryApplication("exampleZeroTrustResourceLibraryApplication", ZeroTrustResourceLibraryApplicationArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .categoryId(12)
///             .humanId("HR")
///             .name("HR")
///             .hostnames(
///                 "example.com",
///                 "foo.com")
///             .ipSubnets(
///                 "192.168.1.0/24",
///                 "10.0.0.0/8")
///             .portProtocols(
///                 "tcp/80",
///                 "tcp/443")
///             .supportDomains(
///                 "example.com",
///                 "foo.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustResourceLibraryApplication:
///     type: cloudflare:ZeroTrustResourceLibraryApplication
///     name: example_zero_trust_resource_library_application
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       categoryId: 12
///       humanId: HR
///       name: HR
///       hostnames:
///         - example.com
///         - foo.com
///       ipSubnets:
///         - 192.168.1.0/24
///         - 10.0.0.0/8
///       portProtocols:
///         - tcp/80
///         - tcp/443
///       supportDomains:
///         - example.com
///         - foo.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustResourceLibraryApplication:ZeroTrustResourceLibraryApplication example '<account_id>/<id>'
/// ```
class ZeroTrustResourceLibraryApplication extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Confidence score for the application. Returns -1 when no score is available.
  late final pulumi.Output<double> applicationConfidenceScore;
  /// Returns the score composition breakdown for the application.
  late final pulumi.Output<String> applicationScoreComposition;
  /// Returns the application source.
  late final pulumi.Output<String> applicationSource;
  /// Returns the application type.
  late final pulumi.Output<String> applicationType;
  /// Returns the application type description.
  late final pulumi.Output<String> applicationTypeDescription;
  /// Returns the category ID.
  late final pulumi.Output<int> categoryId;
  /// Returns the application creation time.
  late final pulumi.Output<String> createdAt;
  /// GenAI score for the application. Returns -1 when no score is available.
  late final pulumi.Output<double> genAiScore;
  /// Hostnames matched by the application.
  late final pulumi.Output<List<String>?> hostnames;
  /// Returns the human readable ID.
  late final pulumi.Output<String> humanId;
  /// IP subnets matched by the application.
  late final pulumi.Output<List<String>?> ipSubnets;
  /// Returns the application name.
  late final pulumi.Output<String> name;
  /// Port and protocol pairs matched by the application.
  late final pulumi.Output<List<String>?> portProtocols;
  /// Support domains matched by the application.
  late final pulumi.Output<List<String>?> supportDomains;
  /// Cloudflare products that support this application.
  late final pulumi.Output<List<String>> supporteds;
  /// Returns the application update time.
  late final pulumi.Output<String> updatedAt;
  /// Returns the application version.
  late final pulumi.Output<String> version;

  /// Creates a new [ZeroTrustResourceLibraryApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustResourceLibraryApplication]. {@macro pulumi_index_zero_trust_resource_library_application_zero_trust_resource_library_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustResourceLibraryApplication(
    String name, {
    ZeroTrustResourceLibraryApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustResourceLibraryApplication:ZeroTrustResourceLibraryApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.21.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    applicationConfidenceScore = registerOutput<double>('applicationConfidenceScore');
    applicationScoreComposition = registerOutput<String>('applicationScoreComposition');
    applicationSource = registerOutput<String>('applicationSource');
    applicationType = registerOutput<String>('applicationType');
    applicationTypeDescription = registerOutput<String>('applicationTypeDescription');
    categoryId = registerOutput<int>('categoryId');
    createdAt = registerOutput<String>('createdAt');
    genAiScore = registerOutput<double>('genAiScore');
    hostnames = registerOutput<List<String>?>('hostnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    humanId = registerOutput<String>('humanId');
    ipSubnets = registerOutput<List<String>?>('ipSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    portProtocols = registerOutput<List<String>?>('portProtocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportDomains = registerOutput<List<String>?>('supportDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supporteds = registerOutput<List<String>>('supporteds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [ZeroTrustResourceLibraryApplication] resource's state with the given [name] and [id].
  static ZeroTrustResourceLibraryApplication get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustResourceLibraryApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustResourceLibraryApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustResourceLibraryApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustResourceLibraryApplication:ZeroTrustResourceLibraryApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    applicationConfidenceScore = registerOutput<double>('applicationConfidenceScore');
    applicationScoreComposition = registerOutput<String>('applicationScoreComposition');
    applicationSource = registerOutput<String>('applicationSource');
    applicationType = registerOutput<String>('applicationType');
    applicationTypeDescription = registerOutput<String>('applicationTypeDescription');
    categoryId = registerOutput<int>('categoryId');
    createdAt = registerOutput<String>('createdAt');
    genAiScore = registerOutput<double>('genAiScore');
    hostnames = registerOutput<List<String>?>('hostnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    humanId = registerOutput<String>('humanId');
    ipSubnets = registerOutput<List<String>?>('ipSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    portProtocols = registerOutput<List<String>?>('portProtocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportDomains = registerOutput<List<String>?>('supportDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supporteds = registerOutput<List<String>>('supporteds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [ZeroTrustResourceLibraryApplication] resource.
  ZeroTrustResourceLibraryApplication.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustResourceLibraryApplication:ZeroTrustResourceLibraryApplication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    applicationConfidenceScore = registerOutput<double>('applicationConfidenceScore');
    applicationScoreComposition = registerOutput<String>('applicationScoreComposition');
    applicationSource = registerOutput<String>('applicationSource');
    applicationType = registerOutput<String>('applicationType');
    applicationTypeDescription = registerOutput<String>('applicationTypeDescription');
    categoryId = registerOutput<int>('categoryId');
    createdAt = registerOutput<String>('createdAt');
    genAiScore = registerOutput<double>('genAiScore');
    hostnames = registerOutput<List<String>?>('hostnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    humanId = registerOutput<String>('humanId');
    ipSubnets = registerOutput<List<String>?>('ipSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    portProtocols = registerOutput<List<String>?>('portProtocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supportDomains = registerOutput<List<String>?>('supportDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    supporteds = registerOutput<List<String>>('supporteds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
  }
}
