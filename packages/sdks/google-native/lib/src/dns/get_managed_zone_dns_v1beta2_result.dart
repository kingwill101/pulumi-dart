// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_cloud_logging_config_response_dns_v1beta2.dart';
import 'managed_zone_dns_sec_config_response_dns_v1beta2.dart';
import 'managed_zone_forwarding_config_response_dns_v1beta2.dart';
import 'managed_zone_peering_config_response_dns_v1beta2.dart';
import 'managed_zone_private_visibility_config_response_dns_v1beta2.dart';
import 'managed_zone_reverse_lookup_config_response_dns_v1beta2.dart';
import 'managed_zone_service_directory_config_response_dns_v1beta2.dart';

/// Result data returned by getManagedZone.
class GetManagedZoneDnsV1beta2Result {
  final ManagedZoneCloudLoggingConfigResponseDnsV1beta2? cloudLoggingConfig;
  /// The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  final String? creationTime;
  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  final String? description;
  /// The DNS name of this managed zone, for instance "example.com.".
  final String? dnsName;
  /// DNSSEC configuration.
  final ManagedZoneDnsSecConfigResponseDnsV1beta2? dnssecConfig;
  /// The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  final ManagedZoneForwardingConfigResponseDnsV1beta2? forwardingConfig;
  final String? kind;
  /// User labels.
  final Map<String, String>? labels;
  /// User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  final String? name;
  /// Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  final String? nameServerSet;
  /// Delegate your managed_zone to these virtual name servers; defined by the server (output only)
  final List<String>? nameServers;
  /// The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  final ManagedZonePeeringConfigResponseDnsV1beta2? peeringConfig;
  /// For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  final ManagedZonePrivateVisibilityConfigResponseDnsV1beta2? privateVisibilityConfig;
  /// The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  final ManagedZoneReverseLookupConfigResponseDnsV1beta2? reverseLookupConfig;
  /// This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  final ManagedZoneServiceDirectoryConfigResponseDnsV1beta2? serviceDirectoryConfig;
  /// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  final String? visibility;

  /// Creates a new [GetManagedZoneDnsV1beta2Result].
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
  /// [nameServers] Delegate your managed_zone to these virtual name servers; defined by the server (output only)
  /// [peeringConfig] The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  /// [privateVisibilityConfig] For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  /// [reverseLookupConfig] The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  /// [serviceDirectoryConfig] This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  /// [visibility] The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  const GetManagedZoneDnsV1beta2Result({
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
    this.nameServers,
    this.peeringConfig,
    this.privateVisibilityConfig,
    this.reverseLookupConfig,
    this.serviceDirectoryConfig,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLoggingConfig': ?cloudLoggingConfig?.toMap(),
      'creationTime': ?creationTime,
      'description': ?description,
      'dnsName': ?dnsName,
      'dnssecConfig': ?dnssecConfig?.toMap(),
      'forwardingConfig': ?forwardingConfig?.toMap(),
      'kind': ?kind,
      'labels': ?labels,
      'name': ?name,
      'nameServerSet': ?nameServerSet,
      'nameServers': ?nameServers,
      'peeringConfig': ?peeringConfig?.toMap(),
      'privateVisibilityConfig': ?privateVisibilityConfig?.toMap(),
      'reverseLookupConfig': ?reverseLookupConfig?.toMap(),
      'serviceDirectoryConfig': ?serviceDirectoryConfig?.toMap(),
      'visibility': ?visibility,
    };
  }

  factory GetManagedZoneDnsV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneDnsV1beta2Result(
      cloudLoggingConfig: (() { final guardedValue = map['cloudLoggingConfig']; if (guardedValue == null) return null; return ManagedZoneCloudLoggingConfigResponseDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnssecConfig: (() { final guardedValue = map['dnssecConfig']; if (guardedValue == null) return null; return ManagedZoneDnsSecConfigResponseDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      forwardingConfig: (() { final guardedValue = map['forwardingConfig']; if (guardedValue == null) return null; return ManagedZoneForwardingConfigResponseDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameServerSet: (() { final guardedValue = map['nameServerSet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      peeringConfig: (() { final guardedValue = map['peeringConfig']; if (guardedValue == null) return null; return ManagedZonePeeringConfigResponseDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateVisibilityConfig: (() { final guardedValue = map['privateVisibilityConfig']; if (guardedValue == null) return null; return ManagedZonePrivateVisibilityConfigResponseDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reverseLookupConfig: (() { final guardedValue = map['reverseLookupConfig']; if (guardedValue == null) return null; return ManagedZoneReverseLookupConfigResponseDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return ManagedZoneServiceDirectoryConfigResponseDnsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
