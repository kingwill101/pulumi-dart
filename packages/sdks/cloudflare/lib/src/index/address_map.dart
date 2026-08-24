import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_map_args.dart';
import 'address_map_membership.dart';
import 'address_map_state.dart';

/// Accepted Permissions
///
/// - `Address Maps Read`
/// - `Address Maps Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAddressMap = new cloudflare.AddressMap("example_address_map", {
///     accountId: "258def64c72dae45f3e4c8516e2111f2",
///     description: "My Ecommerce zones",
///     enabled: true,
///     ips: ["192.0.2.1"],
///     memberships: [{
///         identifier: "023e105f4ecef8ad9ca31a8372d0c353",
///         kind: "zone",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_address_map = cloudflare.AddressMap("example_address_map",
///     account_id="258def64c72dae45f3e4c8516e2111f2",
///     description="My Ecommerce zones",
///     enabled=True,
///     ips=["192.0.2.1"],
///     memberships=[{
///         "identifier": "023e105f4ecef8ad9ca31a8372d0c353",
///         "kind": "zone",
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
///     var exampleAddressMap = new Cloudflare.AddressMap("example_address_map", new()
///     {
///         AccountId = "258def64c72dae45f3e4c8516e2111f2",
///         Description = "My Ecommerce zones",
///         Enabled = true,
///         Ips = new[]
///         {
///             "192.0.2.1",
///         },
///         Memberships = new[]
///         {
///             new Cloudflare.Inputs.AddressMapMembershipArgs
///             {
///                 Identifier = "023e105f4ecef8ad9ca31a8372d0c353",
///                 Kind = "zone",
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
/// 		_, err := cloudflare.NewAddressMap(ctx, "example_address_map", &cloudflare.AddressMapArgs{
/// 			AccountId:   pulumi.String("258def64c72dae45f3e4c8516e2111f2"),
/// 			Description: pulumi.String("My Ecommerce zones"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Ips: pulumi.StringArray{
/// 				pulumi.String("192.0.2.1"),
/// 			},
/// 			Memberships: cloudflare.AddressMapMembershipArray{
/// 				&cloudflare.AddressMapMembershipArgs{
/// 					Identifier: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 					Kind:       pulumi.String("zone"),
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
/// resource "cloudflare_addressmap" "example_address_map" {
///   account_id  = "258def64c72dae45f3e4c8516e2111f2"
///   description = "My Ecommerce zones"
///   enabled     = true
///   ips         = ["192.0.2.1"]
///   memberships {
///     identifier = "023e105f4ecef8ad9ca31a8372d0c353"
///     kind       = "zone"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AddressMap;
/// import com.pulumi.cloudflare.AddressMapArgs;
/// import com.pulumi.cloudflare.inputs.AddressMapMembershipArgs;
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
///         var exampleAddressMap = new AddressMap("exampleAddressMap", AddressMapArgs.builder()
///             .accountId("258def64c72dae45f3e4c8516e2111f2")
///             .description("My Ecommerce zones")
///             .enabled(true)
///             .ips("192.0.2.1")
///             .memberships(AddressMapMembershipArgs.builder()
///                 .identifier("023e105f4ecef8ad9ca31a8372d0c353")
///                 .kind("zone")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAddressMap:
///     type: cloudflare:AddressMap
///     name: example_address_map
///     properties:
///       accountId: 258def64c72dae45f3e4c8516e2111f2
///       description: My Ecommerce zones
///       enabled: true
///       ips:
///         - 192.0.2.1
///       memberships:
///         - identifier: 023e105f4ecef8ad9ca31a8372d0c353
///           kind: zone
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/addressMap:AddressMap example '<account_id>/<address_map_id>'
/// ```
class AddressMap extends pulumi.CustomResource {
  /// Identifier of a Cloudflare account.
  late final pulumi.Output<String> accountId;
  /// If set to false, then the Address Map cannot be deleted via API. This is true for Cloudflare-managed maps.
  late final pulumi.Output<bool> canDelete;
  /// If set to false, then the IPs on the Address Map cannot be modified via the API. This is true for Cloudflare-managed maps.
  late final pulumi.Output<bool> canModifyIps;
  late final pulumi.Output<String> createdAt;
  /// If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. If Cloudflare receives a TLS handshake from a client without an SNI, it will respond with the default SNI on those IPs. The default SNI can be any valid zone or subdomain owned by the account.
  late final pulumi.Output<String?> defaultSni;
  /// An optional description field which may be used to describe the types of IPs or zones on the map.
  late final pulumi.Output<String?> description;
  /// Whether the Address Map is enabled or not. Cloudflare's DNS will not respond with IP addresses on an Address Map until the map is enabled.
  late final pulumi.Output<bool> enabled;
  late final pulumi.Output<List<String>?> ips;
  /// Zones and Accounts which will be assigned IPs on this Address Map. A zone membership will take priority over an account membership.
  late final pulumi.Output<List<AddressMapMembership>?> memberships;
  late final pulumi.Output<String> modifiedAt;

  /// Creates a new [AddressMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AddressMap]. {@macro pulumi_index_address_map_address_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AddressMap(
    String name, {
    AddressMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/addressMap:AddressMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    canDelete = registerOutput<bool>('canDelete');
    canModifyIps = registerOutput<bool>('canModifyIps');
    createdAt = registerOutput<String>('createdAt');
    defaultSni = registerOutput<String?>('defaultSni');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    ips = registerOutput<List<String>?>('ips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    memberships = registerOutput<List<AddressMapMembership>?>('memberships', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressMapMembership>(guardedValue, (value) => AddressMapMembership.fromMap((value as Map).cast<String, dynamic>())); });
    modifiedAt = registerOutput<String>('modifiedAt');
  }

  /// Gets an existing [AddressMap] resource's state with the given [name] and [id].
  static AddressMap get(
    String name,
    pulumi.Input<String> id, {
    AddressMapState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AddressMap._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AddressMap._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/addressMap:AddressMap',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    canDelete = registerOutput<bool>('canDelete');
    canModifyIps = registerOutput<bool>('canModifyIps');
    createdAt = registerOutput<String>('createdAt');
    defaultSni = registerOutput<String?>('defaultSni');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    ips = registerOutput<List<String>?>('ips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    memberships = registerOutput<List<AddressMapMembership>?>('memberships', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressMapMembership>(guardedValue, (value) => AddressMapMembership.fromMap((value as Map).cast<String, dynamic>())); });
    modifiedAt = registerOutput<String>('modifiedAt');
  }

  /// Creates a typed reference to an existing [AddressMap] resource.
  AddressMap.reference(String urn)
    : super(
        'cloudflare:index/addressMap:AddressMap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    canDelete = registerOutput<bool>('canDelete');
    canModifyIps = registerOutput<bool>('canModifyIps');
    createdAt = registerOutput<String>('createdAt');
    defaultSni = registerOutput<String?>('defaultSni');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    ips = registerOutput<List<String>?>('ips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    memberships = registerOutput<List<AddressMapMembership>?>('memberships', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressMapMembership>(guardedValue, (value) => AddressMapMembership.fromMap((value as Map).cast<String, dynamic>())); });
    modifiedAt = registerOutput<String>('modifiedAt');
  }
}
