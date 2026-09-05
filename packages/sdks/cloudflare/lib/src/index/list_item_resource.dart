import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_item_args.dart';
import 'list_item_hostname.dart';
import 'list_item_redirect.dart';
import 'list_item_state.dart';

/// Accepted Permissions
///
/// - `Account Filter Lists Edit`
/// - `Account Filter Lists Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleListItem = new cloudflare.ListItem("example_list_item", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     listId: "2c0fc9fa937b11eaa1b71c4d701ab86e",
///     ip: "10.0.0.1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_list_item = cloudflare.ListItem("example_list_item",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     list_id="2c0fc9fa937b11eaa1b71c4d701ab86e",
///     ip="10.0.0.1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleListItem = new Cloudflare.ListItem("example_list_item", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ListId = "2c0fc9fa937b11eaa1b71c4d701ab86e",
///         Ip = "10.0.0.1",
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
/// 		_, err := cloudflare.NewListItem(ctx, "example_list_item", &cloudflare.ListItemArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ListId:    pulumi.String("2c0fc9fa937b11eaa1b71c4d701ab86e"),
/// 			Ip:        pulumi.String("10.0.0.1"),
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
/// resource "cloudflare_listitem" "example_list_item" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   list_id    = "2c0fc9fa937b11eaa1b71c4d701ab86e"
///   ip         = "10.0.0.1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ListItem;
/// import com.pulumi.cloudflare.ListItemArgs;
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
///         var exampleListItem = new ListItem("exampleListItem", ListItemArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .listId("2c0fc9fa937b11eaa1b71c4d701ab86e")
///             .ip("10.0.0.1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleListItem:
///     type: cloudflare:ListItem
///     name: example_list_item
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       listId: 2c0fc9fa937b11eaa1b71c4d701ab86e
///       ip: 10.0.0.1
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/listItem:ListItem example '<account_id>/<list_id>/<item_id>'
/// ```
class ListItemResource extends pulumi.CustomResource {
  /// The Account ID for this resource.
  late final pulumi.Output<String> accountId;
  /// A non-negative 32 bit integer
  late final pulumi.Output<int?> asn;
  /// An informative summary of the list item.
  late final pulumi.Output<String?> comment;
  /// The RFC 3339 timestamp of when the item was created.
  late final pulumi.Output<String> createdOn;
  /// Hostnames support ASCII(7) letters from a to z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
  late final pulumi.Output<ListItemHostname?> hostname;
  /// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
  late final pulumi.Output<String?> ip;
  /// The unique ID of the list.
  late final pulumi.Output<String> listId;
  /// The RFC 3339 timestamp of when the item was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// The unique operation ID of the asynchronous action.
  late final pulumi.Output<String> operationId;
  /// The definition of the redirect.
  late final pulumi.Output<ListItemRedirect?> redirect;

  /// Creates a new [ListItemResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListItemResource]. {@macro pulumi_index_list_item_list_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListItemResource(
    String name, {
    ListItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/listItem:ListItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    asn = registerOutput<int?>('asn');
    comment = registerOutput<String?>('comment');
    createdOn = registerOutput<String>('createdOn');
    hostname = registerOutput<ListItemHostname?>('hostname', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListItemHostname.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ip = registerOutput<String?>('ip');
    listId = registerOutput<String>('listId');
    modifiedOn = registerOutput<String>('modifiedOn');
    operationId = registerOutput<String>('operationId');
    redirect = registerOutput<ListItemRedirect?>('redirect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListItemRedirect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ListItemResource] resource's state with the given [name] and [id].
  static ListItemResource get(
    String name,
    pulumi.Input<String> id, {
    ListItemState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ListItemResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ListItemResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/listItem:ListItem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    asn = registerOutput<int?>('asn');
    comment = registerOutput<String?>('comment');
    createdOn = registerOutput<String>('createdOn');
    hostname = registerOutput<ListItemHostname?>('hostname', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListItemHostname.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ip = registerOutput<String?>('ip');
    listId = registerOutput<String>('listId');
    modifiedOn = registerOutput<String>('modifiedOn');
    operationId = registerOutput<String>('operationId');
    redirect = registerOutput<ListItemRedirect?>('redirect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListItemRedirect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ListItemResource] resource.
  ListItemResource.reference(String urn)
    : super(
        'cloudflare:index/listItem:ListItem',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    asn = registerOutput<int?>('asn');
    comment = registerOutput<String?>('comment');
    createdOn = registerOutput<String>('createdOn');
    hostname = registerOutput<ListItemHostname?>('hostname', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListItemHostname.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ip = registerOutput<String?>('ip');
    listId = registerOutput<String>('listId');
    modifiedOn = registerOutput<String>('modifiedOn');
    operationId = registerOutput<String>('operationId');
    redirect = registerOutput<ListItemRedirect?>('redirect', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListItemRedirect.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
