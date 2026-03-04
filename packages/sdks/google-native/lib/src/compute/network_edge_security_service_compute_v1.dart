import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_edge_security_service_compute_v1_args.dart';

/// Creates a new service in the specified project using the data included in the request.
class NetworkEdgeSecurityServiceComputeV1 extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a NetworkEdgeSecurityService. An up-to-date fingerprint must be provided in order to update the NetworkEdgeSecurityService, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a NetworkEdgeSecurityService.
  late final pulumi.Output<String> fingerprint;

  /// [Output only] Type of the resource. Always compute#networkEdgeSecurityService for NetworkEdgeSecurityServices
  late final pulumi.Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The resource URL for the network edge security service associated with this network edge security service.
  late final pulumi.Output<String> securityPolicy;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Creates a new [NetworkEdgeSecurityServiceComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkEdgeSecurityServiceComputeV1]. {@macro pulumi_compute_v1_network_edge_security_service_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkEdgeSecurityServiceComputeV1(
    String name, {
    NetworkEdgeSecurityServiceComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/v1:NetworkEdgeSecurityService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    fingerprint = registerOutput<String>('fingerprint');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    securityPolicy = registerOutput<String>('securityPolicy');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
