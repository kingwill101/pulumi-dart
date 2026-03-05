import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_compute_v1_args.dart';
import 'uint128_response_compute_v1.dart';

/// Creates a ServiceAttachment in the specified project in the given scope using the parameters that are included in the request.
class ServiceAttachmentComputeV1 extends pulumi.CustomResource {
  /// An array of connections for all the consumers connected to this service attachment.
  late final pulumi.Output<List<Map<String, dynamic>>> connectedEndpoints;

  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  late final pulumi.Output<String> connectionPreference;

  /// Projects that are allowed to connect to this service attachment.
  late final pulumi.Output<List<Map<String, dynamic>>> consumerAcceptLists;

  /// Projects that are not allowed to connect to this service attachment. The project can be specified using its id or number.
  late final pulumi.Output<List<String>> consumerRejectLists;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// If specified, the domain name will be used during the integration between the PSC connected endpoints and the Cloud DNS. For example, this is a valid domain name: "p.mycompany.com.". Current max number of domain names supported is 1.
  late final pulumi.Output<List<String>> domainNames;

  /// If true, enable the proxy protocol which is for supplying client TCP/IP address data in TCP connections that traverse proxies on their way to destination servers.
  late final pulumi.Output<bool> enableProxyProtocol;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a ServiceAttachment. An up-to-date fingerprint must be provided in order to patch/update the ServiceAttachment; otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the ServiceAttachment.
  late final pulumi.Output<String> fingerprint;

  /// Type of the resource. Always compute#serviceAttachment for service attachments.
  late final pulumi.Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// An array of URLs where each entry is the URL of a subnet provided by the service producer to use for NAT in this service attachment.
  late final pulumi.Output<List<String>> natSubnets;

  /// The URL of a forwarding rule with loadBalancingScheme INTERNAL* that is serving the endpoint identified by this service attachment.
  late final pulumi.Output<String> producerForwardingRule;
  late final pulumi.Output<String> project;

  /// An 128-bit global unique ID of the PSC service attachment.
  late final pulumi.Output<Uint128ResponseComputeV1> pscServiceAttachmentId;

  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints. - If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified . - If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. For newly created service attachment, this boolean defaults to false.
  late final pulumi.Output<bool> reconcileConnections;
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// The URL of a service serving the endpoint identified by this service attachment.
  late final pulumi.Output<String> targetService;

  /// Creates a new [ServiceAttachmentComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceAttachmentComputeV1]. {@macro pulumi_compute_v1_service_attachment_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceAttachmentComputeV1(
    String name, {
    ServiceAttachmentComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/v1:ServiceAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectedEndpoints = registerOutput<List<Map<String, dynamic>>>(
      'connectedEndpoints',
    );
    connectionPreference = registerOutput<String>('connectionPreference');
    consumerAcceptLists = registerOutput<List<Map<String, dynamic>>>(
      'consumerAcceptLists',
    );
    consumerRejectLists = registerOutput<List<String>>('consumerRejectLists');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    domainNames = registerOutput<List<String>>('domainNames');
    enableProxyProtocol = registerOutput<bool>('enableProxyProtocol');
    fingerprint = registerOutput<String>('fingerprint');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    natSubnets = registerOutput<List<String>>('natSubnets');
    producerForwardingRule = registerOutput<String>('producerForwardingRule');
    project = registerOutput<String>('project');
    pscServiceAttachmentId = registerOutput<Uint128ResponseComputeV1>(
      'pscServiceAttachmentId',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Uint128ResponseComputeV1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    reconcileConnections = registerOutput<bool>('reconcileConnections');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    targetService = registerOutput<String>('targetService');
  }
}
