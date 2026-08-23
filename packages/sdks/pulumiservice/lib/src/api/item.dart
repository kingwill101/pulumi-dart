import 'package:pulumi/pulumi.dart' as pulumi;
import 'item_args.dart';

/// Adds items (such as access tokens, team memberships, or stack permissions) to an existing service account. Service accounts provide programmatic, non-human access to Pulumi Cloud resources and are scoped to an organization. Items define what the service account can access and what credentials it holds. Returns the updated service details.
class Item extends pulumi.CustomResource {
  /// ContinuationToken is an opaque value the client can send to fetch additional
  /// items. Will be nil once all items have been returned.
  late final pulumi.Output<String?> continuationToken;
  /// The list of service items
  late final pulumi.Output<List<Map<String, dynamic>>> items;
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
    items = registerOutput<List<Map<String, dynamic>>>('items');
    service = registerOutput<dynamic>('service');
  }
}
