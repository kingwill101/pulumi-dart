import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_group_args.dart';
import 'access_group_exclude.dart';
import 'access_group_include.dart';
import 'access_group_require.dart';
import 'access_group_state.dart';

/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read`
/// - `Access: Organizations, Identity Providers, and Groups Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessGroup = new cloudflare.ZeroTrustAccessGroup("example_zero_trust_access_group", {
///     includes: [{
///         certificate: {},
///     }],
///     name: "Allow devs",
///     zoneId: "zone_id",
///     excludes: [{
///         certificate: {},
///     }],
///     isDefault: true,
///     requires: [{
///         certificate: {},
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_group = cloudflare.ZeroTrustAccessGroup("example_zero_trust_access_group",
///     includes=[{
///         "certificate": {},
///     }],
///     name="Allow devs",
///     zone_id="zone_id",
///     excludes=[{
///         "certificate": {},
///     }],
///     is_default=True,
///     requires=[{
///         "certificate": {},
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessGroup = new Cloudflare.ZeroTrustAccessGroup("example_zero_trust_access_group", new()
///     {
///         Includes = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessGroupIncludeArgs
///             {
///                 Certificate = null,
///             },
///         },
///         Name = "Allow devs",
///         ZoneId = "zone_id",
///         Excludes = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessGroupExcludeArgs
///             {
///                 Certificate = null,
///             },
///         },
///         IsDefault = true,
///         Requires = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessGroupRequireArgs
///             {
///                 Certificate = null,
///             },
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
/// 		_, err := cloudflare.NewZeroTrustAccessGroup(ctx, "example_zero_trust_access_group", &cloudflare.ZeroTrustAccessGroupArgs{
/// 			Includes: cloudflare.ZeroTrustAccessGroupIncludeArray{
/// 				&cloudflare.ZeroTrustAccessGroupIncludeArgs{
/// 					Certificate: &cloudflare.ZeroTrustAccessGroupIncludeCertificateArgs{},
/// 				},
/// 			},
/// 			Name:   pulumi.String("Allow devs"),
/// 			ZoneId: pulumi.String("zone_id"),
/// 			Excludes: cloudflare.ZeroTrustAccessGroupExcludeArray{
/// 				&cloudflare.ZeroTrustAccessGroupExcludeArgs{
/// 					Certificate: &cloudflare.ZeroTrustAccessGroupExcludeCertificateArgs{},
/// 				},
/// 			},
/// 			IsDefault: pulumi.Bool(true),
/// 			Requires: cloudflare.ZeroTrustAccessGroupRequireArray{
/// 				&cloudflare.ZeroTrustAccessGroupRequireArgs{
/// 					Certificate: &cloudflare.ZeroTrustAccessGroupRequireCertificateArgs{},
/// 				},
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
/// resource "cloudflare_zerotrustaccessgroup" "example_zero_trust_access_group" {
///   includes {
///     certificate = {}
///   }
///   name    = "Allow devs"
///   zone_id = "zone_id"
///   excludes {
///     certificate = {}
///   }
///   is_default = true
///   requires {
///     certificate = {}
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessGroup;
/// import com.pulumi.cloudflare.ZeroTrustAccessGroupArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessGroupIncludeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessGroupIncludeCertificateArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessGroupExcludeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessGroupExcludeCertificateArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessGroupRequireArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessGroupRequireCertificateArgs;
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
///         var exampleZeroTrustAccessGroup = new ZeroTrustAccessGroup("exampleZeroTrustAccessGroup", ZeroTrustAccessGroupArgs.builder()
///             .includes(ZeroTrustAccessGroupIncludeArgs.builder()
///                 .certificate(ZeroTrustAccessGroupIncludeCertificateArgs.builder()
///                     .build())
///                 .build())
///             .name("Allow devs")
///             .zoneId("zone_id")
///             .excludes(ZeroTrustAccessGroupExcludeArgs.builder()
///                 .certificate(ZeroTrustAccessGroupExcludeCertificateArgs.builder()
///                     .build())
///                 .build())
///             .isDefault(true)
///             .requires(ZeroTrustAccessGroupRequireArgs.builder()
///                 .certificate(ZeroTrustAccessGroupRequireCertificateArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessGroup:
///     type: cloudflare:ZeroTrustAccessGroup
///     name: example_zero_trust_access_group
///     properties:
///       includes:
///         - certificate: {}
///       name: Allow devs
///       zoneId: zone_id
///       excludes:
///         - certificate: {}
///       isDefault: true
///       requires:
///         - certificate: {}
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/accessGroup:AccessGroup example '<{accounts|zones}/{account_id|zone_id}>/<group_id>'
/// ```
class AccessGroup extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
  late final pulumi.Output<List<AccessGroupExclude>?> excludes;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  late final pulumi.Output<List<AccessGroupInclude>> includes;
  /// Whether this is the default group
  late final pulumi.Output<bool?> isDefault;
  /// The name of the Access group.
  late final pulumi.Output<String> name;
  /// Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  late final pulumi.Output<List<AccessGroupRequire>?> requires;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [AccessGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessGroup]. {@macro pulumi_index_access_group_access_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessGroup(
    String name, {
    AccessGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessGroup:AccessGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    excludes = registerOutput<List<AccessGroupExclude>?>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGroupExclude>(guardedValue, (value) => AccessGroupExclude.fromMap((value as Map).cast<String, dynamic>())); });
    includes = registerOutput<List<AccessGroupInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGroupInclude>(guardedValue, (value) => AccessGroupInclude.fromMap((value as Map).cast<String, dynamic>())); });
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    requires = registerOutput<List<AccessGroupRequire>?>('requires', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGroupRequire>(guardedValue, (value) => AccessGroupRequire.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [AccessGroup] resource's state with the given [name] and [id].
  static AccessGroup get(
    String name,
    pulumi.Input<String> id, {
    AccessGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessGroup:AccessGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    excludes = registerOutput<List<AccessGroupExclude>?>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGroupExclude>(guardedValue, (value) => AccessGroupExclude.fromMap((value as Map).cast<String, dynamic>())); });
    includes = registerOutput<List<AccessGroupInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGroupInclude>(guardedValue, (value) => AccessGroupInclude.fromMap((value as Map).cast<String, dynamic>())); });
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    requires = registerOutput<List<AccessGroupRequire>?>('requires', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGroupRequire>(guardedValue, (value) => AccessGroupRequire.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [AccessGroup] resource.
  AccessGroup.reference(String urn)
    : super(
        'cloudflare:index/accessGroup:AccessGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    excludes = registerOutput<List<AccessGroupExclude>?>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGroupExclude>(guardedValue, (value) => AccessGroupExclude.fromMap((value as Map).cast<String, dynamic>())); });
    includes = registerOutput<List<AccessGroupInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGroupInclude>(guardedValue, (value) => AccessGroupInclude.fromMap((value as Map).cast<String, dynamic>())); });
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    requires = registerOutput<List<AccessGroupRequire>?>('requires', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGroupRequire>(guardedValue, (value) => AccessGroupRequire.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String?>('zoneId');
  }
}
