// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_l2_forwarding.dart';
import 'interconnect_attachment_private_interconnect_info.dart';

/// Input properties used for looking up and filtering InterconnectAttachment resources.
class InterconnectAttachmentState {
  /// Whether the VLAN attachment is enabled or disabled.  When using
  /// PARTNER type this will Pre-Activate the interconnect attachment
  final pulumi.Input<bool>? adminEnabled;
  /// URL of the AttachmentGroup that includes this Attachment.
  final pulumi.Input<String>? attachmentGroup;
  /// Provisioned bandwidth capacity for the interconnect attachment.
  /// For attachments of type DEDICATED, the user can set the bandwidth.
  /// For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth.
  /// Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED,
  /// Defaults to BPS_10G
  /// Possible values are: `BPS_50M`, `BPS_100M`, `BPS_200M`, `BPS_300M`, `BPS_400M`, `BPS_500M`, `BPS_1G`, `BPS_2G`, `BPS_5G`, `BPS_10G`, `BPS_20G`, `BPS_50G`, `BPS_100G`, `BPS_400G`.
  final pulumi.Input<String>? bandwidth;
  /// Single IPv4 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 203.0.113.1/29
  final pulumi.Input<String>? candidateCloudRouterIpAddress;
  /// Single IPv6 address + prefix length to be configured on the cloud router interface for this
  /// interconnect attachment. Example: 2001:db8::1/125
  final pulumi.Input<String>? candidateCloudRouterIpv6Address;
  /// Single IPv4 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 203.0.113.2/29
  final pulumi.Input<String>? candidateCustomerRouterIpAddress;
  /// Single IPv6 address + prefix length to be configured on the customer router interface for this
  /// interconnect attachment. Example: 2001:db8::2/125
  final pulumi.Input<String>? candidateCustomerRouterIpv6Address;
  /// Up to 16 candidate prefixes that can be used to restrict the allocation
  /// of cloudRouterIpAddress and customerRouterIpAddress for this attachment.
  /// All prefixes must be within link-local address space (169.254.0.0/16)
  /// and must be /29 or shorter (/28, /27, etc). Google will attempt to select
  /// an unused /29 from the supplied candidate prefix(es). The request will
  /// fail if all possible /29s are in use on Google's edge. If not supplied,
  /// Google will randomly select an unused /29 from all of link-local space.
  final pulumi.Input<List<String>>? candidateSubnets;
  /// IPv4 address + prefix length to be configured on Cloud Router
  /// Interface for this interconnect attachment.
  final pulumi.Input<String>? cloudRouterIpAddress;
  /// IPv6 address + prefix length to be configured on Cloud Router
  /// Interface for this interconnect attachment.
  final pulumi.Input<String>? cloudRouterIpv6Address;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// IPv4 address + prefix length to be configured on the customer
  /// router subinterface for this interconnect attachment.
  final pulumi.Input<String>? customerRouterIpAddress;
  /// IPv6 address + prefix length to be configured on the customer
  /// router subinterface for this interconnect attachment.
  final pulumi.Input<String>? customerRouterIpv6Address;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Desired availability domain for the attachment. Only available for type
  /// PARTNER, at creation time. For improved reliability, customers should
  /// configure a pair of attachments with one per availability domain. The
  /// selected availability domain will be provided to the Partner via the
  /// pairing key so that the provisioned circuit will lie in the specified
  /// domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  final pulumi.Input<String>? edgeAvailabilityDomain;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Indicates the user-supplied encryption option of this interconnect
  /// attachment. Can only be specified at attachment creation for PARTNER or
  /// DEDICATED attachments.
  /// * NONE - This is the default value, which means that the VLAN attachment
  /// carries unencrypted traffic. VMs are able to send traffic to, or receive
  /// traffic from, such a VLAN attachment.
  /// * IPSEC - The VLAN attachment carries only encrypted traffic that is
  /// encrypted by an IPsec device, such as an HA VPN gateway or third-party
  /// IPsec VPN. VMs cannot directly send traffic to, or receive traffic from,
  /// such a VLAN attachment. To use HA VPN over Cloud Interconnect, the VLAN
  /// attachment must be created with this option.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `IPSEC`.
  final pulumi.Input<String>? encryption;
  /// Google reference ID, to be used when raising support tickets with
  /// Google or otherwise to debug backend connectivity issues.
  final pulumi.Input<String>? googleReferenceId;
  /// URL of the underlying Interconnect object that this attachment's
  /// traffic will traverse through. Required if type is DEDICATED, must not
  /// be set if type is PARTNER.
  final pulumi.Input<String>? interconnect;
  /// URL of addresses that have been reserved for the interconnect attachment,
  /// Used only for interconnect attachment that has the encryption option as
  /// IPSEC.
  /// The addresses must be RFC 1918 IP address ranges. When creating HA VPN
  /// gateway over the interconnect attachment, if the attachment is configured
  /// to use an RFC 1918 IP address, then the VPN gateway's IP address will be
  /// allocated from the IP address range specified here.
  /// For example, if the HA VPN gateway's interface 0 is paired to this
  /// interconnect attachment, then an RFC 1918 IP address for the VPN gateway
  /// interface 0 will be allocated from the IP address specified for this
  /// interconnect attachment.
  /// If this field is not specified for interconnect attachment that has
  /// encryption option as IPSEC, later on when creating HA VPN gateway on this
  /// interconnect attachment, the HA VPN gateway's IP address will be
  /// allocated from regional external IP address pool.
  final pulumi.Input<List<String>>? ipsecInternalAddresses;
  /// L2 Interconnect Attachment related configuration.
  /// Structure is documented below.
  final pulumi.Input<InterconnectAttachmentL2Forwarding>? l2Forwarding;
  /// A fingerprint for the labels being applied to this Interconnect, which is essentially a hash
  /// of the labels set used for optimistic locking. The fingerprint is initially generated by
  /// Compute Engine and changes after every request to modify or update labels.
  /// You must always provide an up-to-date fingerprint hash in order to update or change labels,
  /// otherwise the request will fail with error 412 conditionNotMet.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels for this resource. These can only be added or modified by the setLabels
  /// method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment.
  /// Valid values are 1440, 1460, 1500, and 8896. If not specified, the value will default to 1440.
  final pulumi.Input<String>? mtu;
  /// Name of the resource. Provided by the client when the resource is created. The
  /// name must be 1-63 characters long, and comply with RFC1035. Specifically, the
  /// name must be 1-63 characters long and match the regular expression
  /// `a-z?` which means the first character must be a
  /// lowercase letter, and all following characters must be a dash, lowercase
  /// letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// [Output only for type PARTNER. Not present for DEDICATED]. The opaque
  /// identifier of an PARTNER attachment used to initiate provisioning with
  /// a selected partner. Of the form "XXXXX/region/domain"
  final pulumi.Input<String>? pairingKey;
  /// [Output only for type PARTNER. Not present for DEDICATED]. Optional
  /// BGP ASN for the router that should be supplied by a layer 3 Partner if
  /// they configured BGP on behalf of the customer.
  final pulumi.Input<String>? partnerAsn;
  /// Information specific to an InterconnectAttachment. This property
  /// is populated if the interconnect that this is attached to is of type DEDICATED.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentPrivateInterconnectInfo>>? privateInterconnectInfos;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  ///
  ///
  ///
  /// <a name="nested_l2_forwarding"></a>The `l2_forwarding` block supports:
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Region where the regional interconnect attachment resides.
  final pulumi.Input<String>? region;
  /// URL of the cloud router to be used for dynamic routing. This router must be in
  /// the same region as this InterconnectAttachment. The InterconnectAttachment will
  /// automatically connect the Interconnect to the network & region within which the
  /// Cloud Router is configured.
  final pulumi.Input<String>? router;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The stack type for this interconnect attachment to identify whether the IPv6
  /// feature is enabled or not. If not specified, IPV4_ONLY will be used.
  /// This field can be both set at interconnect attachments creation and update
  /// interconnect attachment operations.
  /// Possible values are: `IPV4_IPV6`, `IPV4_ONLY`.
  final pulumi.Input<String>? stackType;
  /// [Output Only] The current state of this attachment's functionality.
  final pulumi.Input<String>? state;
  /// Length of the IPv4 subnet mask. Allowed values: 29 (default), 30. The default value is 29,
  /// except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a
  /// constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure
  /// remote location fall into this category. In these cases, the default value is 30, and
  /// requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it
  /// gives Google Cloud Support more debugging visibility.
  final pulumi.Input<int>? subnetLength;
  /// The type of InterconnectAttachment you wish to create. Defaults to
  /// DEDICATED.
  /// Possible values are: `DEDICATED`, `PARTNER`, `PARTNER_PROVIDER`, `L2_DEDICATED`.
  final pulumi.Input<String>? type;
  /// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
  /// using PARTNER type this will be managed upstream.
  final pulumi.Input<int>? vlanTag8021q;

