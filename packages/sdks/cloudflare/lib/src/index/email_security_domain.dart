import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_security_domain_args.dart';
import 'email_security_domain_authorization.dart';
import 'email_security_domain_emails_processed.dart';
import 'email_security_domain_state.dart';

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
/// const exampleEmailSecurityDomain = new cloudflare.EmailSecurityDomain("example_email_security_domain", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     allowedDeliveryModes: ["DIRECT"],
///     domain: "domain",
///     dropDispositions: ["MALICIOUS"],
///     ipRestrictions: [
///         "192.0.2.0/24",
///         "2001:db8::/32",
///     ],
///     regions: ["GLOBAL"],
///     folder: "AllItems",
///     integrationId: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     lookbackHops: 1,
///     requireTlsInbound: true,
///     requireTlsOutbound: true,
///     transport: "transport",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_security_domain = cloudflare.EmailSecurityDomain("example_email_security_domain",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     allowed_delivery_modes=["DIRECT"],
///     domain="domain",
///     drop_dispositions=["MALICIOUS"],
///     ip_restrictions=[
///         "192.0.2.0/24",
///         "2001:db8::/32",
///     ],
///     regions=["GLOBAL"],
///     folder="AllItems",
///     integration_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///     lookback_hops=1,
///     require_tls_inbound=True,
///     require_tls_outbound=True,
///     transport="transport")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailSecurityDomain = new Cloudflare.EmailSecurityDomain("example_email_security_domain", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         AllowedDeliveryModes = new[]
///         {
///             "DIRECT",
///         },
///         Domain = "domain",
///         DropDispositions = new[]
///         {
///             "MALICIOUS",
///         },
///         IpRestrictions = new[]
///         {
///             "192.0.2.0/24",
///             "2001:db8::/32",
///         },
///         Regions = new[]
///         {
///             "GLOBAL",
///         },
///         Folder = "AllItems",
///         IntegrationId = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
///         LookbackHops = 1,
///         RequireTlsInbound = true,
///         RequireTlsOutbound = true,
///         Transport = "transport",
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
/// 		_, err := cloudflare.NewEmailSecurityDomain(ctx, "example_email_security_domain", &cloudflare.EmailSecurityDomainArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			AllowedDeliveryModes: pulumi.StringArray{
/// 				pulumi.String("DIRECT"),
/// 			},
/// 			Domain: pulumi.String("domain"),
/// 			DropDispositions: pulumi.StringArray{
/// 				pulumi.String("MALICIOUS"),
/// 			},
/// 			IpRestrictions: pulumi.StringArray{
/// 				pulumi.String("192.0.2.0/24"),
/// 				pulumi.String("2001:db8::/32"),
/// 			},
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("GLOBAL"),
/// 			},
/// 			Folder:             pulumi.String("AllItems"),
/// 			IntegrationId:      pulumi.String("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"),
/// 			LookbackHops:       pulumi.Int(1),
/// 			RequireTlsInbound:  pulumi.Bool(true),
/// 			RequireTlsOutbound: pulumi.Bool(true),
/// 			Transport:          pulumi.String("transport"),
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
/// resource "cloudflare_emailsecuritydomain" "example_email_security_domain" {
///   account_id             = "023e105f4ecef8ad9ca31a8372d0c353"
///   allowed_delivery_modes = ["DIRECT"]
///   domain                 = "domain"
///   drop_dispositions      = ["MALICIOUS"]
///   ip_restrictions        = ["192.0.2.0/24", "2001:db8::/32"]
///   regions                = ["GLOBAL"]
///   folder                 = "AllItems"
///   integration_id         = "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
///   lookback_hops          = 1
///   require_tls_inbound    = true
///   require_tls_outbound   = true
///   transport              = "transport"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailSecurityDomain;
/// import com.pulumi.cloudflare.EmailSecurityDomainArgs;
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
///         var exampleEmailSecurityDomain = new EmailSecurityDomain("exampleEmailSecurityDomain", EmailSecurityDomainArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .allowedDeliveryModes("DIRECT")
///             .domain("domain")
///             .dropDispositions("MALICIOUS")
///             .ipRestrictions(
///                 "192.0.2.0/24",
///                 "2001:db8::/32")
///             .regions("GLOBAL")
///             .folder("AllItems")
///             .integrationId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
///             .lookbackHops(1)
///             .requireTlsInbound(true)
///             .requireTlsOutbound(true)
///             .transport("transport")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailSecurityDomain:
///     type: cloudflare:EmailSecurityDomain
///     name: example_email_security_domain
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       allowedDeliveryModes:
///         - DIRECT
///       domain: domain
///       dropDispositions:
///         - MALICIOUS
///       ipRestrictions:
///         - 192.0.2.0/24
///         - 2001:db8::/32
///       regions:
///         - GLOBAL
///       folder: AllItems
///       integrationId: 182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e
///       lookbackHops: 1
///       requireTlsInbound: true
///       requireTlsOutbound: true
///       transport: transport
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailSecurityDomain:EmailSecurityDomain example '<account_id>/<domain_id>'
/// ```
class EmailSecurityDomain extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<List<String>> allowedDeliveryModes;
  late final pulumi.Output<EmailSecurityDomainAuthorization> authorization;
  late final pulumi.Output<String> createdAt;
  /// Available values: "none", "good", "invalid".
  late final pulumi.Output<String> dmarcStatus;
  late final pulumi.Output<String> domain;
  late final pulumi.Output<List<String>> dropDispositions;
  late final pulumi.Output<EmailSecurityDomainEmailsProcessed> emailsProcessed;
  /// Available values: "AllItems", "Inbox".
  late final pulumi.Output<String> folder;
  /// Available values: "Microsoft", "Google".
  late final pulumi.Output<String> inboxProvider;
  late final pulumi.Output<String?> integrationId;
  late final pulumi.Output<List<String>> ipRestrictions;
  /// Deprecated, use `modifiedAt` instead. End of life: November 1, 2026.
  late final pulumi.Output<String> lastModified;
  late final pulumi.Output<int> lookbackHops;
  late final pulumi.Output<String> modifiedAt;
  late final pulumi.Output<String> o365TenantId;
  late final pulumi.Output<List<String>> regions;
  late final pulumi.Output<bool> requireTlsInbound;
  late final pulumi.Output<bool> requireTlsOutbound;
  /// Available values: "none", "good", "neutral", "open", "invalid".
  late final pulumi.Output<String> spfStatus;
  /// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
  late final pulumi.Output<String> status;
  late final pulumi.Output<String?> transport;

  /// Creates a new [EmailSecurityDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailSecurityDomain]. {@macro pulumi_index_email_security_domain_email_security_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailSecurityDomain(
    String name, {
    EmailSecurityDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityDomain:EmailSecurityDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.21.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    allowedDeliveryModes = registerOutput<List<String>>('allowedDeliveryModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authorization = registerOutput<EmailSecurityDomainAuthorization>('authorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailSecurityDomainAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    dmarcStatus = registerOutput<String>('dmarcStatus');
    domain = registerOutput<String>('domain');
    dropDispositions = registerOutput<List<String>>('dropDispositions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailsProcessed = registerOutput<EmailSecurityDomainEmailsProcessed>('emailsProcessed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailSecurityDomainEmailsProcessed.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    folder = registerOutput<String>('folder');
    inboxProvider = registerOutput<String>('inboxProvider');
    integrationId = registerOutput<String?>('integrationId');
    ipRestrictions = registerOutput<List<String>>('ipRestrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastModified = registerOutput<String>('lastModified');
    lookbackHops = registerOutput<int>('lookbackHops');
    modifiedAt = registerOutput<String>('modifiedAt');
    o365TenantId = registerOutput<String>('o365TenantId');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    requireTlsInbound = registerOutput<bool>('requireTlsInbound');
    requireTlsOutbound = registerOutput<bool>('requireTlsOutbound');
    spfStatus = registerOutput<String>('spfStatus');
    status = registerOutput<String>('status');
    transport = registerOutput<String?>('transport');
  }

  /// Gets an existing [EmailSecurityDomain] resource's state with the given [name] and [id].
  static EmailSecurityDomain get(
    String name,
    pulumi.Input<String> id, {
    EmailSecurityDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailSecurityDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailSecurityDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSecurityDomain:EmailSecurityDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    allowedDeliveryModes = registerOutput<List<String>>('allowedDeliveryModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authorization = registerOutput<EmailSecurityDomainAuthorization>('authorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailSecurityDomainAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    dmarcStatus = registerOutput<String>('dmarcStatus');
    domain = registerOutput<String>('domain');
    dropDispositions = registerOutput<List<String>>('dropDispositions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailsProcessed = registerOutput<EmailSecurityDomainEmailsProcessed>('emailsProcessed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailSecurityDomainEmailsProcessed.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    folder = registerOutput<String>('folder');
    inboxProvider = registerOutput<String>('inboxProvider');
    integrationId = registerOutput<String?>('integrationId');
    ipRestrictions = registerOutput<List<String>>('ipRestrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastModified = registerOutput<String>('lastModified');
    lookbackHops = registerOutput<int>('lookbackHops');
    modifiedAt = registerOutput<String>('modifiedAt');
    o365TenantId = registerOutput<String>('o365TenantId');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    requireTlsInbound = registerOutput<bool>('requireTlsInbound');
    requireTlsOutbound = registerOutput<bool>('requireTlsOutbound');
    spfStatus = registerOutput<String>('spfStatus');
    status = registerOutput<String>('status');
    transport = registerOutput<String?>('transport');
  }

  /// Creates a typed reference to an existing [EmailSecurityDomain] resource.
  EmailSecurityDomain.reference(String urn)
    : super(
        'cloudflare:index/emailSecurityDomain:EmailSecurityDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    allowedDeliveryModes = registerOutput<List<String>>('allowedDeliveryModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authorization = registerOutput<EmailSecurityDomainAuthorization>('authorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailSecurityDomainAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    dmarcStatus = registerOutput<String>('dmarcStatus');
    domain = registerOutput<String>('domain');
    dropDispositions = registerOutput<List<String>>('dropDispositions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    emailsProcessed = registerOutput<EmailSecurityDomainEmailsProcessed>('emailsProcessed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailSecurityDomainEmailsProcessed.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    folder = registerOutput<String>('folder');
    inboxProvider = registerOutput<String>('inboxProvider');
    integrationId = registerOutput<String?>('integrationId');
    ipRestrictions = registerOutput<List<String>>('ipRestrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    lastModified = registerOutput<String>('lastModified');
    lookbackHops = registerOutput<int>('lookbackHops');
    modifiedAt = registerOutput<String>('modifiedAt');
    o365TenantId = registerOutput<String>('o365TenantId');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    requireTlsInbound = registerOutput<bool>('requireTlsInbound');
    requireTlsOutbound = registerOutput<bool>('requireTlsOutbound');
    spfStatus = registerOutput<String>('spfStatus');
    status = registerOutput<String>('status');
    transport = registerOutput<String?>('transport');
  }
}
