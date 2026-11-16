import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_domain_args.dart';
import 'worker_domain_state.dart';

/// Accepted Permissions
///
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkersCustomDomain = new cloudflare.WorkersCustomDomain("example_workers_custom_domain", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     hostname: "app.example.com",
///     service: "my-worker",
///     enabled: true,
///     previewsEnabled: false,
///     zoneId: "593c9c94de529bbbfaac7c53ced0447d",
///     zoneName: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_workers_custom_domain = cloudflare.WorkersCustomDomain("example_workers_custom_domain",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     hostname="app.example.com",
///     service="my-worker",
///     enabled=True,
///     previews_enabled=False,
///     zone_id="593c9c94de529bbbfaac7c53ced0447d",
///     zone_name="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorkersCustomDomain = new Cloudflare.WorkersCustomDomain("example_workers_custom_domain", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Hostname = "app.example.com",
///         Service = "my-worker",
///         Enabled = true,
///         PreviewsEnabled = false,
///         ZoneId = "593c9c94de529bbbfaac7c53ced0447d",
///         ZoneName = "example.com",
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
/// 		_, err := cloudflare.NewWorkersCustomDomain(ctx, "example_workers_custom_domain", &cloudflare.WorkersCustomDomainArgs{
/// 			AccountId:       pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Hostname:        pulumi.String("app.example.com"),
/// 			Service:         pulumi.String("my-worker"),
/// 			Enabled:         pulumi.Bool(true),
/// 			PreviewsEnabled: pulumi.Bool(false),
/// 			ZoneId:          pulumi.String("593c9c94de529bbbfaac7c53ced0447d"),
/// 			ZoneName:        pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_workers_custom_domain" "example_workers_custom_domain" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id       = "023e105f4ecef8ad9ca31a8372d0c353"
///   hostname         = "app.example.com"
///   service          = "my-worker"
///   enabled          = true
///   previews_enabled = false
///   zone_id          = "593c9c94de529bbbfaac7c53ced0447d"
///   zone_name        = "example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WorkersCustomDomain;
/// import com.pulumi.cloudflare.WorkersCustomDomainArgs;
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
///         var exampleWorkersCustomDomain = new WorkersCustomDomain("exampleWorkersCustomDomain", WorkersCustomDomainArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .hostname("app.example.com")
///             .service("my-worker")
///             .enabled(true)
///             .previewsEnabled(false)
///             .zoneId("593c9c94de529bbbfaac7c53ced0447d")
///             .zoneName("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkersCustomDomain:
///     type: cloudflare:WorkersCustomDomain
///     name: example_workers_custom_domain
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       hostname: app.example.com
///       service: my-worker
///       enabled: true
///       previewsEnabled: false
///       zoneId: 593c9c94de529bbbfaac7c53ced0447d
///       zoneName: example.com
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workerDomain:WorkerDomain example '<account_id>/<domain_id>'
/// ```
class WorkerDomain extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// ID of the TLS certificate issued for the domain.
  late final pulumi.Output<String> certId;
  /// Whether the configured hostname is routable for the domain. If disabled, then requests to the configured hostname will not be routed to the configured Worker. If disabled, then preview routing must be enabled, and only subdomains of the configured hostname will be routable.
  late final pulumi.Output<bool> enabled;
  /// Worker environment associated with the domain.
  late final pulumi.Output<String> environment;
  /// Hostname of the domain. Can be either the zone apex or a subdomain of the zone. Requests to this hostname will be routed to the configured Worker.
  late final pulumi.Output<String> hostname;
  /// Whether previews are routable for the domain. If enabled, previews will be routable as subdomains of the configured hostname. For example, if the configured hostname is `app.example.com`, then requests to `my-feature.app.example.com` will be routed to the preview with slug `my-feature`, if such a preview exists. If preview routing is disabled, then hostname routing must be enabled.
  late final pulumi.Output<bool> previewsEnabled;
  /// Name of the Worker associated with the domain. Requests to the configured hostname will be routed to this Worker.
  late final pulumi.Output<String> service;
  /// ID of the zone containing the domain hostname.
  late final pulumi.Output<String> zoneId;
  /// Name of the zone containing the domain hostname.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [WorkerDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerDomain]. {@macro pulumi_index_worker_domain_worker_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerDomain(
    String name, {
    WorkerDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workerDomain:WorkerDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    certId = registerOutput<String>('certId');
    enabled = registerOutput<bool>('enabled');
    environment = registerOutput<String>('environment');
    hostname = registerOutput<String>('hostname');
    previewsEnabled = registerOutput<bool>('previewsEnabled');
    service = registerOutput<String>('service');
    zoneId = registerOutput<String>('zoneId');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [WorkerDomain] resource's state with the given [name] and [id].
  static WorkerDomain get(
    String name,
    pulumi.Input<String> id, {
    WorkerDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkerDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkerDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workerDomain:WorkerDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    certId = registerOutput<String>('certId');
    enabled = registerOutput<bool>('enabled');
    environment = registerOutput<String>('environment');
    hostname = registerOutput<String>('hostname');
    previewsEnabled = registerOutput<bool>('previewsEnabled');
    service = registerOutput<String>('service');
    zoneId = registerOutput<String>('zoneId');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Creates a typed reference to an existing [WorkerDomain] resource.
  WorkerDomain.reference(String urn)
    : super(
        'cloudflare:index/workerDomain:WorkerDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    certId = registerOutput<String>('certId');
    enabled = registerOutput<bool>('enabled');
    environment = registerOutput<String>('environment');
    hostname = registerOutput<String>('hostname');
    previewsEnabled = registerOutput<bool>('previewsEnabled');
    service = registerOutput<String>('service');
    zoneId = registerOutput<String>('zoneId');
    zoneName = registerOutput<String>('zoneName');
  }
}
