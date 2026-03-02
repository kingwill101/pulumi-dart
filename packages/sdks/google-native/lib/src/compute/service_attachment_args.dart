// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_connection_preference.dart';
import 'service_attachment_consumer_project_limit.dart';
import 'service_attachment_tunneling_config.dart';

/// {@template pulumi_compute_alpha_service_attachment_args_doc}
/// The set of arguments for ServiceAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_service_attachment_args_doc}
class ServiceAttachmentArgs {
  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  final pulumi.Input<ServiceAttachmentConnectionPreference>? connectionPreference;
  /// Projects that are allowed to connect to this service attachment.
  final pulumi.Input<List<ServiceAttachmentConsumerProjectLimit>>? consumerAcceptLists;
  /// Projects that are not allowed to connect to this service attachment. The project can be specified using its id or number.
  final pulumi.Input<List<String>>? consumerRejectLists;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// If specified, the domain name will be used during the integration between the PSC connected endpoints and the Cloud DNS. For example, this is a valid domain name: "p.mycompany.com.". Current max number of domain names supported is 1.
  final pulumi.Input<List<String>>? domainNames;
  /// If true, enable the proxy protocol which is for supplying client TCP/IP address data in TCP connections that traverse proxies on their way to destination servers.
  final pulumi.Input<bool>? enableProxyProtocol;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// An array of URLs where each entry is the URL of a subnet provided by the service producer to use for NAT in this service attachment.
  final pulumi.Input<List<String>>? natSubnets;
  /// The URL of a forwarding rule with loadBalancingScheme INTERNAL* that is serving the endpoint identified by this service attachment.
  final pulumi.Input<String>? producerForwardingRule;
  final pulumi.Input<String>? project;
  /// The number of VPCs to which this endpoint is allowed to be propagated per accept list resource (project or network). For ACCEPT_AUTOMATIC service attachment, this limit is default to per project.
  final pulumi.Input<int>? propagatedConnectionLimit;
  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints. - If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified . - If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. For newly created service attachment, this boolean defaults to false.
  final pulumi.Input<bool>? reconcileConnections;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The URL of a service serving the endpoint identified by this service attachment.
  final pulumi.Input<String>? targetService;
  /// When a tunneling config is set on this service attachment it will encapsulate traffic between consumer and producer. When tunneling is enabled: - nat_subnets must be unset - enable_proxy_protocol must be false - producer_forwarding_rule must be a L4 ILB. -
  final pulumi.Input<ServiceAttachmentTunnelingConfig>? tunnelingConfig;

  /// Creates a new [ServiceAttachmentArgs].
  /// [connectionPreference] The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  /// [consumerAcceptLists] Projects that are allowed to connect to this service attachment.
  /// [consumerRejectLists] Projects that are not allowed to connect to this service attachment. The project can be specified using its id or number.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [domainNames] If specified, the domain name will be used during the integration between the PSC connected endpoints and the Cloud DNS. For example, this is a valid domain name: "p.mycompany.com.". Current max number of domain names supported is 1.
  /// [enableProxyProtocol] If true, enable the proxy protocol which is for supplying client TCP/IP address data in TCP connections that traverse proxies on their way to destination servers.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [natSubnets] An array of URLs where each entry is the URL of a subnet provided by the service producer to use for NAT in this service attachment.
  /// [producerForwardingRule] The URL of a forwarding rule with loadBalancingScheme INTERNAL* that is serving the endpoint identified by this service attachment.
  /// [project] Optional.
  /// [propagatedConnectionLimit] The number of VPCs to which this endpoint is allowed to be propagated per accept list resource (project or network). For ACCEPT_AUTOMATIC service attachment, this limit is default to per project.
  /// [reconcileConnections] This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints. - If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified . - If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list. For newly created service attachment, this boolean defaults to false.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [targetService] The URL of a service serving the endpoint identified by this service attachment.
  /// [tunnelingConfig] When a tunneling config is set on this service attachment it will encapsulate traffic between consumer and producer. When tunneling is enabled: - nat_subnets must be unset - enable_proxy_protocol must be false - producer_forwarding_rule must be a L4 ILB. -
  ServiceAttachmentArgs({
    this.connectionPreference,
    this.consumerAcceptLists,
    this.consumerRejectLists,
    this.description,
    this.domainNames,
    this.enableProxyProtocol,
    this.name,
    this.natSubnets,
    this.producerForwardingRule,
    this.project,
    this.propagatedConnectionLimit,
    this.reconcileConnections,
    required this.region,
    this.requestId,
    this.targetService,
    this.tunnelingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPreference': ?pulumi.Input.mapOptionalInputValue<ServiceAttachmentConnectionPreference, String>(connectionPreference, (value) => value.value),
      'consumerAcceptLists': ?pulumi.Input.mapOptionalInputValue<List<ServiceAttachmentConsumerProjectLimit>, List<Map<String, dynamic>>>(consumerAcceptLists, (value) => pulumi.Input.encodeList<ServiceAttachmentConsumerProjectLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumerRejectLists': ?consumerRejectLists,
      'description': ?description,
      'domainNames': ?domainNames,
      'enableProxyProtocol': ?enableProxyProtocol,
      'name': ?name,
      'natSubnets': ?natSubnets,
      'producerForwardingRule': ?producerForwardingRule,
      'project': ?project,
      'propagatedConnectionLimit': ?propagatedConnectionLimit,
      'reconcileConnections': ?reconcileConnections,
      'region': region,
      'requestId': ?requestId,
      'targetService': ?targetService,
      'tunnelingConfig': ?pulumi.Input.mapOptionalInputValue<ServiceAttachmentTunnelingConfig, Map<String, dynamic>>(tunnelingConfig, (value) => value.toMap()),
    };
  }

  factory ServiceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentArgs(
      connectionPreference: map['connectionPreference'] == null ? null : (ServiceAttachmentConnectionPreference.fromValue(map['connectionPreference']! as String)).input(),
      consumerAcceptLists: map['consumerAcceptLists'] == null ? null : (pulumi.Input.decodeList<ServiceAttachmentConsumerProjectLimit>(map['consumerAcceptLists']!, (value) => ServiceAttachmentConsumerProjectLimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      consumerRejectLists: map['consumerRejectLists'] == null ? null : ((map['consumerRejectLists']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      domainNames: map['domainNames'] == null ? null : ((map['domainNames']! as List).cast<String>()).input(),
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : (map['enableProxyProtocol']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      natSubnets: map['natSubnets'] == null ? null : ((map['natSubnets']! as List).cast<String>()).input(),
      producerForwardingRule: map['producerForwardingRule'] == null ? null : (map['producerForwardingRule']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      propagatedConnectionLimit: map['propagatedConnectionLimit'] == null ? null : (map['propagatedConnectionLimit']! as int).input(),
      reconcileConnections: map['reconcileConnections'] == null ? null : (map['reconcileConnections']! as bool).input(),
      region: (map['region'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      targetService: map['targetService'] == null ? null : (map['targetService']! as String).input(),
      tunnelingConfig: map['tunnelingConfig'] == null ? null : (ServiceAttachmentTunnelingConfig.fromMap((map['tunnelingConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

