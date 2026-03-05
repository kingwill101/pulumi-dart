// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_application_aware_interconnect.dart';
import 'interconnect_macsec.dart';
import 'interconnect_params.dart';

/// {@template pulumi_compute_interconnect_interconnect_args_doc}
/// The set of arguments for Interconnect.
/// {@endtemplate}
/// {@macro pulumi_compute_interconnect_interconnect_args_doc}
class InterconnectArgs {
  /// Enable or disable the Application Aware Interconnect(AAI) feature on this interconnect.
  final pulumi.Input<bool>? aaiEnabled;
  /// Administrative status of the interconnect. When this is set to true, the Interconnect is
  /// functional and can carry traffic. When set to false, no packets can be carried over the
  /// interconnect and no BGP routes are exchanged over it. By default, the status is set to true.
  final pulumi.Input<bool>? adminEnabled;
  /// Configuration that enables Media Access Control security (MACsec) on the Cloud
  /// Interconnect connection between Google and your on-premises router.
  /// Structure is documented below.
  final pulumi.Input<InterconnectApplicationAwareInterconnect>? applicationAwareInterconnect;
  /// Customer name, to put in the Letter of Authorization as the party authorized to request a
  /// crossconnect. This field is required for Dedicated and Partner Interconnect, should not be specified
  /// for cross-cloud interconnect.
  final pulumi.Input<String>? customerName;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Type of interconnect. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
  /// Can take one of the following values:
  /// - PARTNER: A partner-managed interconnection shared between customers though a partner.
  /// - DEDICATED: A dedicated physical interconnection with the customer.
  /// Possible values are: `DEDICATED`, `PARTNER`, `IT_PRIVATE`.
  final pulumi.Input<String> interconnectType;
  /// Labels for this resource. These can only be added or modified by the setLabels
  /// method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Type of link requested. Note that this field indicates the speed of each of the links in the
  /// bundle, not the speed of the entire bundle. Can take one of the following values:
  /// - LINK_TYPE_ETHERNET_10G_LR: A 10G Ethernet with LR optics.
  /// - LINK_TYPE_ETHERNET_100G_LR: A 100G Ethernet with LR optics.
  /// - LINK_TYPE_ETHERNET_400G_LR4: A 400G Ethernet with LR4 optics
  /// Possible values are: `LINK_TYPE_ETHERNET_10G_LR`, `LINK_TYPE_ETHERNET_100G_LR`, `LINK_TYPE_ETHERNET_400G_LR4`.
  final pulumi.Input<String> linkType;
  /// URL of the InterconnectLocation object that represents where this connection is to be provisioned.
  /// Specifies the location inside Google's Networks.
  final pulumi.Input<String> location;
  /// Configuration that enables Media Access Control security (MACsec) on the Cloud
  /// Interconnect connection between Google and your on-premises router.
  /// Structure is documented below.
  final pulumi.Input<InterconnectMacsec>? macsec;
  /// Enable or disable MACsec on this Interconnect connection.
  /// MACsec enablement fails if the MACsec object is not specified.
  final pulumi.Input<bool>? macsecEnabled;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Email address to contact the customer NOC for operations and maintenance notifications
  /// regarding this Interconnect. If specified, this will be used for notifications in addition to
  /// all other forms described, such as Cloud Monitoring logs alerting and Cloud Notifications.
  /// This field is required for users who sign up for Cloud Interconnect using workforce identity
  /// federation.
  final pulumi.Input<String>? nocContactEmail;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<InterconnectParams>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Indicates that this is a Cross-Cloud Interconnect. This field specifies the location outside
  /// of Google's network that the interconnect is connected to.
  final pulumi.Input<String>? remoteLocation;
  /// List of features to request for this Interconnect connection. This field is only applicable during Interconnect creation and cannot be modified later.
  /// Possible values include:
  /// - 'IF_MACSEC': Provisions the connection on hardware ports that support MACsec (Media Access Control Security). If not specified, the system may allocate non-MACsec capable ports if available.
  /// - 'IF_L2_FORWARDING': Provisions the connection for Layer 2 (L2) traffic forwarding. If not specified, the connection defaults to Layer 3 (L3) traffic forwarding.
  /// - 'IF_CROSS_SITE_NETWORK': Provisions the connection exclusively for Cross-Site Networking.
  /// Note: 'MACSEC' is a legacy value for compatibility reasons and has the same effect as 'IF_MACSEC'. 'IF_MACSEC' is preferred.
  /// Each value may be one of: `MACSEC`, `CROSS_SITE_NETWORK`, `IF_MACSEC`, `IF_L2_FORWARDING`.
  final pulumi.Input<List<String>>? requestedFeatures;
  /// Target number of physical links in the link bundle, as requested by the customer.
  final pulumi.Input<int> requestedLinkCount;

