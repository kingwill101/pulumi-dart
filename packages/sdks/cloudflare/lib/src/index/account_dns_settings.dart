import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_dns_settings_args.dart';
import 'account_dns_settings_state.dart';
import 'account_dns_settings_zone_defaults.dart';

/// Accepted Permissions
///
/// - `Account DNS Settings Read`
/// - `Account DNS Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAccountDnsSettings = new cloudflare.AccountDnsSettings("example_account_dns_settings", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     enforceDnsOnly: false,
///     zoneDefaults: {
///         flattenAllCnames: false,
///         foundationDns: false,
///         internalDns: {
///             referenceZoneId: "reference_zone_id",
///         },
///         multiProvider: false,
///         nameservers: {
///             type: "cloudflare.standard",
///         },
///         nsTtl: 86400,
///         secondaryOverrides: false,
///         soa: {
///             expire: 604800,
///             minTtl: 1800,
///             mname: "kristina.ns.cloudflare.com",
///             refresh: 10000,
///             retry: 2400,
///             rname: "admin.example.com",
///             ttl: 3600,
///         },
///         zoneMode: "dns_only",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_account_dns_settings = cloudflare.AccountDnsSettings("example_account_dns_settings",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     enforce_dns_only=False,
///     zone_defaults={
///         "flatten_all_cnames": False,
///         "foundation_dns": False,
///         "internal_dns": {
///             "reference_zone_id": "reference_zone_id",
///         },
///         "multi_provider": False,
///         "nameservers": {
///             "type": "cloudflare.standard",
///         },
///         "ns_ttl": float(86400),
///         "secondary_overrides": False,
///         "soa": {
///             "expire": float(604800),
///             "min_ttl": float(1800),
///             "mname": "kristina.ns.cloudflare.com",
///             "refresh": float(10000),
///             "retry": float(2400),
///             "rname": "admin.example.com",
///             "ttl": float(3600),
///         },
///         "zone_mode": "dns_only",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAccountDnsSettings = new Cloudflare.AccountDnsSettings("example_account_dns_settings", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         EnforceDnsOnly = false,
///         ZoneDefaults = new Cloudflare.Inputs.AccountDnsSettingsZoneDefaultsArgs
///         {
///             FlattenAllCnames = false,
///             FoundationDns = false,
///             InternalDns = new Cloudflare.Inputs.AccountDnsSettingsZoneDefaultsInternalDnsArgs
///             {
///                 ReferenceZoneId = "reference_zone_id",
///             },
///             MultiProvider = false,
///             Nameservers = new Cloudflare.Inputs.AccountDnsSettingsZoneDefaultsNameserversArgs
///             {
///                 Type = "cloudflare.standard",
///             },
///             NsTtl = 86400,
///             SecondaryOverrides = false,
///             Soa = new Cloudflare.Inputs.AccountDnsSettingsZoneDefaultsSoaArgs
///             {
///                 Expire = 604800,
///                 MinTtl = 1800,
///                 Mname = "kristina.ns.cloudflare.com",
///                 Refresh = 10000,
///                 Retry = 2400,
///                 Rname = "admin.example.com",
///                 Ttl = 3600,
///             },
///             ZoneMode = "dns_only",
///         },
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
/// 		_, err := cloudflare.NewAccountDnsSettings(ctx, "example_account_dns_settings", &cloudflare.AccountDnsSettingsArgs{
/// 			AccountId:      pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			EnforceDnsOnly: pulumi.Bool(false),
/// 			ZoneDefaults: &cloudflare.AccountDnsSettingsZoneDefaultsArgs{
/// 				FlattenAllCnames: pulumi.Bool(false),
/// 				FoundationDns:    pulumi.Bool(false),
/// 				InternalDns: &cloudflare.AccountDnsSettingsZoneDefaultsInternalDnsArgs{
/// 					ReferenceZoneId: pulumi.String("reference_zone_id"),
/// 				},
/// 				MultiProvider: pulumi.Bool(false),
/// 				Nameservers: &cloudflare.AccountDnsSettingsZoneDefaultsNameserversArgs{
/// 					Type: pulumi.String("cloudflare.standard"),
/// 				},
/// 				NsTtl:              pulumi.Float64(86400),
/// 				SecondaryOverrides: pulumi.Bool(false),
/// 				Soa: &cloudflare.AccountDnsSettingsZoneDefaultsSoaArgs{
/// 					Expire:  pulumi.Float64(604800),
/// 					MinTtl:  pulumi.Float64(1800),
/// 					Mname:   pulumi.String("kristina.ns.cloudflare.com"),
/// 					Refresh: pulumi.Float64(10000),
/// 					Retry:   pulumi.Float64(2400),
/// 					Rname:   pulumi.String("admin.example.com"),
/// 					Ttl:     pulumi.Float64(3600),
/// 				},
/// 				ZoneMode: pulumi.String("dns_only"),
/// 			},
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
/// resource "cloudflare_accountdnssettings" "example_account_dns_settings" {
///   account_id       = "023e105f4ecef8ad9ca31a8372d0c353"
///   enforce_dns_only = false
///   zone_defaults = {
///     flatten_all_cnames = false
///     foundation_dns     = false
///     internal_dns = {
///       reference_zone_id = "reference_zone_id"
///     }
///     multi_provider = false
///     nameservers = {
///       type = "cloudflare.standard"
///     }
///     ns_ttl              = 86400
///     secondary_overrides = false
///     soa = {
///       expire  = 604800
///       min_ttl = 1800
///       mname   = "kristina.ns.cloudflare.com"
///       refresh = 10000
///       retry   = 2400
///       rname   = "admin.example.com"
///       ttl     = 3600
///     }
///     zone_mode = "dns_only"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AccountDnsSettings;
/// import com.pulumi.cloudflare.AccountDnsSettingsArgs;
/// import com.pulumi.cloudflare.inputs.AccountDnsSettingsZoneDefaultsArgs;
/// import com.pulumi.cloudflare.inputs.AccountDnsSettingsZoneDefaultsInternalDnsArgs;
/// import com.pulumi.cloudflare.inputs.AccountDnsSettingsZoneDefaultsNameserversArgs;
/// import com.pulumi.cloudflare.inputs.AccountDnsSettingsZoneDefaultsSoaArgs;
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
///         var exampleAccountDnsSettings = new AccountDnsSettings("exampleAccountDnsSettings", AccountDnsSettingsArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .enforceDnsOnly(false)
///             .zoneDefaults(AccountDnsSettingsZoneDefaultsArgs.builder()
///                 .flattenAllCnames(false)
///                 .foundationDns(false)
///                 .internalDns(AccountDnsSettingsZoneDefaultsInternalDnsArgs.builder()
///                     .referenceZoneId("reference_zone_id")
///                     .build())
///                 .multiProvider(false)
///                 .nameservers(AccountDnsSettingsZoneDefaultsNameserversArgs.builder()
///                     .type("cloudflare.standard")
///                     .build())
///                 .nsTtl(86400.0)
///                 .secondaryOverrides(false)
///                 .soa(AccountDnsSettingsZoneDefaultsSoaArgs.builder()
///                     .expire(604800.0)
///                     .minTtl(1800.0)
///                     .mname("kristina.ns.cloudflare.com")
///                     .refresh(10000.0)
///                     .retry(2400.0)
///                     .rname("admin.example.com")
///                     .ttl(3600.0)
///                     .build())
///                 .zoneMode("dns_only")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAccountDnsSettings:
///     type: cloudflare:AccountDnsSettings
///     name: example_account_dns_settings
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       enforceDnsOnly: false
///       zoneDefaults:
///         flattenAllCnames: false
///         foundationDns: false
///         internalDns:
///           referenceZoneId: reference_zone_id
///         multiProvider: false
///         nameservers:
///           type: cloudflare.standard
///         nsTtl: 86400
///         secondaryOverrides: false
///         soa:
///           expire: 604800
///           minTtl: 1800
///           mname: kristina.ns.cloudflare.com
///           refresh: 10000
///           retry: 2400
///           rname: admin.example.com
///           ttl: 3600
///         zoneMode: dns_only
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class AccountDnsSettings extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// When enabled, forces all proxied DNS records in the account to behave as DNS-only at the edge, regardless of each record's individual proxy setting. Note that this account-level override does not modify the records themselves; it only affects how they are served at the edge. See more on [Enforce DNS-only](https://developers.cloudflare.com/dns/proxy-status/enforce-dns-only).
  late final pulumi.Output<bool?> enforceDnsOnly;
  late final pulumi.Output<AccountDnsSettingsZoneDefaults?> zoneDefaults;

  /// Creates a new [AccountDnsSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountDnsSettings]. {@macro pulumi_index_account_dns_settings_account_dns_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountDnsSettings(
    String name, {
    AccountDnsSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountDnsSettings:AccountDnsSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    enforceDnsOnly = registerOutput<bool?>('enforceDnsOnly');
    zoneDefaults = registerOutput<AccountDnsSettingsZoneDefaults?>('zoneDefaults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountDnsSettingsZoneDefaults.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AccountDnsSettings] resource's state with the given [name] and [id].
  static AccountDnsSettings get(
    String name,
    pulumi.Input<String> id, {
    AccountDnsSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountDnsSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountDnsSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountDnsSettings:AccountDnsSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    enforceDnsOnly = registerOutput<bool?>('enforceDnsOnly');
    zoneDefaults = registerOutput<AccountDnsSettingsZoneDefaults?>('zoneDefaults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountDnsSettingsZoneDefaults.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AccountDnsSettings] resource.
  AccountDnsSettings.reference(String urn)
    : super(
        'cloudflare:index/accountDnsSettings:AccountDnsSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    enforceDnsOnly = registerOutput<bool?>('enforceDnsOnly');
    zoneDefaults = registerOutput<AccountDnsSettingsZoneDefaults?>('zoneDefaults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountDnsSettingsZoneDefaults.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
