// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_bandwidth_compute_beta.dart';
import 'interconnect_attachment_edge_availability_domain_compute_beta.dart';
import 'interconnect_attachment_encryption_compute_beta.dart';
import 'interconnect_attachment_partner_metadata_compute_beta.dart';
import 'interconnect_attachment_stack_type_compute_beta.dart';
import 'interconnect_attachment_type_compute_beta.dart';

/// {@template pulumi_compute_beta_interconnect_attachment_compute_beta_args_doc}
/// The set of arguments for InterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_interconnect_attachment_compute_beta_args_doc}
class InterconnectAttachmentComputeBetaArgs {
  /// Determines whether this Attachment will carry packets. Not present for PARTNER_PROVIDER.
  final pulumi.Input<bool>? adminEnabled;
  /// Provisioned bandwidth capacity for the interconnect attachment. For attachments of type DEDICATED, the user can set the bandwidth. For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, and can take one of the following values: - BPS_50M: 50 Mbit/s - BPS_100M: 100 Mbit/s - BPS_200M: 200 Mbit/s - BPS_300M: 300 Mbit/s - BPS_400M: 400 Mbit/s - BPS_500M: 500 Mbit/s - BPS_1G: 1 Gbit/s - BPS_2G: 2 Gbit/s - BPS_5G: 5 Gbit/s - BPS_10G: 10 Gbit/s - BPS_20G: 20 Gbit/s - BPS_50G: 50 Gbit/s
  final pulumi.Input<InterconnectAttachmentBandwidthComputeBeta>? bandwidth;
  /// This field is not available.
  final pulumi.Input<List<String>>? candidateIpv6Subnets;
  /// Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.
  final pulumi.Input<List<String>>? candidateSubnets;
  /// This field is not available.
  final pulumi.Input<String>? cloudRouterIpv6InterfaceId;
  /// This field is not available.
  final pulumi.Input<String>? customerRouterIpv6InterfaceId;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Desired availability domain for the attachment. Only available for type PARTNER, at creation time, and can take one of the following values: - AVAILABILITY_DOMAIN_ANY - AVAILABILITY_DOMAIN_1 - AVAILABILITY_DOMAIN_2 For improved reliability, customers should configure a pair of attachments, one per availability domain. The selected availability domain will be provided to the Partner via the pairing key, so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  final pulumi.Input<InterconnectAttachmentEdgeAvailabilityDomainComputeBeta>? edgeAvailabilityDomain;
  /// Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option.
  final pulumi.Input<InterconnectAttachmentEncryptionComputeBeta>? encryption;
  /// URL of the underlying Interconnect object that this attachment's traffic will traverse through.
  final pulumi.Input<String>? interconnect;
  /// A list of URLs of addresses that have been reserved for the VLAN attachment. Used only for the VLAN attachment that has the encryption option as IPSEC. The addresses must be regional internal IP address ranges. When creating an HA VPN gateway over the VLAN attachment, if the attachment is configured to use a regional internal IP address, then the VPN gateway's IP address is allocated from the IP address range specified here. For example, if the HA VPN gateway's interface 0 is paired to this VLAN attachment, then a regional internal IP address for the VPN gateway interface 0 will be allocated from the IP address specified for this VLAN attachment. If this field is not specified when creating the VLAN attachment, then later on when creating an HA VPN gateway on this VLAN attachment, the HA VPN gateway's IP address is allocated from the regional external IP address pool.
  final pulumi.Input<List<String>>? ipsecInternalAddresses;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Only 1440 and 1500 are allowed. If not specified, the value will default to 1440.
  final pulumi.Input<int>? mtu;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// [Output only for type PARTNER. Input only for PARTNER_PROVIDER. Not present for DEDICATED]. The opaque identifier of a PARTNER attachment used to initiate provisioning with a selected partner. Of the form "XXXXX/region/domain"
  final pulumi.Input<String>? pairingKey;
  /// Optional BGP ASN for the router supplied by a Layer 3 Partner if they configured BGP on behalf of the customer. Output only for PARTNER type, input only for PARTNER_PROVIDER, not available for DEDICATED.
  final pulumi.Input<String>? partnerAsn;
  /// Informational metadata about Partner attachments from Partners to display to customers. Output only for PARTNER type, mutable for PARTNER_PROVIDER, not available for DEDICATED.
  final pulumi.Input<InterconnectAttachmentPartnerMetadataComputeBeta>? partnerMetadata;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// URL of the Cloud Router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.
  final pulumi.Input<String>? router;
  /// The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
  final pulumi.Input<InterconnectAttachmentStackTypeComputeBeta>? stackType;
  /// Length of the IPv4 subnet mask. Allowed values: - 29 (default) - 30 The default value is 29, except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure remote location fall into this category. In these cases, the default value is 30, and requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it gives Google Cloud Support more debugging visibility.
  final pulumi.Input<int>? subnetLength;
  /// The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
  final pulumi.Input<InterconnectAttachmentTypeComputeBeta>? type;
  /// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4093. Only specified at creation time.
  final pulumi.Input<int>? vlanTag8021q;

