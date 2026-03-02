// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_connected_endpoint.dart';
import 'service_attachment_consumer_accept_list.dart';
import 'service_attachment_psc_service_attachment_id.dart';
import 'service_attachment_tunneling_config.dart';

/// Input properties used for looking up and filtering ServiceAttachment resources.
class ServiceAttachmentState {
  /// An array of the consumer forwarding rules connected to this service
  /// attachment.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceAttachmentConnectedEndpoint>>? connectedEndpoints;
  /// The connection preference to use for this service attachment. Valid
  /// values include "ACCEPT_AUTOMATIC", "ACCEPT_MANUAL".
  final pulumi.Input<String>? connectionPreference;
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
  final pulumi.Input<bool>? enableProxyProtocol;
  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  final pulumi.Input<String>? fingerprint;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// An array of subnets that is provided for NAT in this service attachment.
  final pulumi.Input<List<String>>? natSubnets;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center.
  /// This limit lets the service producer limit how many propagated Private Service Connect connections can be established to this service attachment from a single consumer.
  /// If the connection preference of the service attachment is ACCEPT_MANUAL, the limit applies to each project or network that is listed in the consumer accept list.
  /// If the connection preference of the service attachment is ACCEPT_AUTOMATIC, the limit applies to each project that contains a connected endpoint.
  /// If unspecified, the default propagated connection limit is 250. To explicitly send a zero value, set `send_propagated_connection_limit_if_zero = true`.
  final pulumi.Input<int>? propagatedConnectionLimit;
  /// An 128-bit global unique ID of the PSC service attachment.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceAttachmentPscServiceAttachmentId>>? pscServiceAttachmentIds;
  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  /// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
  /// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
  final pulumi.Input<bool>? reconcileConnections;
  /// URL of the region where the resource resides.
  final pulumi.Input<String>? region;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Controls the behavior of propagated_connection_limit.
  /// When false, setting propagated_connection_limit to zero causes the provider to use to the API's default value.
  /// When true, the provider will set propagated_connection_limit to zero.
  /// Defaults to false.
  final pulumi.Input<bool>? sendPropagatedConnectionLimitIfZero;
  /// If true, show NAT IPs of all connected endpoints.
  final pulumi.Input<bool>? showNatIps;
  /// The URL of a service serving the endpoint identified by this service attachment.
  final pulumi.Input<String>? targetService;
  /// Tunneling configuration for this service attachment.
  /// Structure is documented below.
  final pulumi.Input<ServiceAttachmentTunnelingConfig>? tunnelingConfig;

