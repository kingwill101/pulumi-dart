// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_cloud_logging_config.dart';
import 'managed_zone_dnssec_config.dart';
import 'managed_zone_forwarding_config.dart';
import 'managed_zone_peering_config.dart';
import 'managed_zone_private_visibility_config.dart';
import 'managed_zone_service_directory_config.dart';

/// Input properties used for looking up and filtering ManagedZone resources.
class ManagedZoneState {
  /// Cloud logging configuration
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneCloudLoggingConfig>? cloudLoggingConfig;
  /// The time that this resource was created on the server.
  /// This is in RFC3339 text format.
  final pulumi.Input<String>? creationTime;
  /// A textual description field. Defaults to 'Managed by Pulumi'.
  final pulumi.Input<String>? description;
  /// The DNS name of this managed zone, for instance "example.com.".
  final pulumi.Input<String>? dnsName;
  /// DNSSEC configuration
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneDnssecConfig>? dnssecConfig;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Set this true to delete all records in the zone.
  final pulumi.Input<bool>? forceDestroy;
  /// The presence for this field indicates that outbound forwarding is enabled
  /// for this zone. The value of this field contains the set of destinations
  /// to forward to.
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneForwardingConfig>? forwardingConfig;
  /// A set of key/value label pairs to assign to this ManagedZone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Unique identifier for the resource; defined by the server.
  final pulumi.Input<String>? managedZoneId;
  /// User assigned name for this resource.
  /// Must be unique within the project.
  final pulumi.Input<String>? name;
  /// Delegate your managed_zone to these virtual name servers;
  /// defined by the server
  final pulumi.Input<List<String>>? nameServers;
  /// The presence of this field indicates that DNS Peering is enabled for this
  /// zone. The value of this field contains the network to peer with.
  /// Structure is documented below.
  final pulumi.Input<ManagedZonePeeringConfig>? peeringConfig;
  /// For privately visible zones, the set of Virtual Private Cloud
  /// resources that the zone is visible from. At least one of `gke_clusters` or `networks` must be specified.
  /// Structure is documented below.
  final pulumi.Input<ManagedZonePrivateVisibilityConfig>? privateVisibilityConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Specifies if this is a managed reverse lookup zone. If true, Cloud DNS will resolve reverse
  /// lookup queries using automatically configured records for VPC resources. This only applies
  /// to networks listed under `private_visibility_config`.
  final pulumi.Input<bool>? reverseLookup;
  /// The presence of this field indicates that this zone is backed by Service Directory. The value of this field contains information related to the namespace associated with the zone.
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneServiceDirectoryConfig>? serviceDirectoryConfig;
  /// The zone's visibility: public zones are exposed to the Internet,
  /// while private zones are visible only to Virtual Private Cloud resources.
  /// Default value is `public`.
  /// Possible values are: `private`, `public`.
  final pulumi.Input<String>? visibility;

  /// Creates a new [ManagedZoneState].
  /// [cloudLoggingConfig] Cloud logging configuration
  /// [creationTime] The time that this resource was created on the server.
  /// [description] A textual description field. Defaults to 'Managed by Pulumi'.
  /// [dnsName] The DNS name of this managed zone, for instance "example.com.".
  /// [dnssecConfig] DNSSEC configuration
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forceDestroy] Set this true to delete all records in the zone.
  /// [forwardingConfig] The presence for this field indicates that outbound forwarding is enabled
  /// [labels] A set of key/value label pairs to assign to this ManagedZone.
  /// [managedZoneId] Unique identifier for the resource; defined by the server.
  /// [name] User assigned name for this resource.
  /// [nameServers] Delegate your managed_zone to these virtual name servers;
  /// [peeringConfig] The presence of this field indicates that DNS Peering is enabled for this
  /// [privateVisibilityConfig] For privately visible zones, the set of Virtual Private Cloud
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reverseLookup] Specifies if this is a managed reverse lookup zone. If true, Cloud DNS will resolve reverse
  /// [serviceDirectoryConfig] The presence of this field indicates that this zone is backed by Service Directory. The value of this field contains information related to the namespace associated with the zone.
  /// [visibility] The zone's visibility: public zones are exposed to the Internet,
  ManagedZoneState({
    this.cloudLoggingConfig,
    this.creationTime,
    this.description,
    this.dnsName,
    this.dnssecConfig,
    this.effectiveLabels,
    this.forceDestroy,
    this.forwardingConfig,
    this.labels,
    this.managedZoneId,
    this.name,
    this.nameServers,
    this.peeringConfig,
    this.privateVisibilityConfig,
    this.project,
    this.pulumiLabels,
    this.reverseLookup,
    this.serviceDirectoryConfig,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLoggingConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZoneCloudLoggingConfig, Map<String, dynamic>>(cloudLoggingConfig, (value) => value.toMap()),
      'creationTime': ?creationTime,
      'description': ?description,
      'dnsName': ?dnsName,
      'dnssecConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZoneDnssecConfig, Map<String, dynamic>>(dnssecConfig, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'forceDestroy': ?forceDestroy,
      'forwardingConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZoneForwardingConfig, Map<String, dynamic>>(forwardingConfig, (value) => value.toMap()),
      'labels': ?labels,
      'managedZoneId': ?managedZoneId,
      'name': ?name,
      'nameServers': ?nameServers,
      'peeringConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZonePeeringConfig, Map<String, dynamic>>(peeringConfig, (value) => value.toMap()),
      'privateVisibilityConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZonePrivateVisibilityConfig, Map<String, dynamic>>(privateVisibilityConfig, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reverseLookup': ?reverseLookup,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZoneServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'visibility': ?visibility,
    };
  }

  factory ManagedZoneState.fromMap(Map<String, dynamic> map) {
    return ManagedZoneState(
      cloudLoggingConfig: map['cloudLoggingConfig'] == null ? null : (ManagedZoneCloudLoggingConfig.fromMap((map['cloudLoggingConfig'] as Map).cast<String, dynamic>())).input(),
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dnsName: map['dnsName'] == null ? null : (map['dnsName'] as String).input(),
      dnssecConfig: map['dnssecConfig'] == null ? null : (ManagedZoneDnssecConfig.fromMap((map['dnssecConfig'] as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      forwardingConfig: map['forwardingConfig'] == null ? null : (ManagedZoneForwardingConfig.fromMap((map['forwardingConfig'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      managedZoneId: map['managedZoneId'] == null ? null : (map['managedZoneId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nameServers: map['nameServers'] == null ? null : ((map['nameServers'] as List).cast<String>()).input(),
      peeringConfig: map['peeringConfig'] == null ? null : (ManagedZonePeeringConfig.fromMap((map['peeringConfig'] as Map).cast<String, dynamic>())).input(),
      privateVisibilityConfig: map['privateVisibilityConfig'] == null ? null : (ManagedZonePrivateVisibilityConfig.fromMap((map['privateVisibilityConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      reverseLookup: map['reverseLookup'] == null ? null : (map['reverseLookup'] as bool).input(),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null ? null : (ManagedZoneServiceDirectoryConfig.fromMap((map['serviceDirectoryConfig'] as Map).cast<String, dynamic>())).input(),
      visibility: map['visibility'] == null ? null : (map['visibility'] as String).input(),
    );
  }
}

