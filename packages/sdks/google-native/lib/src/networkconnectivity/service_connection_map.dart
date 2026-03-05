import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_connection_map_args.dart';

/// Creates a new ServiceConnectionMap in a given project and location.
class ServiceConnectionMap extends pulumi.CustomResource {
  /// The PSC configurations on consumer side.
  late final pulumi.Output<List<Map<String, dynamic>>> consumerPscConfigs;
  /// PSC connection details on consumer side.
  late final pulumi.Output<List<Map<String, dynamic>>> consumerPscConnections;
  /// Time when the ServiceConnectionMap was created.
  late final pulumi.Output<String> createTime;
  /// A description of this resource.
  late final pulumi.Output<String> description;
  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// The infrastructure used for connections between consumers/producers.
  late final pulumi.Output<String> infrastructure;
  /// User-defined labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  late final pulumi.Output<String> name;
  /// The PSC configurations on producer side.
  late final pulumi.Output<List<Map<String, dynamic>>> producerPscConfigs;
  late final pulumi.Output<String> project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  late final pulumi.Output<String> serviceClass;
  /// The service class uri this ServiceConnectionMap is for.
  late final pulumi.Output<String> serviceClassUri;
  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionMaps/foo') See https://google.aip.dev/122#resource-id-segments Unique per location. If one is not provided, one will be generated.
  late final pulumi.Output<String?> serviceConnectionMapId;
  /// The token provided by the consumer. This token authenticates that the consumer can create a connecton within the specified project and network.
  late final pulumi.Output<String> token;
  /// Time when the ServiceConnectionMap was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServiceConnectionMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceConnectionMap]. {@macro pulumi_networkconnectivity_v1_service_connection_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceConnectionMap(
    String name, {
    ServiceConnectionMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1:ServiceConnectionMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    consumerPscConfigs = registerOutput<List<Map<String, dynamic>>>('consumerPscConfigs');
    consumerPscConnections = registerOutput<List<Map<String, dynamic>>>('consumerPscConnections');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    infrastructure = registerOutput<String>('infrastructure');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    producerPscConfigs = registerOutput<List<Map<String, dynamic>>>('producerPscConfigs');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    serviceClass = registerOutput<String>('serviceClass');
    serviceClassUri = registerOutput<String>('serviceClassUri');
    serviceConnectionMapId = registerOutput<String?>('serviceConnectionMapId');
    token = registerOutput<String>('token');
    updateTime = registerOutput<String>('updateTime');
  }
}
