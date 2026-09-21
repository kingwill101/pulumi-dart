import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_security_allow_policy_args.dart';
import 'email_security_allow_policy_state.dart';

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
/// const exampleEmailSecurityAllowPolicy = new cloudflare.EmailSecurityAllowPolicy("example_email_security_allow_policy", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     isAcceptableSender: false,
///     isExemptRecipient: false,
///     isRegex: false,
///     isTrustedSender: true,
///     pattern: "test@example.com",
///     patternType: "EMAIL",
///     verifySender: true,
///     comments: "Trust all messages send from test@example.com",
///     isRecipient: false,
///     isSender: true,
///     isSpoof: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_security_allow_policy = cloudflare.EmailSecurityAllowPolicy("example_email_security_allow_policy",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     is_acceptable_sender=False,
///     is_exempt_recipient=False,
///     is_regex=False,
///     is_trusted_sender=True,
///     pattern="test@example.com",
///     pattern_type="EMAIL",
///     verify_sender=True,
///     comments="Trust all messages send from test@example.com",
///     is_recipient=False,
///     is_sender=True,
///     is_spoof=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailSecurityAllowPolicy = new Cloudflare.EmailSecurityAllowPolicy("example_email_security_allow_policy", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         IsAcceptableSender = false,
///         IsExemptRecipient = false,
///         IsRegex = false,
///         IsTrustedSender = true,
///         Pattern = "test@example.com",
///         PatternType = "EMAIL",
///         VerifySender = true,
///         Comments = "Trust all messages send from test@example.com",
///         IsRecipient = false,
///         IsSender = true,
///         IsSpoof = false,
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
/// 		_, err := cloudflare.NewEmailSecurityAllowPolicy(ctx, "example_email_security_allow_policy", &cloudflare.EmailSecurityAllowPolicyArgs{
/// 			AccountId:          pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			IsAcceptableSender: pulumi.Bool(false),
/// 			IsExemptRecipient:  pulumi.Bool(false),
/// 			IsRegex:            pulumi.Bool(false),
/// 			IsTrustedSender:    pulumi.Bool(true),
/// 			Pattern:            pulumi.String("test@example.com"),
/// 			PatternType:        pulumi.String("EMAIL"),
/// 			VerifySender:       pulumi.Bool(true),
/// 			Comments:           pulumi.String("Trust all messages send from test@example.com"),
/// 			IsRecipient:        pulumi.Bool(false),
/// 			IsSender:           pulumi.Bool(true),
/// 			IsSpoof:            pulumi.Bool(false),
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
/// resource "cloudflare_emailsecurityallowpolicy" "example_email_security_allow_policy" {
///   account_id           = "023e105f4ecef8ad9ca31a8372d0c353"
///   is_acceptable_sender = false
///   is_exempt_recipient  = false
///   is_regex             = false
///   is_trusted_sender    = true
///   pattern              = "test@example.com"
///   pattern_type         = "EMAIL"
///   verify_sender        = true
///   comments             = "Trust all messages send from test@example.com"
///   is_recipient         = false
///   is_sender            = true
///   is_spoof             = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailSecurityAllowPolicy;
/// import com.pulumi.cloudflare.EmailSecurityAllowPolicyArgs;
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
///         var exampleEmailSecurityAllowPolicy = new EmailSecurityAllowPolicy("exampleEmailSecurityAllowPolicy", EmailSecurityAllowPolicyArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .isAcceptableSender(false)
///             .isExemptRecipient(false)
///             .isRegex(false)
///             .isTrustedSender(true)
///             .pattern("test@example.com")
///             .patternType("EMAIL")
///             .verifySender(true)
///             .comments("Trust all messages send from test@example.com")
///             .isRecipient(false)
///             .isSender(true)
///             .isSpoof(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailSecurityAllowPolicy:
///     type: cloudflare:EmailSecurityAllowPolicy
///     name: example_email_security_allow_policy
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       isAcceptableSender: false
///       isExemptRecipient: false
///       isRegex: false
///       isTrustedSender: true
///       pattern: test@example.com
///       patternType: EMAIL
///       verifySender: true
///       comments: Trust all messages send from test@example.com
///       isRecipient: false
///       isSender: true
///       isSpoof: false
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailSecurityAllowPolicy:EmailSecurityAllowPolicy example '<account_id>/<policy_id>'
/// ```
class EmailSecurityAllowPolicy extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String?> comments;
  late final pulumi.Output<String> createdAt;
  /// Exempts messages from this sender from Spam, Spoof and Bulk dispositions only; Malicious and Suspicious dispositions still apply.
  late final pulumi.Output<bool> isAcceptableSender;
  /// Bypasses all detections for messages to this recipient.
  late final pulumi.Output<bool> isExemptRecipient;
  /// Deprecated as of July 1, 2025. Use `isExemptRecipient` instead. End of life: July 1, 2026.
  late final pulumi.Output<bool?> isRecipient;
  late final pulumi.Output<bool> isRegex;
  /// Deprecated as of July 1, 2025. Use `isTrustedSender` instead. End of life: July 1, 2026.
  late final pulumi.Output<bool?> isSender;
  /// Deprecated as of July 1, 2025. Use `isAcceptableSender` instead. End of life: July 1, 2026.
  late final pulumi.Output<bool?> isSpoof;
  /// Bypasses all detections and link following for messages from this sender.
  late final pulumi.Output<bool> isTrustedSender;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  late final pulumi.Output<String> lastModified;
  late final pulumi.Output<String> modifiedAt;
  /// The pattern value to match. The format depends on `patternType`: a valid email address for EMAIL (e.g. `user@example.com`), a valid domain name for DOMAIN (e.g. `example.com`), or a plain IPv4 or IPv6 address or CIDR block for IP (e.g. `1.2.3.4`, `1.2.3.0/24`, `2606:4700:4700::1111`, or `2606:4700:4700::/48`); the API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  late final pulumi.Output<String> pattern;
  /// Type of pattern matching.
  /// - EMAIL: matches a full email address (e.g. `user@example.com`)
  /// - DOMAIN: matches a domain name (e.g. `example.com`)
  /// - IP: matches a plain IPv4 or IPv6 address (e.g. `1.2.3.4` or `2606:4700:4700::1111`) or CIDR block (e.g. `1.2.3.0/24` or `2606:4700:4700::/48`). The API rejects private or unique-local, loopback, link-local, unspecified, and IPv4 broadcast addresses, including their IPv4-mapped IPv6 equivalents.
  /// - UNKNOWN: deprecated; you cannot use this when creating or updating policies, but it may appear on existing entries.
  /// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
  late final pulumi.Output<String> patternType;
  /// Enforce DMARC, SPF or DKIM authentication. When on, Email Security only honors policies that pass authentication.
  late final pulumi.Output<bool> verifySender;

  /// Creates a new [EmailSecurityAllowPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailSecurityAllowPolicy]. {@macro pulumi_index_email_security_allow_policy_email_security_allow_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailSecurityAllowPolicy(
    String name, {
    EmailSecurityAllowPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityAllowPolicy:EmailSecurityAllowPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.21.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    isAcceptableSender = registerOutput<bool>('isAcceptableSender');
    isExemptRecipient = registerOutput<bool>('isExemptRecipient');
    isRecipient = registerOutput<bool?>('isRecipient');
    isRegex = registerOutput<bool>('isRegex');
    isSender = registerOutput<bool?>('isSender');
    isSpoof = registerOutput<bool?>('isSpoof');
    isTrustedSender = registerOutput<bool>('isTrustedSender');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    pattern = registerOutput<String>('pattern');
    patternType = registerOutput<String>('patternType');
    verifySender = registerOutput<bool>('verifySender');
  }

  /// Gets an existing [EmailSecurityAllowPolicy] resource's state with the given [name] and [id].
  static EmailSecurityAllowPolicy get(
    String name,
    pulumi.Input<String> id, {
    EmailSecurityAllowPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailSecurityAllowPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailSecurityAllowPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityAllowPolicy:EmailSecurityAllowPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    isAcceptableSender = registerOutput<bool>('isAcceptableSender');
    isExemptRecipient = registerOutput<bool>('isExemptRecipient');
    isRecipient = registerOutput<bool?>('isRecipient');
    isRegex = registerOutput<bool>('isRegex');
    isSender = registerOutput<bool?>('isSender');
    isSpoof = registerOutput<bool?>('isSpoof');
    isTrustedSender = registerOutput<bool>('isTrustedSender');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    pattern = registerOutput<String>('pattern');
    patternType = registerOutput<String>('patternType');
    verifySender = registerOutput<bool>('verifySender');
  }

  /// Creates a typed reference to an existing [EmailSecurityAllowPolicy] resource.
  EmailSecurityAllowPolicy.reference(String urn)
    : super(
        'cloudflare:index/emailSecurityAllowPolicy:EmailSecurityAllowPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    comments = registerOutput<String?>('comments');
    createdAt = registerOutput<String>('createdAt');
    isAcceptableSender = registerOutput<bool>('isAcceptableSender');
    isExemptRecipient = registerOutput<bool>('isExemptRecipient');
    isRecipient = registerOutput<bool?>('isRecipient');
    isRegex = registerOutput<bool>('isRegex');
    isSender = registerOutput<bool?>('isSender');
    isSpoof = registerOutput<bool?>('isSpoof');
    isTrustedSender = registerOutput<bool>('isTrustedSender');
    lastModified = registerOutput<String>('lastModified');
    modifiedAt = registerOutput<String>('modifiedAt');
    pattern = registerOutput<String>('pattern');
    patternType = registerOutput<String>('patternType');
    verifySender = registerOutput<bool>('verifySender');
  }
}
