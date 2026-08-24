import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_security_block_sender_args.dart';
import 'email_security_block_sender_state.dart';

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
/// const exampleEmailSecurityBlockSender = new cloudflare.EmailSecurityBlockSender("example_email_security_block_sender", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     isRegex: false,
///     pattern: "test@example.com",
///     patternType: "EMAIL",
///     comments: "block sender with email test@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_security_block_sender = cloudflare.EmailSecurityBlockSender("example_email_security_block_sender",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     is_regex=False,
///     pattern="test@example.com",
///     pattern_type="EMAIL",
///     comments="block sender with email test@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailSecurityBlockSender = new Cloudflare.EmailSecurityBlockSender("example_email_security_block_sender", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         IsRegex = false,
///         Pattern = "test@example.com",
///         PatternType = "EMAIL",
///         Comments = "block sender with email test@example.com",
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
/// 		_, err := cloudflare.NewEmailSecurityBlockSender(ctx, "example_email_security_block_sender", &cloudflare.EmailSecurityBlockSenderArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			IsRegex:     pulumi.Bool(false),
/// 			Pattern:     pulumi.String("test@example.com"),
/// 			PatternType: pulumi.String("EMAIL"),
/// 			Comments:    pulumi.String("block sender with email test@example.com"),
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
/// resource "cloudflare_emailsecurityblocksender" "example_email_security_block_sender" {
///   account_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   is_regex     = false
///   pattern      = "test@example.com"
///   pattern_type = "EMAIL"
///   comments     = "block sender with email test@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailSecurityBlockSender;
/// import com.pulumi.cloudflare.EmailSecurityBlockSenderArgs;
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
///         var exampleEmailSecurityBlockSender = new EmailSecurityBlockSender("exampleEmailSecurityBlockSender", EmailSecurityBlockSenderArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .isRegex(false)
///             .pattern("test@example.com")
///             .patternType("EMAIL")
///             .comments("block sender with email test@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailSecurityBlockSender:
///     type: cloudflare:EmailSecurityBlockSender
///     name: example_email_security_block_sender
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       isRegex: false
///       pattern: test@example.com
///       patternType: EMAIL
///       comments: block sender with email test@example.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailSecurityBlockSender:EmailSecurityBlockSender example '<account_id>/<pattern_id>'
/// ```
class EmailSecurityBlockSender extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String?> comments;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<bool> isRegex;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  late final pulumi.Output<String> lastModified;
  late final pulumi.Output<String> modifiedAt;
  /// The pattern value to match against. Format depends on `patternType`:
  /// - EMAIL: a valid email address, e.g. `user@example.com`
  /// - DOMAIN: a valid domain name, e.g. `example.com`
  /// - IP: a plain IPv4 address (e.g. `1.2.3.4`) or an IPv4 CIDR block (e.g. `1.2.3.0/24`). Only globally reachable addresses are accepted; private, loopback, link-local, and unspecified addresses are rejected.
  late final pulumi.Output<String> pattern;
  /// Type of pattern matching.
  /// - EMAIL: matches a full email address (e.g. `user@example.com`)
  /// - DOMAIN: matches a domain name (e.g. `example.com`)
  /// - IP: matches a plain IPv4 address (e.g. `1.2.3.4`) or an IPv4 CIDR block (e.g. `1.2.3.0/24`). Only globally reachable addresses are accepted.
  /// - UNKNOWN: deprecated, cannot be used when creating or updating policies, but may be returned for existing entries.
  /// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
  late final pulumi.Output<String> patternType;

  /// Creates a new [EmailSecurityBlockSender].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailSecurityBlockSender]. {@macro pulumi_index_email_security_block_sender_email_security_block_sender_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailSecurityBlockSender(
    String name, {
    EmailSecurityBlockSenderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityBlockSender:EmailSecurityBlockSender',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    isRegex = registerOutput<bool>('isRegex');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    pattern = registerOutput<String>('pattern');
    patternType = registerOutput<String>('patternType');
  }

  /// Gets an existing [EmailSecurityBlockSender] resource's state with the given [name] and [id].
  static EmailSecurityBlockSender get(
    String name,
    pulumi.Input<String> id, {
    EmailSecurityBlockSenderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailSecurityBlockSender._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailSecurityBlockSender._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityBlockSender:EmailSecurityBlockSender',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    isRegex = registerOutput<bool>('isRegex');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    pattern = registerOutput<String>('pattern');
    patternType = registerOutput<String>('patternType');
  }

  /// Creates a typed reference to an existing [EmailSecurityBlockSender] resource.
  EmailSecurityBlockSender.reference(String urn)
    : super(
        'cloudflare:index/emailSecurityBlockSender:EmailSecurityBlockSender',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    isRegex = registerOutput<bool>('isRegex');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    pattern = registerOutput<String>('pattern');
    patternType = registerOutput<String>('patternType');
  }
}
