import 'package:pulumi/pulumi.dart' as pulumi;
import 'web3_hostname_args.dart';
import 'web3_hostname_state.dart';

/// Accepted Permissions
///
/// - `Web3 Hostnames Read`
/// - `Web3 Hostnames Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWeb3Hostname = new cloudflare.Web3Hostname("example_web3_hostname", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "gateway.example.com",
///     target: "ipfs",
///     description: "This is my IPFS gateway.",
///     dnslink: "/ipns/onboarding.ipfs.cloudflare.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_web3_hostname = cloudflare.Web3Hostname("example_web3_hostname",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="gateway.example.com",
///     target="ipfs",
///     description="This is my IPFS gateway.",
///     dnslink="/ipns/onboarding.ipfs.cloudflare.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWeb3Hostname = new Cloudflare.Web3Hostname("example_web3_hostname", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "gateway.example.com",
///         Target = "ipfs",
///         Description = "This is my IPFS gateway.",
///         Dnslink = "/ipns/onboarding.ipfs.cloudflare.com",
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
/// 		_, err := cloudflare.NewWeb3Hostname(ctx, "example_web3_hostname", &cloudflare.Web3HostnameArgs{
/// 			ZoneId:      pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:        pulumi.String("gateway.example.com"),
/// 			Target:      pulumi.String("ipfs"),
/// 			Description: pulumi.String("This is my IPFS gateway."),
/// 			Dnslink:     pulumi.String("/ipns/onboarding.ipfs.cloudflare.com"),
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
/// resource "cloudflare_web3hostname" "example_web3_hostname" {
///   zone_id     = "023e105f4ecef8ad9ca31a8372d0c353"
///   name        = "gateway.example.com"
///   target      = "ipfs"
///   description = "This is my IPFS gateway."
///   dnslink     = "/ipns/onboarding.ipfs.cloudflare.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Web3Hostname;
/// import com.pulumi.cloudflare.Web3HostnameArgs;
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
///         var exampleWeb3Hostname = new Web3Hostname("exampleWeb3Hostname", Web3HostnameArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("gateway.example.com")
///             .target("ipfs")
///             .description("This is my IPFS gateway.")
///             .dnslink("/ipns/onboarding.ipfs.cloudflare.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWeb3Hostname:
///     type: cloudflare:Web3Hostname
///     name: example_web3_hostname
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: gateway.example.com
///       target: ipfs
///       description: This is my IPFS gateway.
///       dnslink: /ipns/onboarding.ipfs.cloudflare.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/web3Hostname:Web3Hostname example '<zone_id>/<identifier>'
/// ```
class Web3Hostname extends pulumi.CustomResource {
  late final pulumi.Output<String> createdOn;
  /// Specify an optional description of the hostname.
  late final pulumi.Output<String?> description;
  /// Specify the DNSLink value used if the target is ipfs.
  late final pulumi.Output<String?> dnslink;
  late final pulumi.Output<String> modifiedOn;
  /// Specify the hostname that points to the target gateway via CNAME.
  late final pulumi.Output<String> name;
  /// Specifies the status of the hostname's activation.
  /// Available values: "active", "pending", "deleting", "error".
  late final pulumi.Output<String> status;
  /// Specify the target gateway of the hostname.
  /// Available values: "ethereum", "ipfs", "ipfs*universal*path".
  late final pulumi.Output<String> target;
  /// Specify the identifier of the hostname.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Web3Hostname].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Web3Hostname]. {@macro pulumi_index_web3_hostname_web3_hostname_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Web3Hostname(
    String name, {
    Web3HostnameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/web3Hostname:Web3Hostname',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    dnslink = registerOutput<String?>('dnslink');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    target = registerOutput<String>('target');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Web3Hostname] resource's state with the given [name] and [id].
  static Web3Hostname get(
    String name,
    pulumi.Input<String> id, {
    Web3HostnameState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Web3Hostname._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Web3Hostname._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/web3Hostname:Web3Hostname',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    dnslink = registerOutput<String?>('dnslink');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    target = registerOutput<String>('target');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [Web3Hostname] resource.
  Web3Hostname.reference(String urn)
    : super(
        'cloudflare:index/web3Hostname:Web3Hostname',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    dnslink = registerOutput<String?>('dnslink');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    target = registerOutput<String>('target');
    zoneId = registerOutput<String>('zoneId');
  }
}
