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
    pulumi.Output<ManagedZoneCloudLoggingConfig>? cloudLoggingConfig,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dnsName,
    pulumi.Output<ManagedZoneDnssecConfig>? dnssecConfig,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<ManagedZoneForwardingConfig>? forwardingConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? managedZoneId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? nameServers,
    pulumi.Output<ManagedZonePeeringConfig>? peeringConfig,
    pulumi.Output<ManagedZonePrivateVisibilityConfig>? privateVisibilityConfig,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reverseLookup,
    pulumi.Output<ManagedZoneServiceDirectoryConfig>? serviceDirectoryConfig,
    pulumi.Output<String>? visibility,
  }) :
      cloudLoggingConfig = pulumi.Input.asOptionalInput<ManagedZoneCloudLoggingConfig>(cloudLoggingConfig),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      dnssecConfig = pulumi.Input.asOptionalInput<ManagedZoneDnssecConfig>(dnssecConfig),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      forwardingConfig = pulumi.Input.asOptionalInput<ManagedZoneForwardingConfig>(forwardingConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      managedZoneId = pulumi.Input.asOptionalInput<String>(managedZoneId),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameServers = pulumi.Input.asOptionalInput<List<String>>(nameServers),
      peeringConfig = pulumi.Input.asOptionalInput<ManagedZonePeeringConfig>(peeringConfig),
      privateVisibilityConfig = pulumi.Input.asOptionalInput<ManagedZonePrivateVisibilityConfig>(privateVisibilityConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reverseLookup = pulumi.Input.asOptionalInput<bool>(reverseLookup),
      serviceDirectoryConfig = pulumi.Input.asOptionalInput<ManagedZoneServiceDirectoryConfig>(serviceDirectoryConfig),
      visibility = pulumi.Input.asOptionalInput<String>(visibility);

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
      cloudLoggingConfig: map['cloudLoggingConfig'] == null ? null : pulumi.Output.create<ManagedZoneCloudLoggingConfig>(ManagedZoneCloudLoggingConfig.fromMap((map['cloudLoggingConfig'] as Map).cast<String, dynamic>())),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      dnssecConfig: map['dnssecConfig'] == null ? null : pulumi.Output.create<ManagedZoneDnssecConfig>(ManagedZoneDnssecConfig.fromMap((map['dnssecConfig'] as Map).cast<String, dynamic>())),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      forwardingConfig: map['forwardingConfig'] == null ? null : pulumi.Output.create<ManagedZoneForwardingConfig>(ManagedZoneForwardingConfig.fromMap((map['forwardingConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      managedZoneId: map['managedZoneId'] == null ? null : pulumi.Output.create<String>(map['managedZoneId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameServers: map['nameServers'] == null ? null : pulumi.Output.create<List<String>>((map['nameServers'] as List).cast<String>()),
      peeringConfig: map['peeringConfig'] == null ? null : pulumi.Output.create<ManagedZonePeeringConfig>(ManagedZonePeeringConfig.fromMap((map['peeringConfig'] as Map).cast<String, dynamic>())),
      privateVisibilityConfig: map['privateVisibilityConfig'] == null ? null : pulumi.Output.create<ManagedZonePrivateVisibilityConfig>(ManagedZonePrivateVisibilityConfig.fromMap((map['privateVisibilityConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reverseLookup: map['reverseLookup'] == null ? null : pulumi.Output.create<bool>(map['reverseLookup'] as bool),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null ? null : pulumi.Output.create<ManagedZoneServiceDirectoryConfig>(ManagedZoneServiceDirectoryConfig.fromMap((map['serviceDirectoryConfig'] as Map).cast<String, dynamic>())),
      visibility: map['visibility'] == null ? null : pulumi.Output.create<String>(map['visibility'] as String),
    );
  }
}

