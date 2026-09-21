import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_sending_subdomain_args.dart';
import 'email_sending_subdomain_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleEmailSendingSubdomain = new cloudflare.EmailSendingSubdomain("example_email_sending_subdomain", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "sub.example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_sending_subdomain = cloudflare.EmailSendingSubdomain("example_email_sending_subdomain",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="sub.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailSendingSubdomain = new Cloudflare.EmailSendingSubdomain("example_email_sending_subdomain", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "sub.example.com",
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
/// 		_, err := cloudflare.NewEmailSendingSubdomain(ctx, "example_email_sending_subdomain", &cloudflare.EmailSendingSubdomainArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:   pulumi.String("sub.example.com"),
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
/// resource "cloudflare_emailsendingsubdomain" "example_email_sending_subdomain" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name    = "sub.example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailSendingSubdomain;
/// import com.pulumi.cloudflare.EmailSendingSubdomainArgs;
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
///         var exampleEmailSendingSubdomain = new EmailSendingSubdomain("exampleEmailSendingSubdomain", EmailSendingSubdomainArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("sub.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailSendingSubdomain:
///     type: cloudflare:EmailSendingSubdomain
///     name: example_email_sending_subdomain
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: sub.example.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailSendingSubdomain:EmailSendingSubdomain example '<zone_id>/<subdomain_id>'
/// ```
class EmailSendingSubdomain extends pulumi.CustomResource {
  /// The date and time the destination address has been created.
  late final pulumi.Output<String> created;
  /// The DKIM selector used for email signing. Wildcard rows publish the selector and sign with `d=&lt;base&gt;`.
  late final pulumi.Output<String> dkimSelector;
  /// Whether a send request that includes a recipient suppressed on
  /// this subdomain drops that recipient and still delivers to the
  /// rest, instead of failing the entire request.
  late final pulumi.Output<bool> dropSuppressedRecipients;
  /// Whether Email Sending is enabled on this subdomain.
  late final pulumi.Output<bool> enabled;
  /// The date and time the destination address was last modified.
  late final pulumi.Output<String> modified;
  /// The domain name within the zone. A wildcard is allowed only as the complete leftmost label (`*.example.com`) and requires the account wildcard Email Sending entitlement.
  late final pulumi.Output<String> name;
  /// Whether sent messages from this subdomain can be previewed in the activity log.
  late final pulumi.Output<bool> previewEnabled;
  /// The return-path domain used for bounce handling. Wildcard rows use `cf-bounce.&lt;base&gt;`.
  late final pulumi.Output<String> returnPathDomain;
  /// Sending subdomain identifier.
  late final pulumi.Output<String> tag;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [EmailSendingSubdomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailSendingSubdomain]. {@macro pulumi_index_email_sending_subdomain_email_sending_subdomain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailSendingSubdomain(
    String name, {
    EmailSendingSubdomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSendingSubdomain:EmailSendingSubdomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.21.0').merge(options),
        ) {
    created = registerOutput<String>('created');
    dkimSelector = registerOutput<String>('dkimSelector');
    dropSuppressedRecipients = registerOutput<bool>('dropSuppressedRecipients');
    enabled = registerOutput<bool>('enabled');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    previewEnabled = registerOutput<bool>('previewEnabled');
    returnPathDomain = registerOutput<String>('returnPathDomain');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [EmailSendingSubdomain] resource's state with the given [name] and [id].
  static EmailSendingSubdomain get(
    String name,
    pulumi.Input<String> id, {
    EmailSendingSubdomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailSendingSubdomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailSendingSubdomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailSendingSubdomain:EmailSendingSubdomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    dkimSelector = registerOutput<String>('dkimSelector');
    dropSuppressedRecipients = registerOutput<bool>('dropSuppressedRecipients');
    enabled = registerOutput<bool>('enabled');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    previewEnabled = registerOutput<bool>('previewEnabled');
    returnPathDomain = registerOutput<String>('returnPathDomain');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [EmailSendingSubdomain] resource.
  EmailSendingSubdomain.reference(String urn)
    : super(
        'cloudflare:index/emailSendingSubdomain:EmailSendingSubdomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    created = registerOutput<String>('created');
    dkimSelector = registerOutput<String>('dkimSelector');
    dropSuppressedRecipients = registerOutput<bool>('dropSuppressedRecipients');
    enabled = registerOutput<bool>('enabled');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    previewEnabled = registerOutput<bool>('previewEnabled');
    returnPathDomain = registerOutput<String>('returnPathDomain');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }
}
