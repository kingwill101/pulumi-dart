// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_cloud_logging_config_dns_v1beta2.dart';
import 'managed_zone_dns_sec_config_dns_v1beta2.dart';
import 'managed_zone_forwarding_config_dns_v1beta2.dart';
import 'managed_zone_peering_config_dns_v1beta2.dart';
import 'managed_zone_private_visibility_config_dns_v1beta2.dart';
import 'managed_zone_reverse_lookup_config_dns_v1beta2.dart';
import 'managed_zone_service_directory_config_dns_v1beta2.dart';
import 'managed_zone_visibility_dns_v1beta2.dart';

/// {@template pulumi_dns_v1beta2_managed_zone_dns_v1beta2_args_doc}
/// The set of arguments for ManagedZone.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_managed_zone_dns_v1beta2_args_doc}
class ManagedZoneDnsV1beta2Args {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<ManagedZoneCloudLoggingConfigDnsV1beta2>?
  cloudLoggingConfig;

  /// The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  final pulumi.Input<String>? creationTime;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  final pulumi.Input<String>? description;

  /// The DNS name of this managed zone, for instance "example.com.".
  final pulumi.Input<String>? dnsName;

  /// DNSSEC configuration.
  final pulumi.Input<ManagedZoneDnsSecConfigDnsV1beta2>? dnssecConfig;

  /// The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  final pulumi.Input<ManagedZoneForwardingConfigDnsV1beta2>? forwardingConfig;
  final pulumi.Input<String>? kind;

  /// User labels.
  final pulumi.Input<Map<String, String>>? labels;

  /// User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  final pulumi.Input<String>? name;

  /// Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  final pulumi.Input<String>? nameServerSet;

  /// The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  final pulumi.Input<ManagedZonePeeringConfigDnsV1beta2>? peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  final pulumi.Input<ManagedZonePrivateVisibilityConfigDnsV1beta2>?
  privateVisibilityConfig;
  final pulumi.Input<String>? project;

  /// The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  final pulumi.Input<ManagedZoneReverseLookupConfigDnsV1beta2>?
  reverseLookupConfig;

  /// This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  final pulumi.Input<ManagedZoneServiceDirectoryConfigDnsV1beta2>?
  serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  final pulumi.Input<ManagedZoneVisibilityDnsV1beta2>? visibility;

  /// Creates a new [ManagedZoneDnsV1beta2Args].
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [cloudLoggingConfig] Optional.
  /// [creationTime] The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  /// [description] A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  /// [dnsName] The DNS name of this managed zone, for instance "example.com.".
  /// [dnssecConfig] DNSSEC configuration.
  /// [forwardingConfig] The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  /// [kind] Optional.
  /// [labels] User labels.
  /// [name] User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  /// [nameServerSet] Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  /// [peeringConfig] The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  /// [privateVisibilityConfig] For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  /// [project] Optional.
  /// [reverseLookupConfig] The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  /// [serviceDirectoryConfig] This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  /// [visibility] The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  ManagedZoneDnsV1beta2Args({
    this.clientOperationId,
    this.cloudLoggingConfig,
    this.creationTime,
    this.description,
    this.dnsName,
    this.dnssecConfig,
    this.forwardingConfig,
    this.kind,
    this.labels,
    this.name,
    this.nameServerSet,
    this.peeringConfig,
    this.privateVisibilityConfig,
    this.project,
    this.reverseLookupConfig,
    this.serviceDirectoryConfig,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'cloudLoggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneCloudLoggingConfigDnsV1beta2,
            Map<String, dynamic>
          >(cloudLoggingConfig, (value) => value.toMap()),
      'creationTime': ?creationTime,
      'description': ?description,
      'dnsName': ?dnsName,
      'dnssecConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneDnsSecConfigDnsV1beta2,
            Map<String, dynamic>
          >(dnssecConfig, (value) => value.toMap()),
      'forwardingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneForwardingConfigDnsV1beta2,
            Map<String, dynamic>
          >(forwardingConfig, (value) => value.toMap()),
      'kind': ?kind,
      'labels': ?labels,
      'name': ?name,
      'nameServerSet': ?nameServerSet,
      'peeringConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZonePeeringConfigDnsV1beta2,
            Map<String, dynamic>
          >(peeringConfig, (value) => value.toMap()),
      'privateVisibilityConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZonePrivateVisibilityConfigDnsV1beta2,
            Map<String, dynamic>
          >(privateVisibilityConfig, (value) => value.toMap()),
      'project': ?project,
      'reverseLookupConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneReverseLookupConfigDnsV1beta2,
            Map<String, dynamic>
          >(reverseLookupConfig, (value) => value.toMap()),
      'serviceDirectoryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneServiceDirectoryConfigDnsV1beta2,
            Map<String, dynamic>
          >(serviceDirectoryConfig, (value) => value.toMap()),
      'visibility':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneVisibilityDnsV1beta2,
            String
          >(visibility, (value) => value.wireValue),
    };
  }

  factory ManagedZoneDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsV1beta2Args(
      clientOperationId: (() {
        final guardedValue = map['clientOperationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudLoggingConfig: (() {
        final guardedValue = map['cloudLoggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZoneCloudLoggingConfigDnsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      creationTime: (() {
        final guardedValue = map['creationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsName: (() {
        final guardedValue = map['dnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnssecConfig: (() {
        final guardedValue = map['dnssecConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZoneDnsSecConfigDnsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      forwardingConfig: (() {
        final guardedValue = map['forwardingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZoneForwardingConfigDnsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameServerSet: (() {
        final guardedValue = map['nameServerSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peeringConfig: (() {
        final guardedValue = map['peeringConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZonePeeringConfigDnsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateVisibilityConfig: (() {
        final guardedValue = map['privateVisibilityConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZonePrivateVisibilityConfigDnsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reverseLookupConfig: (() {
        final guardedValue = map['reverseLookupConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZoneReverseLookupConfigDnsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceDirectoryConfig: (() {
        final guardedValue = map['serviceDirectoryConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZoneServiceDirectoryConfigDnsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      visibility: (() {
        final guardedValue = map['visibility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZoneVisibilityDnsV1beta2.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
