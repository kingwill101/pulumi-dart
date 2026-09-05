import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_security_trusted_domains_args.dart';
import 'email_security_trusted_domains_state.dart';

/// Accepted Permissions
///
/// - `Cloud Email Security: Read`
/// - `Cloud Email Security: Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleEmailSecurityTrustedDomains = new cloudflare.EmailSecurityTrustedDomains("example_email_security_trusted_domains", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     isRecent: true,
///     isRegex: false,
///     isSimilarity: false,
///     pattern: "example.com",
///     comments: null,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_security_trusted_domains = cloudflare.EmailSecurityTrustedDomains("example_email_security_trusted_domains",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     is_recent=True,
///     is_regex=False,
///     is_similarity=False,
///     pattern="example.com",
///     comments=None)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailSecurityTrustedDomains = new Cloudflare.EmailSecurityTrustedDomains("example_email_security_trusted_domains", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         IsRecent = true,
///         IsRegex = false,
///         IsSimilarity = false,
///         Pattern = "example.com",
///         Comments = null,
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
/// 		_, err := cloudflare.NewEmailSecurityTrustedDomains(ctx, "example_email_security_trusted_domains", &cloudflare.EmailSecurityTrustedDomainsArgs{
/// 			AccountId:    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			IsRecent:     pulumi.Bool(true),
/// 			IsRegex:      pulumi.Bool(false),
/// 			IsSimilarity: pulumi.Bool(false),
/// 			Pattern:      pulumi.String("example.com"),
/// 			Comments:     nil,
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
/// resource "cloudflare_emailsecuritytrusteddomains" "example_email_security_trusted_domains" {
///   account_id    = "023e105f4ecef8ad9ca31a8372d0c353"
///   is_recent     = true
///   is_regex      = false
///   is_similarity = false
///   pattern       = "example.com"
///   comments      = null
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailSecurityTrustedDomains;
/// import com.pulumi.cloudflare.EmailSecurityTrustedDomainsArgs;
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
///         var exampleEmailSecurityTrustedDomains = new EmailSecurityTrustedDomains("exampleEmailSecurityTrustedDomains", EmailSecurityTrustedDomainsArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .isRecent(true)
///             .isRegex(false)
///             .isSimilarity(false)
///             .pattern("example.com")
///             .comments(null)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailSecurityTrustedDomains:
///     type: cloudflare:EmailSecurityTrustedDomains
///     name: example_email_security_trusted_domains
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       isRecent: true
///       isRegex: false
///       isSimilarity: false
///       pattern: example.com
///       comments: null
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailSecurityTrustedDomains:EmailSecurityTrustedDomains example '<account_id>/<trusted_domain_id>'
/// ```
class EmailSecurityTrustedDomains extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String?> comments;
  late final pulumi.Output<String> createdAt;
  /// Select to prevent recently registered domains from triggering a Suspicious or Malicious disposition.
  late final pulumi.Output<bool?> isRecent;
  late final pulumi.Output<bool?> isRegex;
  /// Select for partner or other approved domains that have similar spelling to your connected domains. Prevents listed domains from triggering a Spoof disposition.
  late final pulumi.Output<bool?> isSimilarity;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  late final pulumi.Output<String> lastModified;
  late final pulumi.Output<String> modifiedAt;
  late final pulumi.Output<String> pattern;

  /// Creates a new [EmailSecurityTrustedDomains].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailSecurityTrustedDomains]. {@macro pulumi_index_email_security_trusted_domains_email_security_trusted_domains_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailSecurityTrustedDomains(
    String name, {
    EmailSecurityTrustedDomainsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityTrustedDomains:EmailSecurityTrustedDomains',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    isRecent = registerOutput<bool?>('isRecent');
    isRegex = registerOutput<bool?>('isRegex');
    isSimilarity = registerOutput<bool?>('isSimilarity');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    pattern = registerOutput<String>('pattern');
  }

  /// Gets an existing [EmailSecurityTrustedDomains] resource's state with the given [name] and [id].
  static EmailSecurityTrustedDomains get(
    String name,
    pulumi.Input<String> id, {
    EmailSecurityTrustedDomainsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailSecurityTrustedDomains._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailSecurityTrustedDomains._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityTrustedDomains:EmailSecurityTrustedDomains',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    isRecent = registerOutput<bool?>('isRecent');
    isRegex = registerOutput<bool?>('isRegex');
    isSimilarity = registerOutput<bool?>('isSimilarity');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    pattern = registerOutput<String>('pattern');
  }

  /// Creates a typed reference to an existing [EmailSecurityTrustedDomains] resource.
  EmailSecurityTrustedDomains.reference(String urn)
    : super(
        'cloudflare:index/emailSecurityTrustedDomains:EmailSecurityTrustedDomains',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    isRecent = registerOutput<bool?>('isRecent');
    isRegex = registerOutput<bool?>('isRegex');
    isSimilarity = registerOutput<bool?>('isSimilarity');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    pattern = registerOutput<String>('pattern');
  }
}
