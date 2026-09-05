import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_dns_settings_args.dart';
import 'zone_dns_settings_internal_dns.dart';
import 'zone_dns_settings_nameservers.dart';
import 'zone_dns_settings_soa.dart';
import 'zone_dns_settings_state.dart';

/// Accepted Permissions
///
/// - `DNS Read`
/// - `DNS Write`
/// - `Zone DNS Settings Read`
/// - `Zone DNS Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZoneDnsSettings = new cloudflare.ZoneDnsSettings("example_zone_dns_settings", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     flattenAllCnames: false,
///     foundationDns: false,
///     internalDns: {
///         referenceZoneId: "reference_zone_id",
///     },
///     multiProvider: false,
///     nameservers: {
///         nsSet: 1,
///         type: "cloudflare.standard",
///     },
///     nsTtl: 86400,
///     secondaryOverrides: false,
///     soa: {
///         expire: 604800,
///         minTtl: 1800,
///         mname: "kristina.ns.cloudflare.com",
///         refresh: 10000,
///         retry: 2400,
///         rname: "admin.example.com",
///         ttl: 3600,
///     },
///     zoneMode: "dns_only",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone_dns_settings = cloudflare.ZoneDnsSettings("example_zone_dns_settings",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     flatten_all_cnames=False,
///     foundation_dns=False,
///     internal_dns={
///         "reference_zone_id": "reference_zone_id",
///     },
///     multi_provider=False,
///     nameservers={
///         "ns_set": 1,
///         "type": "cloudflare.standard",
///     },
///     ns_ttl=float(86400),
///     secondary_overrides=False,
///     soa={
///         "expire": float(604800),
///         "min_ttl": float(1800),
///         "mname": "kristina.ns.cloudflare.com",
///         "refresh": float(10000),
///         "retry": float(2400),
///         "rname": "admin.example.com",
///         "ttl": float(3600),
///     },
///     zone_mode="dns_only")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZoneDnsSettings = new Cloudflare.ZoneDnsSettings("example_zone_dns_settings", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         FlattenAllCnames = false,
///         FoundationDns = false,
///         InternalDns = new Cloudflare.Inputs.ZoneDnsSettingsInternalDnsArgs
///         {
///             ReferenceZoneId = "reference_zone_id",
///         },
///         MultiProvider = false,
///         Nameservers = new Cloudflare.Inputs.ZoneDnsSettingsNameserversArgs
///         {
///             NsSet = 1,
///             Type = "cloudflare.standard",
///         },
///         NsTtl = 86400,
///         SecondaryOverrides = false,
///         Soa = new Cloudflare.Inputs.ZoneDnsSettingsSoaArgs
///         {
///             Expire = 604800,
///             MinTtl = 1800,
///             Mname = "kristina.ns.cloudflare.com",
///             Refresh = 10000,
///             Retry = 2400,
///             Rname = "admin.example.com",
///             Ttl = 3600,
///         },
///         ZoneMode = "dns_only",
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
/// 		_, err := cloudflare.NewZoneDnsSettings(ctx, "example_zone_dns_settings", &cloudflare.ZoneDnsSettingsArgs{
/// 			ZoneId:           pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			FlattenAllCnames: pulumi.Bool(false),
/// 			FoundationDns:    pulumi.Bool(false),
/// 			InternalDns: &cloudflare.ZoneDnsSettingsInternalDnsArgs{
/// 				ReferenceZoneId: pulumi.String("reference_zone_id"),
/// 			},
/// 			MultiProvider: pulumi.Bool(false),
/// 			Nameservers: &cloudflare.ZoneDnsSettingsNameserversArgs{
/// 				NsSet: pulumi.Int(1),
/// 				Type:  pulumi.String("cloudflare.standard"),
/// 			},
/// 			NsTtl:              pulumi.Float64(86400),
/// 			SecondaryOverrides: pulumi.Bool(false),
/// 			Soa: &cloudflare.ZoneDnsSettingsSoaArgs{
/// 				Expire:  pulumi.Float64(604800),
/// 				MinTtl:  pulumi.Float64(1800),
/// 				Mname:   pulumi.String("kristina.ns.cloudflare.com"),
/// 				Refresh: pulumi.Float64(10000),
/// 				Retry:   pulumi.Float64(2400),
/// 				Rname:   pulumi.String("admin.example.com"),
/// 				Ttl:     pulumi.Float64(3600),
/// 			},
/// 			ZoneMode: pulumi.String("dns_only"),
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
/// resource "cloudflare_zonednssettings" "example_zone_dns_settings" {
///   zone_id            = "023e105f4ecef8ad9ca31a8372d0c353"
///   flatten_all_cnames = false
///   foundation_dns     = false
///   internal_dns = {
///     reference_zone_id = "reference_zone_id"
///   }
///   multi_provider = false
///   nameservers = {
///     ns_set = 1
///     type   = "cloudflare.standard"
///   }
///   ns_ttl              = 86400
///   secondary_overrides = false
///   soa = {
///     expire  = 604800
///     min_ttl = 1800
///     mname   = "kristina.ns.cloudflare.com"
///     refresh = 10000
///     retry   = 2400
///     rname   = "admin.example.com"
///     ttl     = 3600
///   }
///   zone_mode = "dns_only"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZoneDnsSettings;
/// import com.pulumi.cloudflare.ZoneDnsSettingsArgs;
/// import com.pulumi.cloudflare.inputs.ZoneDnsSettingsInternalDnsArgs;
/// import com.pulumi.cloudflare.inputs.ZoneDnsSettingsNameserversArgs;
/// import com.pulumi.cloudflare.inputs.ZoneDnsSettingsSoaArgs;
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
///         var exampleZoneDnsSettings = new ZoneDnsSettings("exampleZoneDnsSettings", ZoneDnsSettingsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .flattenAllCnames(false)
///             .foundationDns(false)
///             .internalDns(ZoneDnsSettingsInternalDnsArgs.builder()
///                 .referenceZoneId("reference_zone_id")
///                 .build())
///             .multiProvider(false)
///             .nameservers(ZoneDnsSettingsNameserversArgs.builder()
///                 .nsSet(1)
///                 .type("cloudflare.standard")
///                 .build())
///             .nsTtl(86400.0)
///             .secondaryOverrides(false)
///             .soa(ZoneDnsSettingsSoaArgs.builder()
///                 .expire(604800.0)
///                 .minTtl(1800.0)
///                 .mname("kristina.ns.cloudflare.com")
///                 .refresh(10000.0)
///                 .retry(2400.0)
///                 .rname("admin.example.com")
///                 .ttl(3600.0)
///                 .build())
///             .zoneMode("dns_only")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZoneDnsSettings:
///     type: cloudflare:ZoneDnsSettings
///     name: example_zone_dns_settings
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       flattenAllCnames: false
///       foundationDns: false
///       internalDns:
///         referenceZoneId: reference_zone_id
///       multiProvider: false
///       nameservers:
///         nsSet: 1
///         type: cloudflare.standard
///       nsTtl: 86400
///       secondaryOverrides: false
///       soa:
///         expire: 604800
///         minTtl: 1800
///         mname: kristina.ns.cloudflare.com
///         refresh: 10000
///         retry: 2400
///         rname: admin.example.com
///         ttl: 3600
///       zoneMode: dns_only
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class ZoneDnsSettings extends pulumi.CustomResource {
  /// Whether to flatten all CNAME records in the zone. Note that, due to DNS limitations, a CNAME record at the zone apex will always be flattened.
  late final pulumi.Output<bool?> flattenAllCnames;
  /// Whether to enable Foundation DNS Advanced Nameservers on the zone.
  late final pulumi.Output<bool?> foundationDns;
  /// Settings for this internal zone.
  late final pulumi.Output<ZoneDnsSettingsInternalDns> internalDns;
  /// Whether to enable multi-provider DNS, which causes Cloudflare to activate the zone even when non-Cloudflare NS records exist, and to respect NS records at the zone apex during outbound zone transfers.
  late final pulumi.Output<bool?> multiProvider;
  /// Settings determining the nameservers through which the zone should be available.
  late final pulumi.Output<ZoneDnsSettingsNameservers> nameservers;
  /// The time to live (TTL) of the zone's nameserver (NS) records.
  late final pulumi.Output<double?> nsTtl;
  /// Allows a Secondary DNS zone to use (proxied) override records and CNAME flattening at the zone apex.
  late final pulumi.Output<bool?> secondaryOverrides;
  /// Components of the zone's SOA record.
  late final pulumi.Output<ZoneDnsSettingsSoa> soa;
  /// Identifier.
  late final pulumi.Output<String> zoneId;
  /// Whether the zone mode is a regular or CDN/DNS only zone.
  /// Available values: "standard", "cdn*only", "dns*only".
  late final pulumi.Output<String?> zoneMode;

  /// Creates a new [ZoneDnsSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneDnsSettings]. {@macro pulumi_index_zone_dns_settings_zone_dns_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneDnsSettings(
    String name, {
    ZoneDnsSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneDnsSettings:ZoneDnsSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    flattenAllCnames = registerOutput<bool?>('flattenAllCnames');
    foundationDns = registerOutput<bool?>('foundationDns');
    internalDns = registerOutput<ZoneDnsSettingsInternalDns>('internalDns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDnsSettingsInternalDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    multiProvider = registerOutput<bool?>('multiProvider');
    nameservers = registerOutput<ZoneDnsSettingsNameservers>('nameservers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDnsSettingsNameservers.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nsTtl = registerOutput<double?>('nsTtl');
    secondaryOverrides = registerOutput<bool?>('secondaryOverrides');
    soa = registerOutput<ZoneDnsSettingsSoa>('soa', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDnsSettingsSoa.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
    zoneMode = registerOutput<String?>('zoneMode');
  }

  /// Gets an existing [ZoneDnsSettings] resource's state with the given [name] and [id].
  static ZoneDnsSettings get(
    String name,
    pulumi.Input<String> id, {
    ZoneDnsSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneDnsSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneDnsSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneDnsSettings:ZoneDnsSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    flattenAllCnames = registerOutput<bool?>('flattenAllCnames');
    foundationDns = registerOutput<bool?>('foundationDns');
    internalDns = registerOutput<ZoneDnsSettingsInternalDns>('internalDns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDnsSettingsInternalDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    multiProvider = registerOutput<bool?>('multiProvider');
    nameservers = registerOutput<ZoneDnsSettingsNameservers>('nameservers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDnsSettingsNameservers.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nsTtl = registerOutput<double?>('nsTtl');
    secondaryOverrides = registerOutput<bool?>('secondaryOverrides');
    soa = registerOutput<ZoneDnsSettingsSoa>('soa', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDnsSettingsSoa.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
    zoneMode = registerOutput<String?>('zoneMode');
  }

  /// Creates a typed reference to an existing [ZoneDnsSettings] resource.
  ZoneDnsSettings.reference(String urn)
    : super(
        'cloudflare:index/zoneDnsSettings:ZoneDnsSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    flattenAllCnames = registerOutput<bool?>('flattenAllCnames');
    foundationDns = registerOutput<bool?>('foundationDns');
    internalDns = registerOutput<ZoneDnsSettingsInternalDns>('internalDns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDnsSettingsInternalDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    multiProvider = registerOutput<bool?>('multiProvider');
    nameservers = registerOutput<ZoneDnsSettingsNameservers>('nameservers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDnsSettingsNameservers.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nsTtl = registerOutput<double?>('nsTtl');
    secondaryOverrides = registerOutput<bool?>('secondaryOverrides');
    soa = registerOutput<ZoneDnsSettingsSoa>('soa', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneDnsSettingsSoa.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
    zoneMode = registerOutput<String?>('zoneMode');
  }
}
