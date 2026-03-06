// ignore_for_file: unused_element, unnecessary_cast

import 'interconnect_attachment_configuration_constraints_response.dart';
import 'interconnect_attachment_partner_metadata_response.dart';
import 'interconnect_attachment_private_info_response.dart';

/// Result data returned by getInterconnectAttachment.
class GetInterconnectAttachmentResult {
  /// Determines whether this Attachment will carry packets. Not present for PARTNER_PROVIDER.
  final bool adminEnabled;
  /// Provisioned bandwidth capacity for the interconnect attachment. For attachments of type DEDICATED, the user can set the bandwidth. For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, and can take one of the following values: - BPS_50M: 50 Mbit/s - BPS_100M: 100 Mbit/s - BPS_200M: 200 Mbit/s - BPS_300M: 300 Mbit/s - BPS_400M: 400 Mbit/s - BPS_500M: 500 Mbit/s - BPS_1G: 1 Gbit/s - BPS_2G: 2 Gbit/s - BPS_5G: 5 Gbit/s - BPS_10G: 10 Gbit/s - BPS_20G: 20 Gbit/s - BPS_50G: 50 Gbit/s
  final String bandwidth;
  /// This field is not available.
  final List<String> candidateIpv6Subnets;
  /// Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.
  final List<String> candidateSubnets;
  /// IPv4 address + prefix length to be configured on Cloud Router Interface for this interconnect attachment.
  final String cloudRouterIpAddress;
  /// IPv6 address + prefix length to be configured on Cloud Router Interface for this interconnect attachment.
  final String cloudRouterIpv6Address;
  /// This field is not available.
  final String cloudRouterIpv6InterfaceId;
  /// Constraints for this attachment, if any. The attachment does not work if these constraints are not met.
  final InterconnectAttachmentConfigurationConstraintsResponse configurationConstraints;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// IPv4 address + prefix length to be configured on the customer router subinterface for this interconnect attachment.
  final String customerRouterIpAddress;
  /// IPv6 address + prefix length to be configured on the customer router subinterface for this interconnect attachment.
  final String customerRouterIpv6Address;
  /// This field is not available.
  final String customerRouterIpv6InterfaceId;
  /// Dataplane version for this InterconnectAttachment. This field is only present for Dataplane version 2 and higher. Absence of this field in the API output indicates that the Dataplane is version 1.
  final int dataplaneVersion;
  /// An optional description of this resource.
  final String description;
  /// Desired availability domain for the attachment. Only available for type PARTNER, at creation time, and can take one of the following values: - AVAILABILITY_DOMAIN_ANY - AVAILABILITY_DOMAIN_1 - AVAILABILITY_DOMAIN_2 For improved reliability, customers should configure a pair of attachments, one per availability domain. The selected availability domain will be provided to the Partner via the pairing key, so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  final String edgeAvailabilityDomain;
  /// Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option.
  final String encryption;
  /// Google reference ID, to be used when raising support tickets with Google or otherwise to debug backend connectivity issues. [Deprecated] This field is not used.
  final String googleReferenceId;
  /// URL of the underlying Interconnect object that this attachment's traffic will traverse through.
  final String interconnect;
  /// A list of URLs of addresses that have been reserved for the VLAN attachment. Used only for the VLAN attachment that has the encryption option as IPSEC. The addresses must be regional internal IP address ranges. When creating an HA VPN gateway over the VLAN attachment, if the attachment is configured to use a regional internal IP address, then the VPN gateway's IP address is allocated from the IP address range specified here. For example, if the HA VPN gateway's interface 0 is paired to this VLAN attachment, then a regional internal IP address for the VPN gateway interface 0 will be allocated from the IP address specified for this VLAN attachment. If this field is not specified when creating the VLAN attachment, then later on when creating an HA VPN gateway on this VLAN attachment, the HA VPN gateway's IP address is allocated from the regional external IP address pool.
  final List<String> ipsecInternalAddresses;
  /// Type of the resource. Always compute#interconnectAttachment for interconnect attachments.
  final String kind;
  /// A fingerprint for the labels being applied to this InterconnectAttachment, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InterconnectAttachment.
  final String labelFingerprint;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final Map<String, String> labels;
  /// Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Only 1440 and 1500 are allowed. If not specified, the value will default to 1440.
  final int mtu;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// The current status of whether or not this interconnect attachment is functional, which can take one of the following values: - OS_ACTIVE: The attachment has been turned up and is ready to use. - OS_UNPROVISIONED: The attachment is not ready to use yet, because turnup is not complete.
  final String operationalStatus;
  /// [Output only for type PARTNER. Input only for PARTNER_PROVIDER. Not present for DEDICATED]. The opaque identifier of a PARTNER attachment used to initiate provisioning with a selected partner. Of the form "XXXXX/region/domain"
  final String pairingKey;
  /// Optional BGP ASN for the router supplied by a Layer 3 Partner if they configured BGP on behalf of the customer. Output only for PARTNER type, input only for PARTNER_PROVIDER, not available for DEDICATED.
  final String partnerAsn;
  /// Informational metadata about Partner attachments from Partners to display to customers. Output only for PARTNER type, mutable for PARTNER_PROVIDER, not available for DEDICATED.
  final InterconnectAttachmentPartnerMetadataResponse partnerMetadata;
  /// Information specific to an InterconnectAttachment. This property is populated if the interconnect that this is attached to is of type DEDICATED.
  final InterconnectAttachmentPrivateInfoResponse privateInterconnectInfo;
  /// URL of the region where the regional interconnect attachment resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;
  /// If the attachment is on a Cross-Cloud Interconnect connection, this field contains the interconnect's remote location service provider. Example values: "Amazon Web Services" "Microsoft Azure". The field is set only for attachments on Cross-Cloud Interconnect connections. Its value is copied from the InterconnectRemoteLocation remoteService field.
  final String remoteService;
  /// URL of the Cloud Router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.
  final String router;
  /// Reserved for future use.
  final bool satisfiesPzs;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;
  /// The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
  final String stackType;
  /// The current state of this attachment's functionality. Enum values ACTIVE and UNPROVISIONED are shared by DEDICATED/PRIVATE, PARTNER, and PARTNER_PROVIDER interconnect attachments, while enum values PENDING_PARTNER, PARTNER_REQUEST_RECEIVED, and PENDING_CUSTOMER are used for only PARTNER and PARTNER_PROVIDER interconnect attachments. This state can take one of the following values: - ACTIVE: The attachment has been turned up and is ready to use. - UNPROVISIONED: The attachment is not ready to use yet, because turnup is not complete. - PENDING_PARTNER: A newly-created PARTNER attachment that has not yet been configured on the Partner side. - PARTNER_REQUEST_RECEIVED: A PARTNER attachment is in the process of provisioning after a PARTNER_PROVIDER attachment was created that references it. - PENDING_CUSTOMER: A PARTNER or PARTNER_PROVIDER attachment that is waiting for a customer to activate it. - DEFUNCT: The attachment was deleted externally and is no longer functional. This could be because the associated Interconnect was removed, or because the other side of a Partner attachment was deleted.
  final String state;
  /// Length of the IPv4 subnet mask. Allowed values: - 29 (default) - 30 The default value is 29, except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure remote location fall into this category. In these cases, the default value is 30, and requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it gives Google Cloud Support more debugging visibility.
  final int subnetLength;
  /// The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
  final String type;
  /// The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4093. Only specified at creation time.
  final int vlanTag8021q;

