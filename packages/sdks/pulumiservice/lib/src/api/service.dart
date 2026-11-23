import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';

/// Creates a new service in an organization. A service is a Pulumi Cloud construct that groups stacks, ESC environments, and other resources under shared metadata, making it easier for its members to discover and access the resources that make up a piece of software. The service is owned by a user or a team, and the name must be unique among services owned by the same owner.
class Service extends pulumi.CustomResource {
  /// ContinuationToken is an opaque value the client can send to fetch additional
  /// items. Will be nil once all items have been returned.
  late final pulumi.Output<String?> continuationToken;
  /// The list of service items
  late final pulumi.Output<List<dynamic>> items;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_api_services_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/services:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    continuationToken = registerOutput<String?>('continuationToken');
    items = registerOutput<List<dynamic>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }

  /// Creates a typed reference to an existing [Service] resource.
  Service.reference(String urn)
    : super(
        'pulumiservice:api/services:Service',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    continuationToken = registerOutput<String?>('continuationToken');
    items = registerOutput<List<dynamic>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }
}
