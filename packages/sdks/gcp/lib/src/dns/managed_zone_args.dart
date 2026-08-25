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
  final pulumi.Input<ManagedZoneCloudLoggingConfig?>? cloudLoggingConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A textual description field. Defaults to 'Managed by Pulumi'.
  final pulumi.Input<String?>? description;
  /// The DNS name of this managed zone, for instance "example.com.".
  final pulumi.Input<String> dnsName;
  /// DNSSEC configuration
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneDnssecConfig?>? dnssecConfig;
  /// Set this true to delete all records in the zone.
  final pulumi.Input<bool?>? forceDestroy;
  /// The presence for this field indicates that outbound forwarding is enabled
  /// for this zone. The value of this field contains the set of destinations
  /// to forward to.
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneForwardingConfig?>? forwardingConfig;
  /// A set of key/value label pairs to assign to this ManagedZone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// User assigned name for this resource.
  /// Must be unique within the project.
  final pulumi.Input<String?>? name;
  /// The presence of this field indicates that DNS Peering is enabled for this
  /// zone. The value of this field contains the network to peer with.
  /// Structure is documented below.
  final pulumi.Input<ManagedZonePeeringConfig?>? peeringConfig;
  /// For privately visible zones, the set of Virtual Private Cloud
  /// resources that the zone is visible from. At least one of `gkeClusters` or `networks` must be specified.
  /// Structure is documented below.
  final pulumi.Input<ManagedZonePrivateVisibilityConfig?>? privateVisibilityConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// (Optional, Beta)
  /// Specifies if this is a managed reverse lookup zone. If true, Cloud DNS will resolve reverse
  /// lookup queries using automatically configured records for VPC resources. This only applies
  /// to networks listed under `privateVisibilityConfig`.
  final pulumi.Input<bool?>? reverseLookup;
  /// (Optional, Beta)
  /// The presence of this field indicates that this zone is backed by Service Directory. The value of this field contains information related to the namespace associated with the zone.
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneServiceDirectoryConfig?>? serviceDirectoryConfig;
  /// The zone's visibility: public zones are exposed to the Internet,
  /// while private zones are visible only to Virtual Private Cloud resources.
  /// Default value is `public`.
  /// Possible values are: `private`, `public`.
  final pulumi.Input<String?>? visibility;

  /// Creates a new [ManagedZoneArgs].
  /// [cloudLoggingConfig] Cloud logging configuration
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  /// [reverseLookup] (Optional, Beta)
  /// [serviceDirectoryConfig] (Optional, Beta)
  /// [visibility] The zone's visibility: public zones are exposed to the Internet,
  ManagedZoneArgs({
    this.cloudLoggingConfig,
    this.deletionPolicy,
    pulumi.Input<String?>? description,
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
  }) : description = description ?? pulumi.Input.fromValue('Managed by Pulumi');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLoggingConfig': ?pulumi.Input.mapOptionalInputValue<ManagedZoneCloudLoggingConfig, Map<String, dynamic>>(cloudLoggingConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
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
      cloudLoggingConfig: (() { final guardedValue = map['cloudLoggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedZoneCloudLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      dnssecConfig: (() { final guardedValue = map['dnssecConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedZoneDnssecConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardingConfig: (() { final guardedValue = map['forwardingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedZoneForwardingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringConfig: (() { final guardedValue = map['peeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedZonePeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateVisibilityConfig: (() { final guardedValue = map['privateVisibilityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedZonePrivateVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reverseLookup: (() { final guardedValue = map['reverseLookup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedZoneServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
