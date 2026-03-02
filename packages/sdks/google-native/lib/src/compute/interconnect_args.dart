// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_interconnect_type.dart';
import 'interconnect_link_type.dart';
import 'interconnect_macsec.dart';
import 'interconnect_requested_features_item.dart';

/// {@template pulumi_compute_alpha_interconnect_args_doc}
/// The set of arguments for Interconnect.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_interconnect_args_doc}
class InterconnectArgs {
  /// Administrative status of the interconnect. When this is set to true, the Interconnect is functional and can carry traffic. When set to false, no packets can be carried over the interconnect and no BGP routes are exchanged over it. By default, the status is set to true.
  final pulumi.Input<bool>? adminEnabled;
  /// Customer name, to put in the Letter of Authorization as the party authorized to request a crossconnect.
  final pulumi.Input<String>? customerName;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Type of interconnect, which can take one of the following values: - PARTNER: A partner-managed interconnection shared between customers though a partner. - DEDICATED: A dedicated physical interconnection with the customer. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
  final pulumi.Input<InterconnectInterconnectType>? interconnectType;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Type of link requested, which can take one of the following values: - LINK_TYPE_ETHERNET_10G_LR: A 10G Ethernet with LR optics - LINK_TYPE_ETHERNET_100G_LR: A 100G Ethernet with LR optics. Note that this field indicates the speed of each of the links in the bundle, not the speed of the entire bundle.
  final pulumi.Input<InterconnectLinkType>? linkType;
  /// URL of the InterconnectLocation object that represents where this connection is to be provisioned.
  final pulumi.Input<String>? location;
  /// Configuration that enables Media Access Control security (MACsec) on the Cloud Interconnect connection between Google and your on-premises router.
  final pulumi.Input<InterconnectMacsec>? macsec;
  /// Enable or disable MACsec on this Interconnect connection. MACsec enablement fails if the MACsec object is not specified.
  final pulumi.Input<bool>? macsecEnabled;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Email address to contact the customer NOC for operations and maintenance notifications regarding this Interconnect. If specified, this will be used for notifications in addition to all other forms described, such as Cloud Monitoring logs alerting and Cloud Notifications. This field is required for users who sign up for Cloud Interconnect using workforce identity federation.
  final pulumi.Input<String>? nocContactEmail;
  final pulumi.Input<String>? project;
  /// Indicates that this is a Cross-Cloud Interconnect. This field specifies the location outside of Google's network that the interconnect is connected to.
  final pulumi.Input<String>? remoteLocation;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. List of features requested for this Interconnect connection, which can take one of the following values: - MACSEC If specified then the connection is created on MACsec capable hardware ports. If not specified, the default value is false, which allocates non-MACsec capable ports first if available. This parameter can be provided only with Interconnect INSERT. It isn't valid for Interconnect PATCH.
  final pulumi.Input<List<InterconnectRequestedFeaturesItem>>? requestedFeatures;
  /// Target number of physical links in the link bundle, as requested by the customer.
  final pulumi.Input<int>? requestedLinkCount;

