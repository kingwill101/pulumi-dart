// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachments_service_attachment_connected_endpoint.dart';
import 'get_service_attachments_service_attachment_consumer_accept_list.dart';
import 'get_service_attachments_service_attachment_psc_service_attachment_id.dart';
import 'get_service_attachments_service_attachment_tunneling_config.dart';

class GetServiceAttachmentsServiceAttachment {
  /// An array of the consumer forwarding rules connected to this service
  /// attachment.
  final pulumi.Input<List<GetServiceAttachmentsServiceAttachmentConnectedEndpoint>> connectedEndpoints;
  /// The connection preference of the service attachment.
  /// Possible values are `ACCEPT_AUTOMATIC` and `ACCEPT_MANUAL`.
  final pulumi.Input<String> connectionPreference;
  /// An array of projects that are allowed to connect to this service
  /// attachment.
  final pulumi.Input<List<GetServiceAttachmentsServiceAttachmentConsumerAcceptList>> consumerAcceptLists;
  /// An array of projects that are not allowed to connect to this service
  /// attachment.
  final pulumi.Input<List<String>> consumerRejectLists;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// An optional description of the service attachment.
  final pulumi.Input<String> description;
  /// A list of domain names for the service attachment.
  final pulumi.Input<List<String>> domainNames;
  /// Whether the proxy protocol is enabled on the service attachment.
  final pulumi.Input<bool> enableProxyProtocol;
  /// The fingerprint of the service attachment.
  final pulumi.Input<String> fingerprint;
  /// The name of the service attachment.
  final pulumi.Input<String> name;
  /// The number of NAT IPs allocated per connected endpoint.
  final pulumi.Input<int> natIpsPerEndpoint;
  /// A list of URLs of subnetworks used for NAT in this service attachment.
  final pulumi.Input<List<String>> natSubnets;
  /// The project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String> project;
  /// The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center.
  /// This limit lets the service producer limit how many propagated Private Service Connect connections can be established to this service attachment from a single consumer.
  ///
  /// If the connection preference of the service attachment is ACCEPT_MANUAL, the limit applies to each project or network that is listed in the consumer accept list.
  /// If the connection preference of the service attachment is ACCEPT_AUTOMATIC, the limit applies to each project that contains a connected endpoint.
  ///
  /// If unspecified, the default propagated connection limit is 250. To explicitly send a zero value, set 'send_propagated_connection_limit_if_zero = true'.
  final pulumi.Input<int> propagatedConnectionLimit;
  /// An 128-bit global unique ID of the PSC service attachment.
  final pulumi.Input<List<GetServiceAttachmentsServiceAttachmentPscServiceAttachmentId>> pscServiceAttachmentIds;
  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  ///
  /// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
  /// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
  final pulumi.Input<bool> reconcileConnections;
  /// The region in which the resource belongs.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String> region;
  /// The URI of the service attachment.
  final pulumi.Input<String> selfLink;
  /// Controls the behavior of propagated_connection_limit.
  /// When false, setting propagatedConnectionLimit to zero causes the provider to use to the API's default value.
  /// When true, the provider will set propagatedConnectionLimit to zero.
  /// Defaults to false.
  final pulumi.Input<bool> sendPropagatedConnectionLimitIfZero;
  /// NOTE: This field is temporarily non-functional due to an underlying API issue.
  /// Any value provided here will be ignored until the API issue is resolved, expected around 2026-03.
  /// [If true, show NAT IPs of all connected endpoints.]
  final pulumi.Input<bool> showNatIps;
  /// The URL of the forwarding rule that represents the service identified
  /// by this service attachment.
  final pulumi.Input<String> targetService;
  /// Tunneling configuration for this service attachment.
  final pulumi.Input<List<GetServiceAttachmentsServiceAttachmentTunnelingConfig>> tunnelingConfigs;