  /// Creates a new [InterconnectAttachmentState].
  /// [adminEnabled] Whether the VLAN attachment is enabled or disabled.  When using
  /// [attachmentGroup] URL of the AttachmentGroup that includes this Attachment.
  /// [bandwidth] Provisioned bandwidth capacity for the interconnect attachment.
  /// [candidateCloudRouterIpAddress] Single IPv4 address + prefix length to be configured on the cloud router interface for this
  /// [candidateCloudRouterIpv6Address] Single IPv6 address + prefix length to be configured on the cloud router interface for this
  /// [candidateCustomerRouterIpAddress] Single IPv4 address + prefix length to be configured on the customer router interface for this
  /// [candidateCustomerRouterIpv6Address] Single IPv6 address + prefix length to be configured on the customer router interface for this
  /// [candidateSubnets] Up to 16 candidate prefixes that can be used to restrict the allocation
  /// [cloudRouterIpAddress] IPv4 address + prefix length to be configured on Cloud Router
  /// [cloudRouterIpv6Address] IPv6 address + prefix length to be configured on Cloud Router
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [customerRouterIpAddress] IPv4 address + prefix length to be configured on the customer
  /// [customerRouterIpv6Address] IPv6 address + prefix length to be configured on the customer
  /// [description] An optional description of this resource.
  /// [edgeAvailabilityDomain] Desired availability domain for the attachment. Only available for type
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryption] Indicates the user-supplied encryption option of this interconnect
  /// [googleReferenceId] Google reference ID, to be used when raising support tickets with
  /// [interconnect] URL of the underlying Interconnect object that this attachment's
  /// [ipsecInternalAddresses] URL of addresses that have been reserved for the interconnect attachment,
  /// [l2Forwarding] L2 Interconnect Attachment related configuration.
  /// [labelFingerprint] A fingerprint for the labels being applied to this Interconnect, which is essentially a hash
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels
  /// [mtu] Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment.
  /// [name] Name of the resource. Provided by the client when the resource is created. The
  /// [pairingKey] [Output only for type PARTNER. Not present for DEDICATED]. The opaque
  /// [partnerAsn] [Output only for type PARTNER. Not present for DEDICATED]. Optional
  /// [privateInterconnectInfos] Information specific to an InterconnectAttachment. This property
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] Region where the regional interconnect attachment resides.
  /// [router] URL of the cloud router to be used for dynamic routing. This router must be in
  /// [selfLink] The URI of the created resource.
  /// [stackType] The stack type for this interconnect attachment to identify whether the IPv6
  /// [state] [Output Only] The current state of this attachment's functionality.
  /// [subnetLength] Length of the IPv4 subnet mask. Allowed values: 29 (default), 30. The default value is 29,
  /// [type] The type of InterconnectAttachment you wish to create. Defaults to
  /// [vlanTag8021q] The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. When
  InterconnectAttachmentState({
    this.adminEnabled,
    this.attachmentGroup,
    this.bandwidth,
    this.candidateCloudRouterIpAddress,
    this.candidateCloudRouterIpv6Address,
    this.candidateCustomerRouterIpAddress,
    this.candidateCustomerRouterIpv6Address,
    this.candidateSubnets,
    this.cloudRouterIpAddress,
    this.cloudRouterIpv6Address,
    this.creationTimestamp,
    this.customerRouterIpAddress,
    this.customerRouterIpv6Address,
    this.description,
    this.edgeAvailabilityDomain,
    this.effectiveLabels,
    this.encryption,
    this.googleReferenceId,
    this.interconnect,
    this.ipsecInternalAddresses,
    this.l2Forwarding,
    this.labelFingerprint,
    this.labels,
    this.mtu,
    this.name,
    this.pairingKey,
    this.partnerAsn,
    this.privateInterconnectInfos,
    this.project,
    this.pulumiLabels,
    this.region,
    this.router,
    this.selfLink,
    this.stackType,
    this.state,
    this.subnetLength,
    this.type,
    this.vlanTag8021q,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'attachmentGroup': ?attachmentGroup,
      'bandwidth': ?bandwidth,
      'candidateCloudRouterIpAddress': ?candidateCloudRouterIpAddress,
      'candidateCloudRouterIpv6Address': ?candidateCloudRouterIpv6Address,
      'candidateCustomerRouterIpAddress': ?candidateCustomerRouterIpAddress,
      'candidateCustomerRouterIpv6Address': ?candidateCustomerRouterIpv6Address,
      'candidateSubnets': ?candidateSubnets,
      'cloudRouterIpAddress': ?cloudRouterIpAddress,
      'cloudRouterIpv6Address': ?cloudRouterIpv6Address,
      'creationTimestamp': ?creationTimestamp,
      'customerRouterIpAddress': ?customerRouterIpAddress,
      'customerRouterIpv6Address': ?customerRouterIpv6Address,
      'description': ?description,
      'edgeAvailabilityDomain': ?edgeAvailabilityDomain,
      'effectiveLabels': ?effectiveLabels,
      'encryption': ?encryption,
      'googleReferenceId': ?googleReferenceId,
      'interconnect': ?interconnect,
      'ipsecInternalAddresses': ?ipsecInternalAddresses,
      'l2Forwarding': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentL2Forwarding, Map<String, dynamic>>(l2Forwarding, (value) => value.toMap()),
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'mtu': ?mtu,
      'name': ?name,
      'pairingKey': ?pairingKey,
      'partnerAsn': ?partnerAsn,
      'privateInterconnectInfos': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentPrivateInterconnectInfo>, List<Map<String, dynamic>>>(privateInterconnectInfos, (value) => pulumi.Input.encodeList<InterconnectAttachmentPrivateInterconnectInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'router': ?router,
      'selfLink': ?selfLink,
      'stackType': ?stackType,
      'state': ?state,
      'subnetLength': ?subnetLength,
      'type': ?type,
      'vlanTag8021q': ?vlanTag8021q,
    };
  }

  factory InterconnectAttachmentState.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentState(
      adminEnabled: map['adminEnabled'] == null ? null : (map['adminEnabled'] as bool).input(),
      attachmentGroup: map['attachmentGroup'] == null ? null : (map['attachmentGroup'] as String).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as String).input(),
      candidateCloudRouterIpAddress: map['candidateCloudRouterIpAddress'] == null ? null : (map['candidateCloudRouterIpAddress'] as String).input(),
      candidateCloudRouterIpv6Address: map['candidateCloudRouterIpv6Address'] == null ? null : (map['candidateCloudRouterIpv6Address'] as String).input(),
      candidateCustomerRouterIpAddress: map['candidateCustomerRouterIpAddress'] == null ? null : (map['candidateCustomerRouterIpAddress'] as String).input(),
      candidateCustomerRouterIpv6Address: map['candidateCustomerRouterIpv6Address'] == null ? null : (map['candidateCustomerRouterIpv6Address'] as String).input(),
      candidateSubnets: map['candidateSubnets'] == null ? null : ((map['candidateSubnets'] as List).cast<String>()).input(),
      cloudRouterIpAddress: map['cloudRouterIpAddress'] == null ? null : (map['cloudRouterIpAddress'] as String).input(),
      cloudRouterIpv6Address: map['cloudRouterIpv6Address'] == null ? null : (map['cloudRouterIpv6Address'] as String).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp'] as String).input(),
      customerRouterIpAddress: map['customerRouterIpAddress'] == null ? null : (map['customerRouterIpAddress'] as String).input(),
      customerRouterIpv6Address: map['customerRouterIpv6Address'] == null ? null : (map['customerRouterIpv6Address'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      edgeAvailabilityDomain: map['edgeAvailabilityDomain'] == null ? null : (map['edgeAvailabilityDomain'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      encryption: map['encryption'] == null ? null : (map['encryption'] as String).input(),
      googleReferenceId: map['googleReferenceId'] == null ? null : (map['googleReferenceId'] as String).input(),
      interconnect: map['interconnect'] == null ? null : (map['interconnect'] as String).input(),
      ipsecInternalAddresses: map['ipsecInternalAddresses'] == null ? null : ((map['ipsecInternalAddresses'] as List).cast<String>()).input(),
      l2Forwarding: map['l2Forwarding'] == null ? null : (InterconnectAttachmentL2Forwarding.fromMap((map['l2Forwarding'] as Map).cast<String, dynamic>())).input(),
      labelFingerprint: map['labelFingerprint'] == null ? null : (map['labelFingerprint'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      mtu: map['mtu'] == null ? null : (map['mtu'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pairingKey: map['pairingKey'] == null ? null : (map['pairingKey'] as String).input(),
      partnerAsn: map['partnerAsn'] == null ? null : (map['partnerAsn'] as String).input(),
      privateInterconnectInfos: map['privateInterconnectInfos'] == null ? null : (pulumi.Input.decodeList<InterconnectAttachmentPrivateInterconnectInfo>(map['privateInterconnectInfos'], (value) => InterconnectAttachmentPrivateInterconnectInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      router: map['router'] == null ? null : (map['router'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      stackType: map['stackType'] == null ? null : (map['stackType'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      subnetLength: map['subnetLength'] == null ? null : (map['subnetLength'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      vlanTag8021q: map['vlanTag8021q'] == null ? null : (map['vlanTag8021q'] as int).input(),
    );
  }
}