  /// Creates a new [InterconnectAttachmentComputeBetaArgs].
  /// [adminEnabled] Determines whether this Attachment will carry packets. Not present for PARTNER_PROVIDER.
  /// [bandwidth] Provisioned bandwidth capacity for the interconnect attachment. For attachments of type DEDICATED, the user can set the bandwidth. For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, and can take one of the following values: - BPS_50M: 50 Mbit/s - BPS_100M: 100 Mbit/s - BPS_200M: 200 Mbit/s - BPS_300M: 300 Mbit/s - BPS_400M: 400 Mbit/s - BPS_500M: 500 Mbit/s - BPS_1G: 1 Gbit/s - BPS_2G: 2 Gbit/s - BPS_5G: 5 Gbit/s - BPS_10G: 10 Gbit/s - BPS_20G: 20 Gbit/s - BPS_50G: 50 Gbit/s
  /// [candidateIpv6Subnets] This field is not available.
  /// [candidateSubnets] Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.
  /// [cloudRouterIpv6InterfaceId] This field is not available.
  /// [customerRouterIpv6InterfaceId] This field is not available.
  /// [description] An optional description of this resource.
  /// [edgeAvailabilityDomain] Desired availability domain for the attachment. Only available for type PARTNER, at creation time, and can take one of the following values: - AVAILABILITY_DOMAIN_ANY - AVAILABILITY_DOMAIN_1 - AVAILABILITY_DOMAIN_2 For improved reliability, customers should configure a pair of attachments, one per availability domain. The selected availability domain will be provided to the Partner via the pairing key, so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  /// [encryption] Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option.
  /// [interconnect] URL of the underlying Interconnect object that this attachment's traffic will traverse through.
  /// [ipsecInternalAddresses] A list of URLs of addresses that have been reserved for the VLAN attachment. Used only for the VLAN attachment that has the encryption option as IPSEC. The addresses must be regional internal IP address ranges. When creating an HA VPN gateway over the VLAN attachment, if the attachment is configured to use a regional internal IP address, then the VPN gateway's IP address is allocated from the IP address range specified here. For example, if the HA VPN gateway's interface 0 is paired to this VLAN attachment, then a regional internal IP address for the VPN gateway interface 0 will be allocated from the IP address specified for this VLAN attachment. If this field is not specified when creating the VLAN attachment, then later on when creating an HA VPN gateway on this VLAN attachment, the HA VPN gateway's IP address is allocated from the regional external IP address pool.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [mtu] Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Only 1440 and 1500 are allowed. If not specified, the value will default to 1440.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [pairingKey] [Output only for type PARTNER. Input only for PARTNER_PROVIDER. Not present for DEDICATED]. The opaque identifier of a PARTNER attachment used to initiate provisioning with a selected partner. Of the form "XXXXX/region/domain"
  /// [partnerAsn] Optional BGP ASN for the router supplied by a Layer 3 Partner if they configured BGP on behalf of the customer. Output only for PARTNER type, input only for PARTNER_PROVIDER, not available for DEDICATED.
  /// [partnerMetadata] Informational metadata about Partner attachments from Partners to display to customers. Output only for PARTNER type, mutable for PARTNER_PROVIDER, not available for DEDICATED.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [router] URL of the Cloud Router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.
  /// [stackType] The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
  /// [subnetLength] Length of the IPv4 subnet mask. Allowed values: - 29 (default) - 30 The default value is 29, except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure remote location fall into this category. In these cases, the default value is 30, and requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it gives Google Cloud Support more debugging visibility.
  /// [type] The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
  /// [vlanTag8021q] The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4093. Only specified at creation time.
  InterconnectAttachmentComputeBetaArgs({
    pulumi.Output<bool>? adminEnabled,
    pulumi.Output<InterconnectAttachmentBandwidthComputeBeta>? bandwidth,
    pulumi.Output<List<String>>? candidateIpv6Subnets,
    pulumi.Output<List<String>>? candidateSubnets,
    pulumi.Output<String>? cloudRouterIpv6InterfaceId,
    pulumi.Output<String>? customerRouterIpv6InterfaceId,
    pulumi.Output<String>? description,
    pulumi.Output<InterconnectAttachmentEdgeAvailabilityDomainComputeBeta>? edgeAvailabilityDomain,
    pulumi.Output<InterconnectAttachmentEncryptionComputeBeta>? encryption,
    pulumi.Output<String>? interconnect,
    pulumi.Output<List<String>>? ipsecInternalAddresses,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<int>? mtu,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pairingKey,
    pulumi.Output<String>? partnerAsn,
    pulumi.Output<InterconnectAttachmentPartnerMetadataComputeBeta>? partnerMetadata,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? router,
    pulumi.Output<InterconnectAttachmentStackTypeComputeBeta>? stackType,
    pulumi.Output<int>? subnetLength,
    pulumi.Output<InterconnectAttachmentTypeComputeBeta>? type,
    pulumi.Output<int>? vlanTag8021q,
  }) :
      adminEnabled = pulumi.Input.asOptionalInput<bool>(adminEnabled),
      bandwidth = pulumi.Input.asOptionalInput<InterconnectAttachmentBandwidthComputeBeta>(bandwidth),
      candidateIpv6Subnets = pulumi.Input.asOptionalInput<List<String>>(candidateIpv6Subnets),
      candidateSubnets = pulumi.Input.asOptionalInput<List<String>>(candidateSubnets),
      cloudRouterIpv6InterfaceId = pulumi.Input.asOptionalInput<String>(cloudRouterIpv6InterfaceId),
      customerRouterIpv6InterfaceId = pulumi.Input.asOptionalInput<String>(customerRouterIpv6InterfaceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      edgeAvailabilityDomain = pulumi.Input.asOptionalInput<InterconnectAttachmentEdgeAvailabilityDomainComputeBeta>(edgeAvailabilityDomain),
      encryption = pulumi.Input.asOptionalInput<InterconnectAttachmentEncryptionComputeBeta>(encryption),
      interconnect = pulumi.Input.asOptionalInput<String>(interconnect),
      ipsecInternalAddresses = pulumi.Input.asOptionalInput<List<String>>(ipsecInternalAddresses),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      pairingKey = pulumi.Input.asOptionalInput<String>(pairingKey),
      partnerAsn = pulumi.Input.asOptionalInput<String>(partnerAsn),
      partnerMetadata = pulumi.Input.asOptionalInput<InterconnectAttachmentPartnerMetadataComputeBeta>(partnerMetadata),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      router = pulumi.Input.asOptionalInput<String>(router),
      stackType = pulumi.Input.asOptionalInput<InterconnectAttachmentStackTypeComputeBeta>(stackType),
      subnetLength = pulumi.Input.asOptionalInput<int>(subnetLength),
      type = pulumi.Input.asOptionalInput<InterconnectAttachmentTypeComputeBeta>(type),
      vlanTag8021q = pulumi.Input.asOptionalInput<int>(vlanTag8021q);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'bandwidth': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentBandwidthComputeBeta, String>(bandwidth, (value) => value.value),
      'candidateIpv6Subnets': ?candidateIpv6Subnets,
      'candidateSubnets': ?candidateSubnets,
      'cloudRouterIpv6InterfaceId': ?cloudRouterIpv6InterfaceId,
      'customerRouterIpv6InterfaceId': ?customerRouterIpv6InterfaceId,
      'description': ?description,
      'edgeAvailabilityDomain': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentEdgeAvailabilityDomainComputeBeta, String>(edgeAvailabilityDomain, (value) => value.value),
      'encryption': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentEncryptionComputeBeta, String>(encryption, (value) => value.value),
      'interconnect': ?interconnect,
      'ipsecInternalAddresses': ?ipsecInternalAddresses,
      'labels': ?labels,
      'mtu': ?mtu,
      'name': ?name,
      'pairingKey': ?pairingKey,
      'partnerAsn': ?partnerAsn,
      'partnerMetadata': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentPartnerMetadataComputeBeta, Map<String, dynamic>>(partnerMetadata, (value) => value.toMap()),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'router': ?router,
      'stackType': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentStackTypeComputeBeta, String>(stackType, (value) => value.value),
      'subnetLength': ?subnetLength,
      'type': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentTypeComputeBeta, String>(type, (value) => value.value),
      'vlanTag8021q': ?vlanTag8021q,
    };
  }

  factory InterconnectAttachmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentComputeBetaArgs(
      adminEnabled: map['adminEnabled'] == null ? null : pulumi.Output.create<bool>(map['adminEnabled'] as bool),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<InterconnectAttachmentBandwidthComputeBeta>(InterconnectAttachmentBandwidthComputeBeta.fromValue(map['bandwidth'] as String)),
      candidateIpv6Subnets: map['candidateIpv6Subnets'] == null ? null : pulumi.Output.create<List<String>>((map['candidateIpv6Subnets'] as List).cast<String>()),
      candidateSubnets: map['candidateSubnets'] == null ? null : pulumi.Output.create<List<String>>((map['candidateSubnets'] as List).cast<String>()),
      cloudRouterIpv6InterfaceId: map['cloudRouterIpv6InterfaceId'] == null ? null : pulumi.Output.create<String>(map['cloudRouterIpv6InterfaceId'] as String),
      customerRouterIpv6InterfaceId: map['customerRouterIpv6InterfaceId'] == null ? null : pulumi.Output.create<String>(map['customerRouterIpv6InterfaceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      edgeAvailabilityDomain: map['edgeAvailabilityDomain'] == null ? null : pulumi.Output.create<InterconnectAttachmentEdgeAvailabilityDomainComputeBeta>(InterconnectAttachmentEdgeAvailabilityDomainComputeBeta.fromValue(map['edgeAvailabilityDomain'] as String)),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<InterconnectAttachmentEncryptionComputeBeta>(InterconnectAttachmentEncryptionComputeBeta.fromValue(map['encryption'] as String)),
      interconnect: map['interconnect'] == null ? null : pulumi.Output.create<String>(map['interconnect'] as String),
      ipsecInternalAddresses: map['ipsecInternalAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipsecInternalAddresses'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pairingKey: map['pairingKey'] == null ? null : pulumi.Output.create<String>(map['pairingKey'] as String),
      partnerAsn: map['partnerAsn'] == null ? null : pulumi.Output.create<String>(map['partnerAsn'] as String),
      partnerMetadata: map['partnerMetadata'] == null ? null : pulumi.Output.create<InterconnectAttachmentPartnerMetadataComputeBeta>(InterconnectAttachmentPartnerMetadataComputeBeta.fromMap((map['partnerMetadata'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      router: map['router'] == null ? null : pulumi.Output.create<String>(map['router'] as String),
      stackType: map['stackType'] == null ? null : pulumi.Output.create<InterconnectAttachmentStackTypeComputeBeta>(InterconnectAttachmentStackTypeComputeBeta.fromValue(map['stackType'] as String)),
      subnetLength: map['subnetLength'] == null ? null : pulumi.Output.create<int>(map['subnetLength'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<InterconnectAttachmentTypeComputeBeta>(InterconnectAttachmentTypeComputeBeta.fromValue(map['type'] as String)),
      vlanTag8021q: map['vlanTag8021q'] == null ? null : pulumi.Output.create<int>(map['vlanTag8021q'] as int),
    );
  }
}

