import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_args.dart';
import 'list_item.dart';
import 'list_state.dart';

/// Accepted Permissions
///
/// - `Account Filter Lists Edit`
/// - `Account Filter Lists Read`
///
/// &gt; The `cloudflare.List` resource supports defining list items in line with the
/// `items` attribute. The provider also has a `cloudflare.ListItem` resource for
/// managing items as independent resources. Using both in line `items` definitions
/// _and_ `cloudflare.getListItems` on the same list is not supported and will cause
/// Terraform into an irreconcilable state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleList = new cloudflare.List("example_list", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     kind: "ip",
///     name: "list1",
///     description: "This is a note",
///     items: [
///         {
///             ip: "1.1.1.1",
///         },
///         {
///             ip: "1.1.1.2",
///         },
///         {
///             ip: "1.1.1.3",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_list = cloudflare.List("example_list",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     kind="ip",
///     name="list1",
///     description="This is a note",
///     items=[
///         {
///             "ip": "1.1.1.1",
///         },
///         {
///             "ip": "1.1.1.2",
///         },
///         {
///             "ip": "1.1.1.3",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleList = new Cloudflare.List("example_list", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Kind = "ip",
///         Name = "list1",
///         Description = "This is a note",
///         Items = new[]
///         {
///             new Cloudflare.Inputs.ListItemArgs
///             {
///                 Ip = "1.1.1.1",
///             },
///             new Cloudflare.Inputs.ListItemArgs
///             {
///                 Ip = "1.1.1.2",
///             },
///             new Cloudflare.Inputs.ListItemArgs
///             {
///                 Ip = "1.1.1.3",
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
/// 		_, err := cloudflare.NewList(ctx, "example_list", &cloudflare.ListArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Kind:        pulumi.String("ip"),
/// 			Name:        pulumi.String("list1"),
/// 			Description: pulumi.String("This is a note"),
/// 			Items: cloudflare.ListItemTypeArray{
/// 				&cloudflare.ListItemTypeArgs{
/// 					Ip: pulumi.String("1.1.1.1"),
/// 				},
/// 				&cloudflare.ListItemTypeArgs{
/// 					Ip: pulumi.String("1.1.1.2"),
/// 				},
/// 				&cloudflare.ListItemTypeArgs{
/// 					Ip: pulumi.String("1.1.1.3"),
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
/// resource "cloudflare_list" "example_list" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   kind        = "ip"
///   name        = "list1"
///   description = "This is a note"
///   items {
///     ip = "1.1.1.1"
///   }
///   items {
///     ip = "1.1.1.2"
///   }
///   items {
///     ip = "1.1.1.3"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.List;
/// import com.pulumi.cloudflare.ListArgs;
/// import com.pulumi.cloudflare.inputs.ListItemArgs;
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
///         var exampleList = new List("exampleList", ListArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .kind("ip")
///             .name("list1")
///             .description("This is a note")
///             .items(
///                 ListItemArgs.builder()
///                     .ip("1.1.1.1")
///                     .build(),
///                 ListItemArgs.builder()
///                     .ip("1.1.1.2")
///                     .build(),
///                 ListItemArgs.builder()
///                     .ip("1.1.1.3")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleList:
///     type: cloudflare:List
///     name: example_list
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       kind: ip
///       name: list1
///       description: This is a note
///       items:
///         - ip: 1.1.1.1
///         - ip: 1.1.1.2
///         - ip: 1.1.1.3
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/list:List example '<account_id>/<list_id>'
/// ```
class ListType extends pulumi.CustomResource {
  /// The Account ID for this resource.
  late final pulumi.Output<String> accountId;
  /// The RFC 3339 timestamp of when the list was created.
  late final pulumi.Output<String> createdOn;
  /// An informative summary of the list.
  late final pulumi.Output<String?> description;
  /// The items in the list. If set, this overwrites all items in the list. Do not use with `cloudflare.ListItem`.
  late final pulumi.Output<List<ListItem>?> items;
  /// The type of the list. Each type supports specific list items (IP addresses, ASNs, hostnames or redirects).
  /// Available values: "ip", "redirect", "hostname", "asn".
  late final pulumi.Output<String> kind;
  /// The RFC 3339 timestamp of when the list was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// An informative name for the list. Use this name in filter and rule expressions.
  late final pulumi.Output<String> name;
  /// The number of items in the list.
  late final pulumi.Output<double> numItems;
  /// The number of [filters](https://www.terraform.io/api/resources/filters/) referencing the list.
  late final pulumi.Output<double> numReferencingFilters;

  /// Creates a new [ListType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListType]. {@macro pulumi_index_list_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListType(
    String name, {
    ListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/list:List',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    items = registerOutput<List<ListItem>?>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListItem>(guardedValue, (value) => ListItem.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    numItems = registerOutput<double>('numItems');
    numReferencingFilters = registerOutput<double>('numReferencingFilters');
  }

  /// Gets an existing [ListType] resource's state with the given [name] and [id].
  static ListType get(
    String name,
    pulumi.Input<String> id, {
    ListState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ListType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ListType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/list:List',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    items = registerOutput<List<ListItem>?>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListItem>(guardedValue, (value) => ListItem.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    numItems = registerOutput<double>('numItems');
    numReferencingFilters = registerOutput<double>('numReferencingFilters');
  }

  /// Creates a typed reference to an existing [ListType] resource.
  ListType.reference(String urn)
    : super(
        'cloudflare:index/list:List',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    items = registerOutput<List<ListItem>?>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListItem>(guardedValue, (value) => ListItem.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    numItems = registerOutput<double>('numItems');
    numReferencingFilters = registerOutput<double>('numReferencingFilters');
  }
}
