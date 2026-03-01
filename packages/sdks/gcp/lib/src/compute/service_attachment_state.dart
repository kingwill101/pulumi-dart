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
    pulumi.Output<List<ServiceAttachmentConnectedEndpoint>>? connectedEndpoints,
    pulumi.Output<String>? connectionPreference,
    pulumi.Output<List<ServiceAttachmentConsumerAcceptList>>? consumerAcceptLists,
    pulumi.Output<List<String>>? consumerRejectLists,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? domainNames,
    pulumi.Output<bool>? enableProxyProtocol,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? natSubnets,
    pulumi.Output<String>? project,
    pulumi.Output<int>? propagatedConnectionLimit,
    pulumi.Output<List<ServiceAttachmentPscServiceAttachmentId>>? pscServiceAttachmentIds,
    pulumi.Output<bool>? reconcileConnections,
    pulumi.Output<String>? region,
    pulumi.Output<String>? selfLink,
    pulumi.Output<bool>? sendPropagatedConnectionLimitIfZero,
    pulumi.Output<bool>? showNatIps,
    pulumi.Output<String>? targetService,
    pulumi.Output<ServiceAttachmentTunnelingConfig>? tunnelingConfig,
  }) :
      connectedEndpoints = pulumi.Input.asOptionalInput<List<ServiceAttachmentConnectedEndpoint>>(connectedEndpoints),
      connectionPreference = pulumi.Input.asOptionalInput<String>(connectionPreference),
      consumerAcceptLists = pulumi.Input.asOptionalInput<List<ServiceAttachmentConsumerAcceptList>>(consumerAcceptLists),
      consumerRejectLists = pulumi.Input.asOptionalInput<List<String>>(consumerRejectLists),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainNames = pulumi.Input.asOptionalInput<List<String>>(domainNames),
      enableProxyProtocol = pulumi.Input.asOptionalInput<bool>(enableProxyProtocol),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      name = pulumi.Input.asOptionalInput<String>(name),
      natSubnets = pulumi.Input.asOptionalInput<List<String>>(natSubnets),
      project = pulumi.Input.asOptionalInput<String>(project),
      propagatedConnectionLimit = pulumi.Input.asOptionalInput<int>(propagatedConnectionLimit),
      pscServiceAttachmentIds = pulumi.Input.asOptionalInput<List<ServiceAttachmentPscServiceAttachmentId>>(pscServiceAttachmentIds),
      reconcileConnections = pulumi.Input.asOptionalInput<bool>(reconcileConnections),
      region = pulumi.Input.asOptionalInput<String>(region),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      sendPropagatedConnectionLimitIfZero = pulumi.Input.asOptionalInput<bool>(sendPropagatedConnectionLimitIfZero),
      showNatIps = pulumi.Input.asOptionalInput<bool>(showNatIps),
      targetService = pulumi.Input.asOptionalInput<String>(targetService),
      tunnelingConfig = pulumi.Input.asOptionalInput<ServiceAttachmentTunnelingConfig>(tunnelingConfig);

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
      connectedEndpoints: map['connectedEndpoints'] == null ? null : pulumi.Output.create<List<ServiceAttachmentConnectedEndpoint>>(pulumi.Input.decodeList<ServiceAttachmentConnectedEndpoint>(map['connectedEndpoints'], (value) => ServiceAttachmentConnectedEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      connectionPreference: map['connectionPreference'] == null ? null : pulumi.Output.create<String>(map['connectionPreference'] as String),
      consumerAcceptLists: map['consumerAcceptLists'] == null ? null : pulumi.Output.create<List<ServiceAttachmentConsumerAcceptList>>(pulumi.Input.decodeList<ServiceAttachmentConsumerAcceptList>(map['consumerAcceptLists'], (value) => ServiceAttachmentConsumerAcceptList.fromMap((value as Map).cast<String, dynamic>()))),
      consumerRejectLists: map['consumerRejectLists'] == null ? null : pulumi.Output.create<List<String>>((map['consumerRejectLists'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainNames: map['domainNames'] == null ? null : pulumi.Output.create<List<String>>((map['domainNames'] as List).cast<String>()),
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : pulumi.Output.create<bool>(map['enableProxyProtocol'] as bool),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      natSubnets: map['natSubnets'] == null ? null : pulumi.Output.create<List<String>>((map['natSubnets'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      propagatedConnectionLimit: map['propagatedConnectionLimit'] == null ? null : pulumi.Output.create<int>(map['propagatedConnectionLimit'] as int),
      pscServiceAttachmentIds: map['pscServiceAttachmentIds'] == null ? null : pulumi.Output.create<List<ServiceAttachmentPscServiceAttachmentId>>(pulumi.Input.decodeList<ServiceAttachmentPscServiceAttachmentId>(map['pscServiceAttachmentIds'], (value) => ServiceAttachmentPscServiceAttachmentId.fromMap((value as Map).cast<String, dynamic>()))),
      reconcileConnections: map['reconcileConnections'] == null ? null : pulumi.Output.create<bool>(map['reconcileConnections'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      sendPropagatedConnectionLimitIfZero: map['sendPropagatedConnectionLimitIfZero'] == null ? null : pulumi.Output.create<bool>(map['sendPropagatedConnectionLimitIfZero'] as bool),
      showNatIps: map['showNatIps'] == null ? null : pulumi.Output.create<bool>(map['showNatIps'] as bool),
      targetService: map['targetService'] == null ? null : pulumi.Output.create<String>(map['targetService'] as String),
      tunnelingConfig: map['tunnelingConfig'] == null ? null : pulumi.Output.create<ServiceAttachmentTunnelingConfig>(ServiceAttachmentTunnelingConfig.fromMap((map['tunnelingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

