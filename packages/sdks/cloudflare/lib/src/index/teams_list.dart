import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_list_args.dart';
import 'teams_list_item.dart';
import 'teams_list_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustList = new cloudflare.ZeroTrustList("example_zero_trust_list", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     name: "Admin Serial Numbers",
///     type: "SERIAL",
///     description: "The serial numbers for administrators",
///     items: [{
///         description: "Austin office IP",
///         value: "8GE8721REF",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_list = cloudflare.ZeroTrustList("example_zero_trust_list",
///     account_id="699d98642c564d2e855e9661899b7252",
///     name="Admin Serial Numbers",
///     type="SERIAL",
///     description="The serial numbers for administrators",
///     items=[{
///         "description": "Austin office IP",
///         "value": "8GE8721REF",
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
///     var exampleZeroTrustList = new Cloudflare.ZeroTrustList("example_zero_trust_list", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Name = "Admin Serial Numbers",
///         Type = "SERIAL",
///         Description = "The serial numbers for administrators",
///         Items = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustListItemArgs
///             {
///                 Description = "Austin office IP",
///                 Value = "8GE8721REF",
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
/// 		_, err := cloudflare.NewZeroTrustList(ctx, "example_zero_trust_list", &cloudflare.ZeroTrustListArgs{
/// 			AccountId:   pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Name:        pulumi.String("Admin Serial Numbers"),
/// 			Type:        pulumi.String("SERIAL"),
/// 			Description: pulumi.String("The serial numbers for administrators"),
/// 			Items: cloudflare.ZeroTrustListItemArray{
/// 				&cloudflare.ZeroTrustListItemArgs{
/// 					Description: pulumi.String("Austin office IP"),
/// 					Value:       pulumi.String("8GE8721REF"),
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
/// resource "cloudflare_zerotrustlist" "example_zero_trust_list" {
///   account_id  = "699d98642c564d2e855e9661899b7252"
///   name        = "Admin Serial Numbers"
///   type        = "SERIAL"
///   description = "The serial numbers for administrators"
///   items {
///     description = "Austin office IP"
///     value       = "8GE8721REF"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustList;
/// import com.pulumi.cloudflare.ZeroTrustListArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustListItemArgs;
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
///         var exampleZeroTrustList = new ZeroTrustList("exampleZeroTrustList", ZeroTrustListArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .name("Admin Serial Numbers")
///             .type("SERIAL")
///             .description("The serial numbers for administrators")
///             .items(ZeroTrustListItemArgs.builder()
///                 .description("Austin office IP")
///                 .value("8GE8721REF")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustList:
///     type: cloudflare:ZeroTrustList
///     name: example_zero_trust_list
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       name: Admin Serial Numbers
///       type: SERIAL
///       description: The serial numbers for administrators
///       items:
///         - description: Austin office IP
///           value: 8GE8721REF
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/teamsList:TeamsList example '<account_id>/<list_id>'
/// ```
class TeamsList extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Provide the list description.
  late final pulumi.Output<String> description;
  /// Add items to the list.
  late final pulumi.Output<List<TeamsListItem>?> items;
  /// Indicate the number of items in the list.
  late final pulumi.Output<double> listCount;
  /// Specify the list name.
  late final pulumi.Output<String> name;
  /// Specify the list type.
  /// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY", "LOCATION", "DEVICE", "AAGUID".
  late final pulumi.Output<String> type;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [TeamsList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamsList]. {@macro pulumi_index_teams_list_teams_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamsList(
    String name, {
    TeamsListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/teamsList:TeamsList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    items = registerOutput<List<TeamsListItem>?>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TeamsListItem>(guardedValue, (value) => TeamsListItem.fromMap((value as Map).cast<String, dynamic>())); });
    listCount = registerOutput<double>('listCount');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [TeamsList] resource's state with the given [name] and [id].
  static TeamsList get(
    String name,
    pulumi.Input<String> id, {
    TeamsListState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TeamsList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TeamsList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/teamsList:TeamsList',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    items = registerOutput<List<TeamsListItem>?>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TeamsListItem>(guardedValue, (value) => TeamsListItem.fromMap((value as Map).cast<String, dynamic>())); });
    listCount = registerOutput<double>('listCount');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [TeamsList] resource.
  TeamsList.reference(String urn)
    : super(
        'cloudflare:index/teamsList:TeamsList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    items = registerOutput<List<TeamsListItem>?>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TeamsListItem>(guardedValue, (value) => TeamsListItem.fromMap((value as Map).cast<String, dynamic>())); });
    listCount = registerOutput<double>('listCount');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