  /// Creates a new [ServiceAttachmentState].
  /// [connectedEndpoints] An array of the consumer forwarding rules connected to this service
  /// [connectionPreference] The connection preference to use for this service attachment. Valid
  /// [consumerAcceptLists] An array of projects that are allowed to connect to this service
  /// [consumerRejectLists] An array of projects that are not allowed to connect to this service
  /// [description] An optional description of this resource.
  /// [domainNames] If specified, the domain name will be used during the integration between
  /// [enableProxyProtocol] If true, enable the proxy protocol which is for supplying client TCP/IP
  /// [fingerprint] Fingerprint of this resource. This field is used internally during
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [natSubnets] An array of subnets that is provided for NAT in this service attachment.
  /// [project] The ID of the project in which the resource belongs.
  /// [propagatedConnectionLimit] The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center.
  /// [pscServiceAttachmentIds] An 128-bit global unique ID of the PSC service attachment.
  /// [reconcileConnections] This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  /// [region] URL of the region where the resource resides.
  /// [selfLink] The URI of the created resource.
  /// [sendPropagatedConnectionLimitIfZero] Controls the behavior of propagated_connection_limit.
  /// [showNatIps] If true, show NAT IPs of all connected endpoints.
  /// [targetService] The URL of a service serving the endpoint identified by this service attachment.
  /// [tunnelingConfig] Tunneling configuration for this service attachment.
  ServiceAttachmentState({
    this.connectedEndpoints,
    this.connectionPreference,
    this.consumerAcceptLists,
    this.consumerRejectLists,
    this.description,
    this.domainNames,
    this.enableProxyProtocol,
    this.fingerprint,
    this.name,
    this.natSubnets,
    this.project,
    this.propagatedConnectionLimit,
    this.pscServiceAttachmentIds,
    this.reconcileConnections,
    this.region,
    this.selfLink,
    this.sendPropagatedConnectionLimitIfZero,
    this.showNatIps,
    this.targetService,
    this.tunnelingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceAttachmentConnectedEndpoint>, List<Map<String, dynamic>>>(connectedEndpoints, (value) => pulumi.Input.encodeList<ServiceAttachmentConnectedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionPreference': ?connectionPreference,
      'consumerAcceptLists': ?pulumi.Input.mapOptionalInputValue<List<ServiceAttachmentConsumerAcceptList>, List<Map<String, dynamic>>>(consumerAcceptLists, (value) => pulumi.Input.encodeList<ServiceAttachmentConsumerAcceptList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumerRejectLists': ?consumerRejectLists,
      'description': ?description,
      'domainNames': ?domainNames,
      'enableProxyProtocol': ?enableProxyProtocol,
      'fingerprint': ?fingerprint,
      'name': ?name,
      'natSubnets': ?natSubnets,
      'project': ?project,
      'propagatedConnectionLimit': ?propagatedConnectionLimit,
      'pscServiceAttachmentIds': ?pulumi.Input.mapOptionalInputValue<List<ServiceAttachmentPscServiceAttachmentId>, List<Map<String, dynamic>>>(pscServiceAttachmentIds, (value) => pulumi.Input.encodeList<ServiceAttachmentPscServiceAttachmentId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reconcileConnections': ?reconcileConnections,
      'region': ?region,
      'selfLink': ?selfLink,
      'sendPropagatedConnectionLimitIfZero': ?sendPropagatedConnectionLimitIfZero,
      'showNatIps': ?showNatIps,
      'targetService': ?targetService,
      'tunnelingConfig': ?pulumi.Input.mapOptionalInputValue<ServiceAttachmentTunnelingConfig, Map<String, dynamic>>(tunnelingConfig, (value) => value.toMap()),
    };
  }

  factory ServiceAttachmentState.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentState(
      connectedEndpoints: map['connectedEndpoints'] == null ? null : (pulumi.Input.decodeList<ServiceAttachmentConnectedEndpoint>(map['connectedEndpoints']!, (value) => ServiceAttachmentConnectedEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectionPreference: map['connectionPreference'] == null ? null : (map['connectionPreference']! as String).input(),
      consumerAcceptLists: map['consumerAcceptLists'] == null ? null : (pulumi.Input.decodeList<ServiceAttachmentConsumerAcceptList>(map['consumerAcceptLists']!, (value) => ServiceAttachmentConsumerAcceptList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      consumerRejectLists: map['consumerRejectLists'] == null ? null : ((map['consumerRejectLists']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      domainNames: map['domainNames'] == null ? null : ((map['domainNames']! as List).cast<String>()).input(),
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : (map['enableProxyProtocol']! as bool).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      natSubnets: map['natSubnets'] == null ? null : ((map['natSubnets']! as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      propagatedConnectionLimit: map['propagatedConnectionLimit'] == null ? null : (map['propagatedConnectionLimit']! as int).input(),
      pscServiceAttachmentIds: map['pscServiceAttachmentIds'] == null ? null : (pulumi.Input.decodeList<ServiceAttachmentPscServiceAttachmentId>(map['pscServiceAttachmentIds']!, (value) => ServiceAttachmentPscServiceAttachmentId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reconcileConnections: map['reconcileConnections'] == null ? null : (map['reconcileConnections']! as bool).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      sendPropagatedConnectionLimitIfZero: map['sendPropagatedConnectionLimitIfZero'] == null ? null : (map['sendPropagatedConnectionLimitIfZero']! as bool).input(),
      showNatIps: map['showNatIps'] == null ? null : (map['showNatIps']! as bool).input(),
      targetService: map['targetService'] == null ? null : (map['targetService']! as String).input(),
      tunnelingConfig: map['tunnelingConfig'] == null ? null : (ServiceAttachmentTunnelingConfig.fromMap((map['tunnelingConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

