// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_consumer_accept_list.dart';
import 'service_attachment_tunneling_config.dart';

/// {@template pulumi_compute_service_attachment_service_attachment_args_doc}
/// The set of arguments for ServiceAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_service_attachment_service_attachment_args_doc}
class ServiceAttachmentArgs {
  /// The connection preference to use for this service attachment. Valid
  /// values include "ACCEPT_AUTOMATIC", "ACCEPT_MANUAL".
  final pulumi.Input<String> connectionPreference;
  /// An array of projects that are allowed to connect to this service
  /// attachment.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceAttachmentConsumerAcceptList>>? consumerAcceptLists;
  /// An array of projects that are not allowed to connect to this service
  /// attachment.
  final pulumi.Input<List<String>>? consumerRejectLists;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// If specified, the domain name will be used during the integration between
  /// the PSC connected endpoints and the Cloud DNS. For example, this is a
  /// valid domain name: "p.mycompany.com.". Current max number of domain names
  /// supported is 1.
  final pulumi.Input<List<String>>? domainNames;
  /// If true, enable the proxy protocol which is for supplying client TCP/IP
  /// address data in TCP connections that traverse proxies on their way to
  /// destination servers.
  final pulumi.Input<bool> enableProxyProtocol;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// An array of subnets that is provided for NAT in this service attachment.
  final pulumi.Input<List<String>> natSubnets;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center.
  /// This limit lets the service producer limit how many propagated Private Service Connect connections can be established to this service attachment from a single consumer.
  /// If the connection preference of the service attachment is ACCEPT_MANUAL, the limit applies to each project or network that is listed in the consumer accept list.
  /// If the connection preference of the service attachment is ACCEPT_AUTOMATIC, the limit applies to each project that contains a connected endpoint.
  /// If unspecified, the default propagated connection limit is 250. To explicitly send a zero value, set `send_propagated_connection_limit_if_zero = true`.
  final pulumi.Input<int>? propagatedConnectionLimit;
  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  /// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
  /// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
  final pulumi.Input<bool>? reconcileConnections;
  /// URL of the region where the resource resides.
  final pulumi.Input<String>? region;
  /// Controls the behavior of propagated_connection_limit.
  /// When false, setting propagated_connection_limit to zero causes the provider to use to the API's default value.
  /// When true, the provider will set propagated_connection_limit to zero.
  /// Defaults to false.
  final pulumi.Input<bool>? sendPropagatedConnectionLimitIfZero;
  /// If true, show NAT IPs of all connected endpoints.
  final pulumi.Input<bool>? showNatIps;
  /// The URL of a service serving the endpoint identified by this service attachment.
  final pulumi.Input<String> targetService;
  /// Tunneling configuration for this service attachment.
  /// Structure is documented below.
  final pulumi.Input<ServiceAttachmentTunnelingConfig>? tunnelingConfig;

  /// Creates a new [ServiceAttachmentArgs].
  /// [connectionPreference] The connection preference to use for this service attachment. Valid
  /// [consumerAcceptLists] An array of projects that are allowed to connect to this service
  /// [consumerRejectLists] An array of projects that are not allowed to connect to this service
  /// [description] An optional description of this resource.
  /// [domainNames] If specified, the domain name will be used during the integration between
  /// [enableProxyProtocol] If true, enable the proxy protocol which is for supplying client TCP/IP
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [natSubnets] An array of subnets that is provided for NAT in this service attachment.
  /// [project] The ID of the project in which the resource belongs.
  /// [propagatedConnectionLimit] The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center.
  /// [reconcileConnections] This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  /// [region] URL of the region where the resource resides.
  /// [sendPropagatedConnectionLimitIfZero] Controls the behavior of propagated_connection_limit.
  /// [showNatIps] If true, show NAT IPs of all connected endpoints.
  /// [targetService] The URL of a service serving the endpoint identified by this service attachment.
  /// [tunnelingConfig] Tunneling configuration for this service attachment.
  ServiceAttachmentArgs({
    required this.connectionPreference,
    this.consumerAcceptLists,
    this.consumerRejectLists,
    this.description,
    this.domainNames,
    required this.enableProxyProtocol,
    this.name,
    required this.natSubnets,
    this.project,
    this.propagatedConnectionLimit,
    this.reconcileConnections,
    this.region,
    this.sendPropagatedConnectionLimitIfZero,
    this.showNatIps,
    required this.targetService,
    this.tunnelingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPreference': connectionPreference,
      'consumerAcceptLists': ?pulumi.Input.mapOptionalInputValue<List<ServiceAttachmentConsumerAcceptList>, List<Map<String, dynamic>>>(consumerAcceptLists, (value) => pulumi.Input.encodeList<ServiceAttachmentConsumerAcceptList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumerRejectLists': ?consumerRejectLists,
      'description': ?description,
      'domainNames': ?domainNames,
      'enableProxyProtocol': enableProxyProtocol,
      'name': ?name,
      'natSubnets': natSubnets,
      'project': ?project,
      'propagatedConnectionLimit': ?propagatedConnectionLimit,
      'reconcileConnections': ?reconcileConnections,
      'region': ?region,
      'sendPropagatedConnectionLimitIfZero': ?sendPropagatedConnectionLimitIfZero,
      'showNatIps': ?showNatIps,
      'targetService': targetService,
      'tunnelingConfig': ?pulumi.Input.mapOptionalInputValue<ServiceAttachmentTunnelingConfig, Map<String, dynamic>>(tunnelingConfig, (value) => value.toMap()),
    };
  }

  factory ServiceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentArgs(
      connectionPreference: (map['connectionPreference'] as String).input(),
      consumerAcceptLists: map['consumerAcceptLists'] == null ? null : (pulumi.Input.decodeList<ServiceAttachmentConsumerAcceptList>(map['consumerAcceptLists']!, (value) => ServiceAttachmentConsumerAcceptList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      consumerRejectLists: map['consumerRejectLists'] == null ? null : ((map['consumerRejectLists']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      domainNames: map['domainNames'] == null ? null : ((map['domainNames']! as List).cast<String>()).input(),
      enableProxyProtocol: (map['enableProxyProtocol'] as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      natSubnets: ((map['natSubnets'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      propagatedConnectionLimit: map['propagatedConnectionLimit'] == null ? null : (map['propagatedConnectionLimit']! as int).input(),
      reconcileConnections: map['reconcileConnections'] == null ? null : (map['reconcileConnections']! as bool).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      sendPropagatedConnectionLimitIfZero: map['sendPropagatedConnectionLimitIfZero'] == null ? null : (map['sendPropagatedConnectionLimitIfZero']! as bool).input(),
      showNatIps: map['showNatIps'] == null ? null : (map['showNatIps']! as bool).input(),
      targetService: (map['targetService'] as String).input(),
      tunnelingConfig: map['tunnelingConfig'] == null ? null : (ServiceAttachmentTunnelingConfig.fromMap((map['tunnelingConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

