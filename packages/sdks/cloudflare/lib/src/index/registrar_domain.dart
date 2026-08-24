import 'package:pulumi/pulumi.dart' as pulumi;
import 'registrar_domain_args.dart';
import 'registrar_domain_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleRegistrarDomain = new cloudflare.RegistrarDomain("example_registrar_domain", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     domainName: "example.com",
///     autoRenew: true,
///     locked: false,
///     privacy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_registrar_domain = cloudflare.RegistrarDomain("example_registrar_domain",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     domain_name="example.com",
///     auto_renew=True,
///     locked=False,
///     privacy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleRegistrarDomain = new Cloudflare.RegistrarDomain("example_registrar_domain", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         DomainName = "example.com",
///         AutoRenew = true,
///         Locked = false,
///         Privacy = true,
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
/// 		_, err := cloudflare.NewRegistrarDomain(ctx, "example_registrar_domain", &cloudflare.RegistrarDomainArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			DomainName: pulumi.String("example.com"),
/// 			AutoRenew:  pulumi.Bool(true),
/// 			Locked:     pulumi.Bool(false),
/// 			Privacy:    pulumi.Bool(true),
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
/// resource "cloudflare_registrardomain" "example_registrar_domain" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   domain_name = "example.com"
///   auto_renew  = true
///   locked      = false
///   privacy     = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.RegistrarDomain;
/// import com.pulumi.cloudflare.RegistrarDomainArgs;
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
///         var exampleRegistrarDomain = new RegistrarDomain("exampleRegistrarDomain", RegistrarDomainArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .domainName("example.com")
///             .autoRenew(true)
///             .locked(false)
///             .privacy(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRegistrarDomain:
///     type: cloudflare:RegistrarDomain
///     name: example_registrar_domain
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       domainName: example.com
///       autoRenew: true
///       locked: false
///       privacy: true
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class RegistrarDomain extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  /// Auto-renew controls whether subscription is automatically renewed upon domain expiration.
  late final pulumi.Output<bool?> autoRenew;
  /// Fully qualified domain name (FQDN) including the extension
  /// (e.g., `example.com`, `mybrand.app`). The domain name uniquely
  /// identifies a registration — the same domain cannot be registered
  /// twice, making it a natural idempotency key for registration requests.
  late final pulumi.Output<String> domainName;
  /// Shows whether a registrar lock is in place for a domain.
  late final pulumi.Output<bool?> locked;
  /// Privacy option controls redacting WHOIS information.
  late final pulumi.Output<bool?> privacy;

  /// Creates a new [RegistrarDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistrarDomain]. {@macro pulumi_index_registrar_domain_registrar_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistrarDomain(
    String name, {
    RegistrarDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/registrarDomain:RegistrarDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    autoRenew = registerOutput<bool?>('autoRenew');
    domainName = registerOutput<String>('domainName');
    locked = registerOutput<bool?>('locked');
    privacy = registerOutput<bool?>('privacy');
  }

  /// Gets an existing [RegistrarDomain] resource's state with the given [name] and [id].
  static RegistrarDomain get(
    String name,
    pulumi.Input<String> id, {
    RegistrarDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegistrarDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegistrarDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/registrarDomain:RegistrarDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    autoRenew = registerOutput<bool?>('autoRenew');
    domainName = registerOutput<String>('domainName');
    locked = registerOutput<bool?>('locked');
    privacy = registerOutput<bool?>('privacy');
  }

  /// Creates a typed reference to an existing [RegistrarDomain] resource.
  RegistrarDomain.reference(String urn)
    : super(
        'cloudflare:index/registrarDomain:RegistrarDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    autoRenew = registerOutput<bool?>('autoRenew');
    domainName = registerOutput<String>('domainName');
    locked = registerOutput<bool?>('locked');
    privacy = registerOutput<bool?>('privacy');
  }
}