  /// Creates a new [GetInterconnectAttachmentResult].
  /// [adminEnabled] Determines whether this Attachment will carry packets. Not present for PARTNER_PROVIDER.
  /// [bandwidth] Provisioned bandwidth capacity for the interconnect attachment. For attachments of type DEDICATED, the user can set the bandwidth. For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, and can take one of the following values: - BPS_50M: 50 Mbit/s - BPS_100M: 100 Mbit/s - BPS_200M: 200 Mbit/s - BPS_300M: 300 Mbit/s - BPS_400M: 400 Mbit/s - BPS_500M: 500 Mbit/s - BPS_1G: 1 Gbit/s - BPS_2G: 2 Gbit/s - BPS_5G: 5 Gbit/s - BPS_10G: 10 Gbit/s - BPS_20G: 20 Gbit/s - BPS_50G: 50 Gbit/s
  /// [candidateIpv6Subnets] This field is not available.
  /// [candidateSubnets] Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.
  /// [cloudRouterIpAddress] IPv4 address + prefix length to be configured on Cloud Router Interface for this interconnect attachment.
  /// [cloudRouterIpv6Address] IPv6 address + prefix length to be configured on Cloud Router Interface for this interconnect attachment.
  /// [cloudRouterIpv6InterfaceId] This field is not available.
  /// [configurationConstraints] Constraints for this attachment, if any. The attachment does not work if these constraints are not met.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [customerRouterIpAddress] IPv4 address + prefix length to be configured on the customer router subinterface for this interconnect attachment.
  /// [customerRouterIpv6Address] IPv6 address + prefix length to be configured on the customer router subinterface for this interconnect attachment.
  /// [customerRouterIpv6InterfaceId] This field is not available.
  /// [dataplaneVersion] Dataplane version for this InterconnectAttachment. This field is only present for Dataplane version 2 and higher. Absence of this field in the API output indicates that the Dataplane is version 1.
  /// [description] An optional description of this resource.
  /// [edgeAvailabilityDomain] Desired availability domain for the attachment. Only available for type PARTNER, at creation time, and can take one of the following values: - AVAILABILITY_DOMAIN_ANY - AVAILABILITY_DOMAIN_1 - AVAILABILITY_DOMAIN_2 For improved reliability, customers should configure a pair of attachments, one per availability domain. The selected availability domain will be provided to the Partner via the pairing key, so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  /// [encryption] Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option.
  /// [googleReferenceId] Google reference ID, to be used when raising support tickets with Google or otherwise to debug backend connectivity issues. [Deprecated] This field is not used.
  /// [interconnect] URL of the underlying Interconnect object that this attachment's traffic will traverse through.
  /// [ipsecInternalAddresses] A list of URLs of addresses that have been reserved for the VLAN attachment. Used only for the VLAN attachment that has the encryption option as IPSEC. The addresses must be regional internal IP address ranges. When creating an HA VPN gateway over the VLAN attachment, if the attachment is configured to use a regional internal IP address, then the VPN gateway's IP address is allocated from the IP address range specified here. For example, if the HA VPN gateway's interface 0 is paired to this VLAN attachment, then a regional internal IP address for the VPN gateway interface 0 will be allocated from the IP address specified for this VLAN attachment. If this field is not specified when creating the VLAN attachment, then later on when creating an HA VPN gateway on this VLAN attachment, the HA VPN gateway's IP address is allocated from the regional external IP address pool.
  /// [kind] Type of the resource. Always compute#interconnectAttachment for interconnect attachments.
  /// [labelFingerprint] A fingerprint for the labels being applied to this InterconnectAttachment, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InterconnectAttachment.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [mtu] Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Only 1440 and 1500 are allowed. If not specified, the value will default to 1440.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [operationalStatus] The current status of whether or not this interconnect attachment is functional, which can take one of the following values: - OS_ACTIVE: The attachment has been turned up and is ready to use. - OS_UNPROVISIONED: The attachment is not ready to use yet, because turnup is not complete.
  /// [pairingKey] [Output only for type PARTNER. Input only for PARTNER_PROVIDER. Not present for DEDICATED]. The opaque identifier of a PARTNER attachment used to initiate provisioning with a selected partner. Of the form "XXXXX/region/domain"
  /// [partnerAsn] Optional BGP ASN for the router supplied by a Layer 3 Partner if they configured BGP on behalf of the customer. Output only for PARTNER type, input only for PARTNER_PROVIDER, not available for DEDICATED.
  /// [partnerMetadata] Informational metadata about Partner attachments from Partners to display to customers. Output only for PARTNER type, mutable for PARTNER_PROVIDER, not available for DEDICATED.
  /// [privateInterconnectInfo] Information specific to an InterconnectAttachment. This property is populated if the interconnect that this is attached to is of type DEDICATED.
  /// [region] URL of the region where the regional interconnect attachment resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [remoteService] If the attachment is on a Cross-Cloud Interconnect connection, this field contains the interconnect's remote location service provider. Example values: "Amazon Web Services" "Microsoft Azure". The field is set only for attachments on Cross-Cloud Interconnect connections. Its value is copied from the InterconnectRemoteLocation remoteService field.
  /// [router] URL of the Cloud Router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.
  /// [satisfiesPzs] Reserved for future use.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [stackType] The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
  /// [state] The current state of this attachment's functionality. Enum values ACTIVE and UNPROVISIONED are shared by DEDICATED/PRIVATE, PARTNER, and PARTNER_PROVIDER interconnect attachments, while enum values PENDING_PARTNER, PARTNER_REQUEST_RECEIVED, and PENDING_CUSTOMER are used for only PARTNER and PARTNER_PROVIDER interconnect attachments. This state can take one of the following values: - ACTIVE: The attachment has been turned up and is ready to use. - UNPROVISIONED: The attachment is not ready to use yet, because turnup is not complete. - PENDING_PARTNER: A newly-created PARTNER attachment that has not yet been configured on the Partner side. - PARTNER_REQUEST_RECEIVED: A PARTNER attachment is in the process of provisioning after a PARTNER_PROVIDER attachment was created that references it. - PENDING_CUSTOMER: A PARTNER or PARTNER_PROVIDER attachment that is waiting for a customer to activate it. - DEFUNCT: The attachment was deleted externally and is no longer functional. This could be because the associated Interconnect was removed, or because the other side of a Partner attachment was deleted.
  /// [subnetLength] Length of the IPv4 subnet mask. Allowed values: - 29 (default) - 30 The default value is 29, except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure remote location fall into this category. In these cases, the default value is 30, and requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it gives Google Cloud Support more debugging visibility.
  /// [type] The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
  /// [vlanTag8021q] The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4093. Only specified at creation time.
  const GetInterconnectAttachmentResult({
    required this.adminEnabled,
    required this.bandwidth,
    required this.candidateIpv6Subnets,
    required this.candidateSubnets,
    required this.cloudRouterIpAddress,
    required this.cloudRouterIpv6Address,
    required this.cloudRouterIpv6InterfaceId,
    required this.configurationConstraints,
    required this.creationTimestamp,
    required this.customerRouterIpAddress,
    required this.customerRouterIpv6Address,
    required this.customerRouterIpv6InterfaceId,
    required this.dataplaneVersion,
    required this.description,
    required this.edgeAvailabilityDomain,
    required this.encryption,
    required this.googleReferenceId,
    required this.interconnect,
    required this.ipsecInternalAddresses,
    required this.kind,
    required this.labelFingerprint,
    required this.labels,
    required this.mtu,
    required this.name,
    required this.operationalStatus,
    required this.pairingKey,
    required this.partnerAsn,
    required this.partnerMetadata,
    required this.privateInterconnectInfo,
    required this.region,
    required this.remoteService,
    required this.router,
    required this.satisfiesPzs,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.stackType,
    required this.state,
    required this.subnetLength,
    required this.type,
    required this.vlanTag8021q,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': adminEnabled,
      'bandwidth': bandwidth,
      'candidateIpv6Subnets': candidateIpv6Subnets,
      'candidateSubnets': candidateSubnets,
      'cloudRouterIpAddress': cloudRouterIpAddress,
      'cloudRouterIpv6Address': cloudRouterIpv6Address,
      'cloudRouterIpv6InterfaceId': cloudRouterIpv6InterfaceId,
      'configurationConstraints': configurationConstraints.toMap(),
      'creationTimestamp': creationTimestamp,
      'customerRouterIpAddress': customerRouterIpAddress,
      'customerRouterIpv6Address': customerRouterIpv6Address,
      'customerRouterIpv6InterfaceId': customerRouterIpv6InterfaceId,
      'dataplaneVersion': dataplaneVersion,
      'description': description,
      'edgeAvailabilityDomain': edgeAvailabilityDomain,
      'encryption': encryption,
      'googleReferenceId': googleReferenceId,
      'interconnect': interconnect,
      'ipsecInternalAddresses': ipsecInternalAddresses,
      'kind': kind,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'mtu': mtu,
      'name': name,
      'operationalStatus': operationalStatus,
      'pairingKey': pairingKey,
      'partnerAsn': partnerAsn,
      'partnerMetadata': partnerMetadata.toMap(),
      'privateInterconnectInfo': privateInterconnectInfo.toMap(),
      'region': region,
      'remoteService': remoteService,
      'router': router,
      'satisfiesPzs': satisfiesPzs,
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'stackType': stackType,
      'state': state,
      'subnetLength': subnetLength,
      'type': type,
      'vlanTag8021q': vlanTag8021q,
    };
  }