  /// Creates a new [GetServiceAttachmentsServiceAttachment].
  /// [connectedEndpoints] An array of the consumer forwarding rules connected to this service
  /// [connectionPreference] The connection preference of the service attachment.
  /// [consumerAcceptLists] An array of projects that are allowed to connect to this service
  /// [consumerRejectLists] An array of projects that are not allowed to connect to this service
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [description] An optional description of the service attachment.
  /// [domainNames] A list of domain names for the service attachment.
  /// [enableProxyProtocol] Whether the proxy protocol is enabled on the service attachment.
  /// [fingerprint] The fingerprint of the service attachment.
  /// [name] The name of the service attachment.
  /// [natIpsPerEndpoint] The number of NAT IPs allocated per connected endpoint.
  /// [natSubnets] A list of URLs of subnetworks used for NAT in this service attachment.
  /// [project] The project in which the resource belongs.
  /// [propagatedConnectionLimit] The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center.
  /// [pscServiceAttachmentIds] An 128-bit global unique ID of the PSC service attachment.
  /// [reconcileConnections] This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  /// [region] The region in which the resource belongs.
  /// [selfLink] The URI of the service attachment.
  /// [sendPropagatedConnectionLimitIfZero] Controls the behavior of propagated_connection_limit.
  /// [showNatIps] NOTE: This field is temporarily non-functional due to an underlying API issue.
  /// [targetService] The URL of the forwarding rule that represents the service identified
  /// [tunnelingConfigs] Tunneling configuration for this service attachment.
  const GetServiceAttachmentsServiceAttachment({
    required this.connectedEndpoints,
    required this.connectionPreference,
    required this.consumerAcceptLists,
    required this.consumerRejectLists,
    required this.deletionPolicy,
    required this.description,
    required this.domainNames,
    required this.enableProxyProtocol,
    required this.fingerprint,
    required this.name,
    required this.natIpsPerEndpoint,
    required this.natSubnets,
    required this.project,
    required this.propagatedConnectionLimit,
    required this.pscServiceAttachmentIds,
    required this.reconcileConnections,
    required this.region,
    required this.selfLink,
    required this.sendPropagatedConnectionLimitIfZero,
    required this.showNatIps,
    required this.targetService,
    required this.tunnelingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedEndpoints': pulumi.Input.mapInputValue<List<GetServiceAttachmentsServiceAttachmentConnectedEndpoint>, List<Map<String, dynamic>>>(connectedEndpoints, (value) => pulumi.Input.encodeList<GetServiceAttachmentsServiceAttachmentConnectedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionPreference': connectionPreference,
      'consumerAcceptLists': pulumi.Input.mapInputValue<List<GetServiceAttachmentsServiceAttachmentConsumerAcceptList>, List<Map<String, dynamic>>>(consumerAcceptLists, (value) => pulumi.Input.encodeList<GetServiceAttachmentsServiceAttachmentConsumerAcceptList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumerRejectLists': consumerRejectLists,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'domainNames': domainNames,
      'enableProxyProtocol': enableProxyProtocol,
      'fingerprint': fingerprint,
      'name': name,
      'natIpsPerEndpoint': natIpsPerEndpoint,
      'natSubnets': natSubnets,
      'project': project,
      'propagatedConnectionLimit': propagatedConnectionLimit,
      'pscServiceAttachmentIds': pulumi.Input.mapInputValue<List<GetServiceAttachmentsServiceAttachmentPscServiceAttachmentId>, List<Map<String, dynamic>>>(pscServiceAttachmentIds, (value) => pulumi.Input.encodeList<GetServiceAttachmentsServiceAttachmentPscServiceAttachmentId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reconcileConnections': reconcileConnections,
      'region': region,
      'selfLink': selfLink,
      'sendPropagatedConnectionLimitIfZero': sendPropagatedConnectionLimitIfZero,
      'showNatIps': showNatIps,
      'targetService': targetService,
      'tunnelingConfigs': pulumi.Input.mapInputValue<List<GetServiceAttachmentsServiceAttachmentTunnelingConfig>, List<Map<String, dynamic>>>(tunnelingConfigs, (value) => pulumi.Input.encodeList<GetServiceAttachmentsServiceAttachmentTunnelingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceAttachmentsServiceAttachment.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentsServiceAttachment(
      connectedEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceAttachmentsServiceAttachmentConnectedEndpoint>(map['connectedEndpoints']!, (value) => GetServiceAttachmentsServiceAttachmentConnectedEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      connectionPreference: pulumi.Input.fromValue(map['connectionPreference'] as String),
      consumerAcceptLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceAttachmentsServiceAttachmentConsumerAcceptList>(map['consumerAcceptLists']!, (value) => GetServiceAttachmentsServiceAttachmentConsumerAcceptList.fromMap((value as Map).cast<String, dynamic>()))),
      consumerRejectLists: pulumi.Input.fromValue((map['consumerRejectLists'] as List).cast<String>()),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      domainNames: pulumi.Input.fromValue((map['domainNames'] as List).cast<String>()),
      enableProxyProtocol: pulumi.Input.fromValue(map['enableProxyProtocol'] as bool),
      fingerprint: pulumi.Input.fromValue(map['fingerprint'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      natIpsPerEndpoint: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['natIpsPerEndpoint'])),
      natSubnets: pulumi.Input.fromValue((map['natSubnets'] as List).cast<String>()),
      project: pulumi.Input.fromValue(map['project'] as String),
      propagatedConnectionLimit: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['propagatedConnectionLimit'])),
      pscServiceAttachmentIds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceAttachmentsServiceAttachmentPscServiceAttachmentId>(map['pscServiceAttachmentIds']!, (value) => GetServiceAttachmentsServiceAttachmentPscServiceAttachmentId.fromMap((value as Map).cast<String, dynamic>()))),
      reconcileConnections: pulumi.Input.fromValue(map['reconcileConnections'] as bool),
      region: pulumi.Input.fromValue(map['region'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      sendPropagatedConnectionLimitIfZero: pulumi.Input.fromValue(map['sendPropagatedConnectionLimitIfZero'] as bool),
      showNatIps: pulumi.Input.fromValue(map['showNatIps'] as bool),
      targetService: pulumi.Input.fromValue(map['targetService'] as String),
      tunnelingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceAttachmentsServiceAttachmentTunnelingConfig>(map['tunnelingConfigs']!, (value) => GetServiceAttachmentsServiceAttachmentTunnelingConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
