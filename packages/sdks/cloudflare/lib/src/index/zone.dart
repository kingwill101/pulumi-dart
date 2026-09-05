import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_account.dart';
import 'zone_args.dart';
import 'zone_meta.dart';
import 'zone_owner.dart';
import 'zone_plan.dart';
import 'zone_state.dart';
import 'zone_tenant.dart';
import 'zone_tenant_unit.dart';

/// Accepted Permissions
///
/// - `Access: Apps and Policies Read`
/// - `Access: Apps and Policies Revoke`
/// - `Access: Apps and Policies Write`
/// - `Access: Mutual TLS Certificates Write`
/// - `Access: Organizations, Identity Providers, and Groups Write`
/// - `Analytics Read`
/// - `Apps Write`
/// - `Cache Purge`
/// - `DNS Read`
/// - `DNS Write`
/// - `Firewall Services Read`
/// - `Firewall Services Write`
/// - `Load Balancers Read`
/// - `Load Balancers Write`
/// - `Logs Read`
/// - `Logs Write`
/// - `Page Rules Read`
/// - `Page Rules Write`
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
/// - `Stream Read`
/// - `Stream Write`
/// - `Trust and Safety Read`
/// - `Trust and Safety Write`
/// - `Workers Routes Read`
/// - `Workers Routes Write`
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Zaraz Admin`
/// - `Zaraz Edit`
/// - `Zaraz Read`
/// - `Zero Trust: PII Read`
/// - `Zone DNS Edit`
/// - `Zone Read`
/// - `Zone Settings Read`
/// - `Zone Settings Write`
/// - `Zone Write`
/// - `Zone Zone Edit`
///
/// &gt; If you are attempting to sign up a subdomain of a zone you must first have Subdomain Support entitlement for your account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZone = new cloudflare.Zone("example_zone", {
///     account: {
///         id: "023e105f4ecef8ad9ca31a8372d0c353",
///     },
///     name: "example.com",
///     type: "full",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone = cloudflare.Zone("example_zone",
///     account={
///         "id": "023e105f4ecef8ad9ca31a8372d0c353",
///     },
///     name="example.com",
///     type="full")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZone = new Cloudflare.Zone("example_zone", new()
///     {
///         Account = new Cloudflare.Inputs.ZoneAccountArgs
///         {
///             Id = "023e105f4ecef8ad9ca31a8372d0c353",
///         },
///         Name = "example.com",
///         Type = "full",
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
/// 		_, err := cloudflare.NewZone(ctx, "example_zone", &cloudflare.ZoneArgs{
/// 			Account: &cloudflare.ZoneAccountArgs{
/// 				Id: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			},
/// 			Name: pulumi.String("example.com"),
/// 			Type: pulumi.String("full"),
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
/// resource "cloudflare_zone" "example_zone" {
///   account = {
///     id = "023e105f4ecef8ad9ca31a8372d0c353"
///   }
///   name = "example.com"
///   type = "full"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Zone;
/// import com.pulumi.cloudflare.ZoneArgs;
/// import com.pulumi.cloudflare.inputs.ZoneAccountArgs;
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
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .account(ZoneAccountArgs.builder()
///                 .id("023e105f4ecef8ad9ca31a8372d0c353")
///                 .build())
///             .name("example.com")
///             .type("full")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZone:
///     type: cloudflare:Zone
///     name: example_zone
///     properties:
///       account:
///         id: 023e105f4ecef8ad9ca31a8372d0c353
///       name: example.com
///       type: full
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zone:Zone example '<zone_id>'
/// ```
class Zone extends pulumi.CustomResource {
  late final pulumi.Output<ZoneAccount> account;
  /// The last time proof of ownership was detected and the zone was made
  /// active.
  late final pulumi.Output<String> activatedOn;
  /// Allows the customer to use a custom apex.
  /// *Tenants Only Configuration*.
  late final pulumi.Output<String> cnameSuffix;
  /// When the zone was created.
  late final pulumi.Output<String> createdOn;
  /// The interval (in seconds) from when development mode expires
  /// (positive integer) or last expired (negative integer) for the
  /// domain. If development mode has never been enabled, this value is 0.
  late final pulumi.Output<double> developmentMode;
  /// Metadata about the zone.
  late final pulumi.Output<ZoneMeta> meta;
  /// When the zone was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// The domain name. Per [RFC 1035](https://datatracker.ietf.org/doc/html/rfc1035#section-2.3.4) the overall zone name can be up to 253 characters, with each segment ("label") not exceeding 63 characters.
  late final pulumi.Output<String> name;
  /// The name servers Cloudflare assigns to a zone.
  late final pulumi.Output<List<String>> nameServers;
  /// DNS host at the time of switching to Cloudflare.
  late final pulumi.Output<String> originalDnshost;
  /// Original name servers before moving to Cloudflare.
  late final pulumi.Output<List<String>> originalNameServers;
  /// Registrar for the domain at the time of switching to Cloudflare.
  late final pulumi.Output<String> originalRegistrar;
  /// The owner of the zone.
  late final pulumi.Output<ZoneOwner> owner;
  /// Indicates whether the zone is only using Cloudflare DNS services. A
  /// true value means the zone will not receive security or performance
  /// benefits.
  late final pulumi.Output<bool> paused;
  /// Legacy permissions based on legacy user membership information.
  late final pulumi.Output<List<String>> permissions;
  /// A Zones subscription information.
  late final pulumi.Output<ZonePlan> plan;
  /// The zone status on Cloudflare.
  /// Available values: "initializing", "pending", "active", "moved".
  late final pulumi.Output<String> status;
  /// The root organizational unit that this zone belongs to (such as a tenant or organization).
  late final pulumi.Output<ZoneTenant> tenant;
  /// The immediate parent organizational unit that this zone belongs to (such as under a tenant or sub-organization).
  late final pulumi.Output<ZoneTenantUnit> tenantUnit;
  /// A full zone implies that DNS is hosted with Cloudflare. A partial zone is
  /// typically a partner-hosted zone or a CNAME setup.
  /// Available values: "full", "partial", "secondary", "internal".
  late final pulumi.Output<String> type;
  /// An array of domains used for custom name servers. This is only
  /// available for Business and Enterprise plans.
  late final pulumi.Output<List<String>> vanityNameServers;
  /// Verification key for partial zone setup.
  late final pulumi.Output<String> verificationKey;