  factory GetInterconnectAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetInterconnectAttachmentResult(
      adminEnabled: map['adminEnabled'] as bool,
      bandwidth: map['bandwidth'] as String,
      candidateIpv6Subnets: (map['candidateIpv6Subnets'] as List).cast<String>(),
      candidateSubnets: (map['candidateSubnets'] as List).cast<String>(),
      cloudRouterIpAddress: map['cloudRouterIpAddress'] as String,
      cloudRouterIpv6Address: map['cloudRouterIpv6Address'] as String,
      cloudRouterIpv6InterfaceId: map['cloudRouterIpv6InterfaceId'] as String,
      configurationConstraints: InterconnectAttachmentConfigurationConstraintsResponse.fromMap((map['configurationConstraints']! as Map).cast<String, dynamic>()),
      creationTimestamp: map['creationTimestamp'] as String,
      customerRouterIpAddress: map['customerRouterIpAddress'] as String,
      customerRouterIpv6Address: map['customerRouterIpv6Address'] as String,
      customerRouterIpv6InterfaceId: map['customerRouterIpv6InterfaceId'] as String,
      dataplaneVersion: map['dataplaneVersion'] as int,
      description: map['description'] as String,
      edgeAvailabilityDomain: map['edgeAvailabilityDomain'] as String,
      encryption: map['encryption'] as String,
      googleReferenceId: map['googleReferenceId'] as String,
      interconnect: map['interconnect'] as String,
      ipsecInternalAddresses: (map['ipsecInternalAddresses'] as List).cast<String>(),
      kind: map['kind'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      mtu: map['mtu'] as int,
      name: map['name'] as String,
      operationalStatus: map['operationalStatus'] as String,
      pairingKey: map['pairingKey'] as String,
      partnerAsn: map['partnerAsn'] as String,
      partnerMetadata: InterconnectAttachmentPartnerMetadataResponse.fromMap((map['partnerMetadata']! as Map).cast<String, dynamic>()),
      privateInterconnectInfo: InterconnectAttachmentPrivateInfoResponse.fromMap((map['privateInterconnectInfo']! as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      remoteService: map['remoteService'] as String,
      router: map['router'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      stackType: map['stackType'] as String,
      state: map['state'] as String,
      subnetLength: map['subnetLength'] as int,
      type: map['type'] as String,
      vlanTag8021q: map['vlanTag8021q'] as int,
    );
  }
}

