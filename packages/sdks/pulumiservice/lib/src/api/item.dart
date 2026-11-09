import 'package:pulumi/pulumi.dart' as pulumi;
import 'item_args.dart';

/// Adds items, such as stacks or ESC environments, to an existing service. A service is a Pulumi Cloud construct that groups stacks, environments, and other resources under shared metadata so members of the service can discover and access them together. Returns the updated service details with the first page of items; if `continuationToken` is set on the response, pass it to `GetService` to fetch the remaining pages.
///
/// Prefer `AddServiceItemsV2`, then `GetService` to read the items.
class Item extends pulumi.CustomResource {
  /// ContinuationToken is an opaque value the client can send to fetch additional
  /// items. Will be nil once all items have been returned.
  late final pulumi.Output<String?> continuationToken;
  /// The list of service items
  late final pulumi.Output<List<dynamic>> items;
  /// The service details
  late final pulumi.Output<dynamic> service;

  /// Creates a new [Item].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Item]. {@macro pulumi_api_services_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Item(
    String name, {
    ItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/services:Item',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    continuationToken = registerOutput<String?>('continuationToken');
    items = registerOutput<List<dynamic>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    service = registerOutput<dynamic>('service');
  }

  /// Creates a typed reference to an existing [Item] resource.
  Item.reference(String urn)
    : super(
        'pulumiservice:api/services:Item',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    continuationToken = registerOutput<String?>('continuationToken');
    items = registerOutput<List<dynamic>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    service = registerOutput<dynamic>('service');
  }
}