  /// Creates a new [Zone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Zone]. {@macro pulumi_index_zone_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Zone(
    String name, {
    ZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zone:Zone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    account = registerOutput<ZoneAccount>('account', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    activatedOn = registerOutput<String>('activatedOn');
    cnameSuffix = registerOutput<String>('cnameSuffix');
    createdOn = registerOutput<String>('createdOn');
    developmentMode = registerOutput<double>('developmentMode');
    meta = registerOutput<ZoneMeta>('meta', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    nameServers = registerOutput<List<String>>('nameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    originalDnshost = registerOutput<String>('originalDnshost');
    originalNameServers = registerOutput<List<String>>('originalNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    originalRegistrar = registerOutput<String>('originalRegistrar');
    owner = registerOutput<ZoneOwner>('owner', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneOwner.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    paused = registerOutput<bool>('paused');
    permissions = registerOutput<List<String>>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    plan = registerOutput<ZonePlan>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZonePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tenant = registerOutput<ZoneTenant>('tenant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneTenant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantUnit = registerOutput<ZoneTenantUnit>('tenantUnit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneTenantUnit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vanityNameServers = registerOutput<List<String>>('vanityNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    verificationKey = registerOutput<String>('verificationKey');
  }

  /// Gets an existing [Zone] resource's state with the given [name] and [id].
  static Zone get(
    String name,
    pulumi.Input<String> id, {
    ZoneState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Zone._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Zone._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zone:Zone',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    account = registerOutput<ZoneAccount>('account', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    activatedOn = registerOutput<String>('activatedOn');
    cnameSuffix = registerOutput<String>('cnameSuffix');
    createdOn = registerOutput<String>('createdOn');
    developmentMode = registerOutput<double>('developmentMode');
    meta = registerOutput<ZoneMeta>('meta', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    nameServers = registerOutput<List<String>>('nameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    originalDnshost = registerOutput<String>('originalDnshost');
    originalNameServers = registerOutput<List<String>>('originalNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    originalRegistrar = registerOutput<String>('originalRegistrar');
    owner = registerOutput<ZoneOwner>('owner', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneOwner.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    paused = registerOutput<bool>('paused');
    permissions = registerOutput<List<String>>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    plan = registerOutput<ZonePlan>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZonePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tenant = registerOutput<ZoneTenant>('tenant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneTenant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantUnit = registerOutput<ZoneTenantUnit>('tenantUnit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneTenantUnit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vanityNameServers = registerOutput<List<String>>('vanityNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    verificationKey = registerOutput<String>('verificationKey');
  }

  /// Creates a typed reference to an existing [Zone] resource.
  Zone.reference(String urn)
    : super(
        'cloudflare:index/zone:Zone',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    account = registerOutput<ZoneAccount>('account', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    activatedOn = registerOutput<String>('activatedOn');
    cnameSuffix = registerOutput<String>('cnameSuffix');
    createdOn = registerOutput<String>('createdOn');
    developmentMode = registerOutput<double>('developmentMode');
    meta = registerOutput<ZoneMeta>('meta', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    nameServers = registerOutput<List<String>>('nameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    originalDnshost = registerOutput<String>('originalDnshost');
    originalNameServers = registerOutput<List<String>>('originalNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    originalRegistrar = registerOutput<String>('originalRegistrar');
    owner = registerOutput<ZoneOwner>('owner', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneOwner.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    paused = registerOutput<bool>('paused');
    permissions = registerOutput<List<String>>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    plan = registerOutput<ZonePlan>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZonePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tenant = registerOutput<ZoneTenant>('tenant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneTenant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantUnit = registerOutput<ZoneTenantUnit>('tenantUnit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneTenantUnit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vanityNameServers = registerOutput<List<String>>('vanityNameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    verificationKey = registerOutput<String>('verificationKey');
  }
}