  /// Creates a new [InterconnectArgs].
  /// [aaiEnabled] Enable or disable the Application Aware Interconnect(AAI) feature on this interconnect.
  /// [adminEnabled] Administrative status of the interconnect. When this is set to true, the Interconnect is
  /// [applicationAwareInterconnect] Configuration that enables Media Access Control security (MACsec) on the Cloud
  /// [customerName] Customer name, to put in the Letter of Authorization as the party authorized to request a
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [interconnectType] Type of interconnect. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels
  /// [linkType] Type of link requested. Note that this field indicates the speed of each of the links in the
  /// [location] URL of the InterconnectLocation object that represents where this connection is to be provisioned.
  /// [macsec] Configuration that enables Media Access Control security (MACsec) on the Cloud
  /// [macsecEnabled] Enable or disable MACsec on this Interconnect connection.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [nocContactEmail] Email address to contact the customer NOC for operations and maintenance notifications
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [remoteLocation] Indicates that this is a Cross-Cloud Interconnect. This field specifies the location outside
  /// [requestedFeatures] List of features to request for this Interconnect connection. This field is only applicable during Interconnect creation and cannot be modified later.
  /// [requestedLinkCount] Target number of physical links in the link bundle, as requested by the customer.
  InterconnectArgs({
    this.aaiEnabled,
    this.adminEnabled,
    this.applicationAwareInterconnect,
    this.customerName,
    this.description,
    required this.interconnectType,
    this.labels,
    required this.linkType,
    required this.location,
    this.macsec,
    this.macsecEnabled,
    this.name,
    this.nocContactEmail,
    this.params,
    this.project,
    this.remoteLocation,
    this.requestedFeatures,
    required this.requestedLinkCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aaiEnabled': ?aaiEnabled,
      'adminEnabled': ?adminEnabled,
      'applicationAwareInterconnect': ?pulumi.Input.mapOptionalInputValue<InterconnectApplicationAwareInterconnect, Map<String, dynamic>>(applicationAwareInterconnect, (value) => value.toMap()),
      'customerName': ?customerName,
      'description': ?description,
      'interconnectType': interconnectType,
      'labels': ?labels,
      'linkType': linkType,
      'location': location,
      'macsec': ?pulumi.Input.mapOptionalInputValue<InterconnectMacsec, Map<String, dynamic>>(macsec, (value) => value.toMap()),
      'macsecEnabled': ?macsecEnabled,
      'name': ?name,
      'nocContactEmail': ?nocContactEmail,
      'params': ?pulumi.Input.mapOptionalInputValue<InterconnectParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'remoteLocation': ?remoteLocation,
      'requestedFeatures': ?requestedFeatures,
      'requestedLinkCount': requestedLinkCount,
    };
  }

  factory InterconnectArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectArgs(
      aaiEnabled: (() { final guardedValue = map['aaiEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      adminEnabled: (() { final guardedValue = map['adminEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      applicationAwareInterconnect: (() { final guardedValue = map['applicationAwareInterconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectApplicationAwareInterconnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerName: (() { final guardedValue = map['customerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interconnectType: pulumi.Input.fromValue(map['interconnectType'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      linkType: pulumi.Input.fromValue(map['linkType'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      macsec: (() { final guardedValue = map['macsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectMacsec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      macsecEnabled: (() { final guardedValue = map['macsecEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nocContactEmail: (() { final guardedValue = map['nocContactEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteLocation: (() { final guardedValue = map['remoteLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestedFeatures: (() { final guardedValue = map['requestedFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requestedLinkCount: pulumi.Input.fromValue(map['requestedLinkCount'] as int),
    );
  }
}

