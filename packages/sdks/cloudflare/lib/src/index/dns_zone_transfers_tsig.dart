import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_transfers_tsig_args.dart';
import 'dns_zone_transfers_tsig_state.dart';

/// Accepted Permissions
///
/// - `Account Settings Read`
/// - `Account Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleDnsZoneTransfersTsig = new cloudflare.DnsZoneTransfersTsig("example_dns_zone_transfers_tsig", {
///     accountId: "01a7362d577a6c3019a474fd6f485823",
///     algo: "hmac-sha512.",
///     name: "tsig.customer.cf.",
///     secret: "caf79a7804b04337c9c66ccd7bef9190a1e1679b5dd03d8aa10f7ad45e1a9dab92b417896c15d4d007c7c14194538d2a5d0feffdecc5a7f0e1c570cfa700837c",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_dns_zone_transfers_tsig = cloudflare.DnsZoneTransfersTsig("example_dns_zone_transfers_tsig",
///     account_id="01a7362d577a6c3019a474fd6f485823",
///     algo="hmac-sha512.",
///     name="tsig.customer.cf.",
///     secret="caf79a7804b04337c9c66ccd7bef9190a1e1679b5dd03d8aa10f7ad45e1a9dab92b417896c15d4d007c7c14194538d2a5d0feffdecc5a7f0e1c570cfa700837c")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDnsZoneTransfersTsig = new Cloudflare.DnsZoneTransfersTsig("example_dns_zone_transfers_tsig", new()
///     {
///         AccountId = "01a7362d577a6c3019a474fd6f485823",
///         Algo = "hmac-sha512.",
///         Name = "tsig.customer.cf.",
///         Secret = "caf79a7804b04337c9c66ccd7bef9190a1e1679b5dd03d8aa10f7ad45e1a9dab92b417896c15d4d007c7c14194538d2a5d0feffdecc5a7f0e1c570cfa700837c",
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
/// 		_, err := cloudflare.NewDnsZoneTransfersTsig(ctx, "example_dns_zone_transfers_tsig", &cloudflare.DnsZoneTransfersTsigArgs{
/// 			AccountId: pulumi.String("01a7362d577a6c3019a474fd6f485823"),
/// 			Algo:      pulumi.String("hmac-sha512."),
/// 			Name:      pulumi.String("tsig.customer.cf."),
/// 			Secret:    pulumi.String("caf79a7804b04337c9c66ccd7bef9190a1e1679b5dd03d8aa10f7ad45e1a9dab92b417896c15d4d007c7c14194538d2a5d0feffdecc5a7f0e1c570cfa700837c"),
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
/// resource "cloudflare_dnszonetransferstsig" "example_dns_zone_transfers_tsig" {
///   account_id = "01a7362d577a6c3019a474fd6f485823"
///   algo       = "hmac-sha512."
///   name       = "tsig.customer.cf."
///   secret     = "caf79a7804b04337c9c66ccd7bef9190a1e1679b5dd03d8aa10f7ad45e1a9dab92b417896c15d4d007c7c14194538d2a5d0feffdecc5a7f0e1c570cfa700837c"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.DnsZoneTransfersTsig;
/// import com.pulumi.cloudflare.DnsZoneTransfersTsigArgs;
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
///         var exampleDnsZoneTransfersTsig = new DnsZoneTransfersTsig("exampleDnsZoneTransfersTsig", DnsZoneTransfersTsigArgs.builder()
///             .accountId("01a7362d577a6c3019a474fd6f485823")
///             .algo("hmac-sha512.")
///             .name("tsig.customer.cf.")
///             .secret("caf79a7804b04337c9c66ccd7bef9190a1e1679b5dd03d8aa10f7ad45e1a9dab92b417896c15d4d007c7c14194538d2a5d0feffdecc5a7f0e1c570cfa700837c")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDnsZoneTransfersTsig:
///     type: cloudflare:DnsZoneTransfersTsig
///     name: example_dns_zone_transfers_tsig
///     properties:
///       accountId: 01a7362d577a6c3019a474fd6f485823
///       algo: hmac-sha512.
///       name: tsig.customer.cf.
///       secret: caf79a7804b04337c9c66ccd7bef9190a1e1679b5dd03d8aa10f7ad45e1a9dab92b417896c15d4d007c7c14194538d2a5d0feffdecc5a7f0e1c570cfa700837c
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/dnsZoneTransfersTsig:DnsZoneTransfersTsig example '<account_id>/<tsig_id>'
/// ```
class DnsZoneTransfersTsig extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// TSIG algorithm.
  late final pulumi.Output<String> algo;
  /// TSIG key name.
  late final pulumi.Output<String> name;
  /// TSIG secret.
  late final pulumi.Output<String> secret;

  /// Creates a new [DnsZoneTransfersTsig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsZoneTransfersTsig]. {@macro pulumi_index_dns_zone_transfers_tsig_dns_zone_transfers_tsig_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsZoneTransfersTsig(
    String name, {
    DnsZoneTransfersTsigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersTsig:DnsZoneTransfersTsig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['secret'],
        ) {
    accountId = registerOutput<String>('accountId');
    algo = registerOutput<String>('algo');
    this.name = registerOutput<String>('name');
    secret = registerOutput<String>('secret', isSecret: true);
  }

  /// Gets an existing [DnsZoneTransfersTsig] resource's state with the given [name] and [id].
  static DnsZoneTransfersTsig get(
    String name,
    pulumi.Input<String> id, {
    DnsZoneTransfersTsigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DnsZoneTransfersTsig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DnsZoneTransfersTsig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersTsig:DnsZoneTransfersTsig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    algo = registerOutput<String>('algo');
    this.name = registerOutput<String>('name');
    secret = registerOutput<String>('secret', isSecret: true);
  }

  /// Creates a typed reference to an existing [DnsZoneTransfersTsig] resource.
  DnsZoneTransfersTsig.reference(String urn)
    : super(
        'cloudflare:index/dnsZoneTransfersTsig:DnsZoneTransfersTsig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    algo = registerOutput<String>('algo');
    this.name = registerOutput<String>('name');
    secret = registerOutput<String>('secret', isSecret: true);
  }
}