  /// Creates a new [InterconnectArgs].
  /// [adminEnabled] Administrative status of the interconnect. When this is set to true, the Interconnect is functional and can carry traffic. When set to false, no packets can be carried over the interconnect and no BGP routes are exchanged over it. By default, the status is set to true.
  /// [customerName] Customer name, to put in the Letter of Authorization as the party authorized to request a crossconnect.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [interconnectType] Type of interconnect, which can take one of the following values: - PARTNER: A partner-managed interconnection shared between customers though a partner. - DEDICATED: A dedicated physical interconnection with the customer. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [linkType] Type of link requested, which can take one of the following values: - LINK_TYPE_ETHERNET_10G_LR: A 10G Ethernet with LR optics - LINK_TYPE_ETHERNET_100G_LR: A 100G Ethernet with LR optics. Note that this field indicates the speed of each of the links in the bundle, not the speed of the entire bundle.
  /// [location] URL of the InterconnectLocation object that represents where this connection is to be provisioned.
  /// [macsec] Configuration that enables Media Access Control security (MACsec) on the Cloud Interconnect connection between Google and your on-premises router.
  /// [macsecEnabled] Enable or disable MACsec on this Interconnect connection. MACsec enablement fails if the MACsec object is not specified.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nocContactEmail] Email address to contact the customer NOC for operations and maintenance notifications regarding this Interconnect. If specified, this will be used for notifications in addition to all other forms described, such as Cloud Monitoring logs alerting and Cloud Notifications. This field is required for users who sign up for Cloud Interconnect using workforce identity federation.
  /// [project] Optional.
  /// [remoteLocation] Indicates that this is a Cross-Cloud Interconnect. This field specifies the location outside of Google's network that the interconnect is connected to.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [requestedFeatures] Optional. List of features requested for this Interconnect connection, which can take one of the following values: - MACSEC If specified then the connection is created on MACsec capable hardware ports. If not specified, the default value is false, which allocates non-MACsec capable ports first if available. This parameter can be provided only with Interconnect INSERT. It isn't valid for Interconnect PATCH.
  /// [requestedLinkCount] Target number of physical links in the link bundle, as requested by the customer.
  InterconnectArgs({
    this.adminEnabled,
    this.customerName,
    this.description,
    this.interconnectType,
    this.labels,
    this.linkType,
    this.location,
    this.macsec,
    this.macsecEnabled,
    this.name,
    this.nocContactEmail,
    this.project,
    this.remoteLocation,
    this.requestId,
    this.requestedFeatures,
    this.requestedLinkCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'customerName': ?customerName,
      'description': ?description,
      'interconnectType': ?pulumi.Input.mapOptionalInputValue<InterconnectInterconnectType, String>(interconnectType, (value) => value.value),
      'labels': ?labels,
      'linkType': ?pulumi.Input.mapOptionalInputValue<InterconnectLinkType, String>(linkType, (value) => value.value),
      'location': ?location,
      'macsec': ?pulumi.Input.mapOptionalInputValue<InterconnectMacsec, Map<String, dynamic>>(macsec, (value) => value.toMap()),
      'macsecEnabled': ?macsecEnabled,
      'name': ?name,
      'nocContactEmail': ?nocContactEmail,
      'project': ?project,
      'remoteLocation': ?remoteLocation,
      'requestId': ?requestId,
      'requestedFeatures': ?pulumi.Input.mapOptionalInputValue<List<InterconnectRequestedFeaturesItem>, List<String>>(requestedFeatures, (value) => pulumi.Input.encodeList<InterconnectRequestedFeaturesItem, String>(value, (value) => value.value)),
      'requestedLinkCount': ?requestedLinkCount,
    };
  }

  factory InterconnectArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectArgs(
      adminEnabled: map['adminEnabled'] == null ? null : (map['adminEnabled'] as bool).input(),
      customerName: map['customerName'] == null ? null : (map['customerName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      interconnectType: map['interconnectType'] == null ? null : (InterconnectInterconnectType.fromValue(map['interconnectType'] as String)).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      linkType: map['linkType'] == null ? null : (InterconnectLinkType.fromValue(map['linkType'] as String)).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      macsec: map['macsec'] == null ? null : (InterconnectMacsec.fromMap((map['macsec'] as Map).cast<String, dynamic>())).input(),
      macsecEnabled: map['macsecEnabled'] == null ? null : (map['macsecEnabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nocContactEmail: map['nocContactEmail'] == null ? null : (map['nocContactEmail'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      remoteLocation: map['remoteLocation'] == null ? null : (map['remoteLocation'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      requestedFeatures: map['requestedFeatures'] == null ? null : (pulumi.Input.decodeList<InterconnectRequestedFeaturesItem>(map['requestedFeatures'], (value) => InterconnectRequestedFeaturesItem.fromValue(value as String))).input(),
      requestedLinkCount: map['requestedLinkCount'] == null ? null : (map['requestedLinkCount'] as int).input(),
    );
  }
}

