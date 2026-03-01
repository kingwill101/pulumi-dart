import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';

/// Use this method to create a route for a private connectivity configuration in a project and location.
/// Auto-naming is currently not supported for this resource.
class Route extends pulumi.CustomResource {
  /// The create time of the resource.
  late final pulumi.Output<String> createTime;
  /// Destination address for connection
  late final pulumi.Output<String> destinationAddress;
  /// Destination port for connection
  late final pulumi.Output<int> destinationPort;
  /// Display name.
  late final pulumi.Output<String> displayName;
  /// Labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource's name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> privateConnectionId;
  late final pulumi.Output<String> project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Required. The Route identifier.
  late final pulumi.Output<String> routeId;
  /// The update time of the resource.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_datastream_v1_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datastream/v1:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.destinationAddress = registerOutput<String>('destinationAddress');
    this.destinationPort = registerOutput<int>('destinationPort');
    this.displayName = registerOutput<String>('displayName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateConnectionId = registerOutput<String>('privateConnectionId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.routeId = registerOutput<String>('routeId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
