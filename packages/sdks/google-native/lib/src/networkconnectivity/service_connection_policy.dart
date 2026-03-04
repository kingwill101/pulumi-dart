import 'package:pulumi/pulumi.dart' as pulumi;
import 'psc_config_response.dart';
import 'service_connection_policy_args.dart';

/// Creates a new ServiceConnectionPolicy in a given project and location.
class ServiceConnectionPolicy extends pulumi.CustomResource {
  /// Time when the ServiceConnectionMap was created.
  late final pulumi.Output<String> createTime;

  /// A description of this resource.
  late final pulumi.Output<String> description;

  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// The type of underlying resources used to create the connection.
  late final pulumi.Output<String> infrastructure;

  /// User-defined labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  late final pulumi.Output<String> name;

  /// The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  late final pulumi.Output<String> network;
  late final pulumi.Output<String> project;

  /// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  late final pulumi.Output<PscConfigResponse> pscConfig;

  /// [Output only] Information about each Private Service Connect connection.
  late final pulumi.Output<List<Map<String, dynamic>>> pscConnections;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass. It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  late final pulumi.Output<String> serviceClass;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionPolicies/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  late final pulumi.Output<String?> serviceConnectionPolicyId;

  /// Time when the ServiceConnectionMap was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServiceConnectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceConnectionPolicy]. {@macro pulumi_networkconnectivity_v1_service_connection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceConnectionPolicy(
    String name, {
    ServiceConnectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networkconnectivity/v1:ServiceConnectionPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    infrastructure = registerOutput<String>('infrastructure');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pscConfig = registerOutput<PscConfigResponse>('pscConfig');
    pscConnections = registerOutput<List<Map<String, dynamic>>>(
      'pscConnections',
    );
    requestId = registerOutput<String?>('requestId');
    serviceClass = registerOutput<String>('serviceClass');
    serviceConnectionPolicyId = registerOutput<String?>(
      'serviceConnectionPolicyId',
    );
    updateTime = registerOutput<String>('updateTime');
  }
}
