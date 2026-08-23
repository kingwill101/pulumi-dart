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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// If unspecified, the default propagated connection limit is 250. To explicitly send a zero value, set `sendPropagatedConnectionLimitIfZero = true`.
  final pulumi.Input<int>? propagatedConnectionLimit;
  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  /// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
  /// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
  final pulumi.Input<bool>? reconcileConnections;
  /// URL of the region where the resource resides.
  final pulumi.Input<String>? region;
  /// Controls the behavior of propagated_connection_limit.
  /// When false, setting propagatedConnectionLimit to zero causes the provider to use to the API's default value.
  /// When true, the provider will set propagatedConnectionLimit to zero.
  /// Defaults to false.
  final pulumi.Input<bool>? sendPropagatedConnectionLimitIfZero;
  /// NOTE: This field is temporarily non-functional due to an underlying API issue.
  /// Any value provided here will be ignored until the API issue is resolved, expected around 2026-03.
  /// [If true, show NAT IPs of all connected endpoints.]
  final pulumi.Input<bool>? showNatIps;
  /// The URL of a service serving the endpoint identified by this service attachment.
  final pulumi.Input<String> targetService;
  /// (Optional, Beta)
  /// Tunneling configuration for this service attachment.
  /// Structure is documented below.
  final pulumi.Input<ServiceAttachmentTunnelingConfig>? tunnelingConfig;

  /// Creates a new [ServiceAttachmentArgs].
  /// [connectionPreference] The connection preference to use for this service attachment. Valid
  /// [consumerAcceptLists] An array of projects that are allowed to connect to this service
  /// [consumerRejectLists] An array of projects that are not allowed to connect to this service
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  /// [showNatIps] NOTE: This field is temporarily non-functional due to an underlying API issue.
  /// [targetService] The URL of a service serving the endpoint identified by this service attachment.
  /// [tunnelingConfig] (Optional, Beta)
  const ServiceAttachmentArgs({
    required this.connectionPreference,
    this.consumerAcceptLists,
    this.consumerRejectLists,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      connectionPreference: pulumi.Input.fromValue(map['connectionPreference'] as String),
      consumerAcceptLists: (() { final guardedValue = map['consumerAcceptLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceAttachmentConsumerAcceptList>(guardedValue, (value) => ServiceAttachmentConsumerAcceptList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      consumerRejectLists: (() { final guardedValue = map['consumerRejectLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainNames: (() { final guardedValue = map['domainNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableProxyProtocol: pulumi.Input.fromValue(map['enableProxyProtocol'] as bool),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natSubnets: pulumi.Input.fromValue((map['natSubnets'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propagatedConnectionLimit: (() { final guardedValue = map['propagatedConnectionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      reconcileConnections: (() { final guardedValue = map['reconcileConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendPropagatedConnectionLimitIfZero: (() { final guardedValue = map['sendPropagatedConnectionLimitIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      showNatIps: (() { final guardedValue = map['showNatIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetService: pulumi.Input.fromValue(map['targetService'] as String),
      tunnelingConfig: (() { final guardedValue = map['tunnelingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAttachmentTunnelingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
