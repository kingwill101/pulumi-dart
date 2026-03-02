// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_cloud_logging_config.dart';
import 'managed_zone_dnssec_config.dart';
import 'managed_zone_forwarding_config.dart';
import 'managed_zone_peering_config.dart';
import 'managed_zone_private_visibility_config.dart';
import 'managed_zone_service_directory_config.dart';

/// {@template pulumi_dns_managed_zone_managed_zone_args_doc}
/// The set of arguments for ManagedZone.
/// {@endtemplate}
/// {@macro pulumi_dns_managed_zone_managed_zone_args_doc}
class ManagedZoneArgs {
  /// Cloud logging configuration
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneCloudLoggingConfig>? cloudLoggingConfig;
  /// A textual description field. Defaults to 'Managed by Pulumi'.
  final pulumi.Input<String>? description;
  /// The DNS name of this managed zone, for instance "example.com.".
  final pulumi.Input<String> dnsName;
  /// DNSSEC configuration
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneDnssecConfig>? dnssecConfig;
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
  /// User assigned name for this resource.
  /// Must be unique within the project.
  final pulumi.Input<String>? name;
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

  /// Creates a new [ManagedZoneArgs].
  /// [cloudLoggingConfig] Cloud logging configuration
  /// [description] A textual description field. Defaults to 'Managed by Pulumi'.
  /// [dnsName] The DNS name of this managed zone, for instance "example.com.".
  /// [dnssecConfig] DNSSEC configuration
  /// [forceDestroy] Set this true to delete all records in the zone.
  /// [forwardingConfig] The presence for this field indicates that outbound forwarding is enabled
  /// [labels] A set of key/value label pairs to assign to this ManagedZone.
  /// [name] User assigned name for this resource.
  /// [peeringConfig] The presence of this field indicates that DNS Peering is enabled for this
  /// [privateVisibilityConfig] For privately visible zones, the set of Virtual Private Cloud
  /// [project] The ID of the project in which the resource belongs.
  /// [reverseLookup] Specifies if this is a managed reverse lookup zone. If true, Cloud DNS will resolve reverse
  /// [serviceDirectoryConfig] The presence of this field indicates that this zone is backed by Service Directory. The value of this field contains information related to the namespace associated with the zone.
  /// [visibility] The zone's visibility: public zones are exposed to the Internet,
  ManagedZoneArgs({
    this.cloudLoggingConfig,
    this.description,
    required this.dnsName,
    this.dnssecConfig,
    this.forceDestroy,
    this.forwardingConfig,
    this.labels,
    this.name,
    this.peeringConfig,
    this.privateVisibilityConfig,
    this.project,
    this.reverseLookup,
    this.serviceDirectoryConfig,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLoggingConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZoneCloudLoggingConfig, Map<String, dynamic>>(cloudLoggingConfig, (value) => value.toMap()),
      'description': ?description,
      'dnsName': dnsName,
      'dnssecConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZoneDnssecConfig, Map<String, dynamic>>(dnssecConfig, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'forwardingConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZoneForwardingConfig, Map<String, dynamic>>(forwardingConfig, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'peeringConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZonePeeringConfig, Map<String, dynamic>>(peeringConfig, (value) => value.toMap()),
      'privateVisibilityConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZonePrivateVisibilityConfig, Map<String, dynamic>>(privateVisibilityConfig, (value) => value.toMap()),
      'project': ?project,
      'reverseLookup': ?reverseLookup,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZoneServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'visibility': ?visibility,
    };
  }

  factory ManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return ManagedZoneArgs(
      cloudLoggingConfig: map['cloudLoggingConfig'] == null ? null : (ManagedZoneCloudLoggingConfig.fromMap((map['cloudLoggingConfig'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dnsName: (map['dnsName'] as String).input(),
      dnssecConfig: map['dnssecConfig'] == null ? null : (ManagedZoneDnssecConfig.fromMap((map['dnssecConfig'] as Map).cast<String, dynamic>())).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      forwardingConfig: map['forwardingConfig'] == null ? null : (ManagedZoneForwardingConfig.fromMap((map['forwardingConfig'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peeringConfig: map['peeringConfig'] == null ? null : (ManagedZonePeeringConfig.fromMap((map['peeringConfig'] as Map).cast<String, dynamic>())).input(),
      privateVisibilityConfig: map['privateVisibilityConfig'] == null ? null : (ManagedZonePrivateVisibilityConfig.fromMap((map['privateVisibilityConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      reverseLookup: map['reverseLookup'] == null ? null : (map['reverseLookup'] as bool).input(),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null ? null : (ManagedZoneServiceDirectoryConfig.fromMap((map['serviceDirectoryConfig'] as Map).cast<String, dynamic>())).input(),
      visibility: map['visibility'] == null ? null : (map['visibility'] as String).input(),
    );
  }
}

