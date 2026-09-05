import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_dns_args.dart';
import 'email_routing_dns_error.dart';
import 'email_routing_dns_message.dart';
import 'email_routing_dns_result.dart';
import 'email_routing_dns_result_info.dart';
import 'email_routing_dns_state.dart';

/// Accepted Permissions
///
/// - `Zone Settings Read`
/// - `Zone Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleEmailRoutingDns = new cloudflare.EmailRoutingDns("example_email_routing_dns", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "example.net",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_routing_dns = cloudflare.EmailRoutingDns("example_email_routing_dns",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="example.net")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailRoutingDns = new Cloudflare.EmailRoutingDns("example_email_routing_dns", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "example.net",
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
/// 		_, err := cloudflare.NewEmailRoutingDns(ctx, "example_email_routing_dns", &cloudflare.EmailRoutingDnsArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:   pulumi.String("example.net"),
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
/// resource "cloudflare_emailroutingdns" "example_email_routing_dns" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name    = "example.net"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailRoutingDns;
/// import com.pulumi.cloudflare.EmailRoutingDnsArgs;
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
///         var exampleEmailRoutingDns = new EmailRoutingDns("exampleEmailRoutingDns", EmailRoutingDnsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("example.net")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailRoutingDns:
///     type: cloudflare:EmailRoutingDns
///     name: example_email_routing_dns
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: example.net
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailRoutingDns:EmailRoutingDns example '<zone_id>'
/// ```
class EmailRoutingDns extends pulumi.CustomResource {
  /// The date and time the settings have been created.
  late final pulumi.Output<String> created;
  /// State of the zone settings for Email Routing.
  late final pulumi.Output<bool> enabled;
  late final pulumi.Output<List<EmailRoutingDnsError>> errors;
  late final pulumi.Output<List<EmailRoutingDnsMessage>> messages;
  /// The date and time the settings have been modified.
  late final pulumi.Output<String> modified;
  /// Domain of your zone.
  late final pulumi.Output<String?> name;
  late final pulumi.Output<EmailRoutingDnsResult> result;
  late final pulumi.Output<EmailRoutingDnsResultInfo> resultInfo;
  /// Flag to check if the user skipped the configuration wizard.
  late final pulumi.Output<bool> skipWizard;
  /// Show the state of your account, and the type or configuration error.
  /// Available values: "ready", "unconfigured", "misconfigured", "misconfigured/locked", "unlocked".
  late final pulumi.Output<String> status;
  /// Whether the API call was successful.
  late final pulumi.Output<bool> success;
  /// Email Routing settings tag. (Deprecated, replaced by Email Routing settings identifier)
  late final pulumi.Output<String> tag;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [EmailRoutingDns].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailRoutingDns]. {@macro pulumi_index_email_routing_dns_email_routing_dns_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailRoutingDns(
    String name, {
    EmailRoutingDnsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingDns:EmailRoutingDns',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    created = registerOutput<String>('created');
    enabled = registerOutput<bool>('enabled');
    errors = registerOutput<List<EmailRoutingDnsError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingDnsError>(guardedValue, (value) => EmailRoutingDnsError.fromMap((value as Map).cast<String, dynamic>())); });
    messages = registerOutput<List<EmailRoutingDnsMessage>>('messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingDnsMessage>(guardedValue, (value) => EmailRoutingDnsMessage.fromMap((value as Map).cast<String, dynamic>())); });
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String?>('name');
    result = registerOutput<EmailRoutingDnsResult>('result', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailRoutingDnsResult.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resultInfo = registerOutput<EmailRoutingDnsResultInfo>('resultInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailRoutingDnsResultInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipWizard = registerOutput<bool>('skipWizard');
    status = registerOutput<String>('status');
    success = registerOutput<bool>('success');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [EmailRoutingDns] resource's state with the given [name] and [id].
  static EmailRoutingDns get(
    String name,
    pulumi.Input<String> id, {
    EmailRoutingDnsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailRoutingDns._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailRoutingDns._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingDns:EmailRoutingDns',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    enabled = registerOutput<bool>('enabled');
    errors = registerOutput<List<EmailRoutingDnsError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingDnsError>(guardedValue, (value) => EmailRoutingDnsError.fromMap((value as Map).cast<String, dynamic>())); });
    messages = registerOutput<List<EmailRoutingDnsMessage>>('messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingDnsMessage>(guardedValue, (value) => EmailRoutingDnsMessage.fromMap((value as Map).cast<String, dynamic>())); });
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String?>('name');
    result = registerOutput<EmailRoutingDnsResult>('result', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailRoutingDnsResult.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resultInfo = registerOutput<EmailRoutingDnsResultInfo>('resultInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailRoutingDnsResultInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipWizard = registerOutput<bool>('skipWizard');
    status = registerOutput<String>('status');
    success = registerOutput<bool>('success');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [EmailRoutingDns] resource.
  EmailRoutingDns.reference(String urn)
    : super(
        'cloudflare:index/emailRoutingDns:EmailRoutingDns',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    created = registerOutput<String>('created');
    enabled = registerOutput<bool>('enabled');
    errors = registerOutput<List<EmailRoutingDnsError>>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingDnsError>(guardedValue, (value) => EmailRoutingDnsError.fromMap((value as Map).cast<String, dynamic>())); });
    messages = registerOutput<List<EmailRoutingDnsMessage>>('messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailRoutingDnsMessage>(guardedValue, (value) => EmailRoutingDnsMessage.fromMap((value as Map).cast<String, dynamic>())); });
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String?>('name');
    result = registerOutput<EmailRoutingDnsResult>('result', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailRoutingDnsResult.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resultInfo = registerOutput<EmailRoutingDnsResultInfo>('resultInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EmailRoutingDnsResultInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipWizard = registerOutput<bool>('skipWizard');
    status = registerOutput<String>('status');
    success = registerOutput<bool>('success');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }
}
