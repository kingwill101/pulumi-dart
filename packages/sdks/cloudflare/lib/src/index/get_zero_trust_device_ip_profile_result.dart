// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_device_ip_profile_filter.dart';

/// Result data returned by getZeroTrustDeviceIpProfile.
class GetZeroTrustDeviceIpProfileResult {
  final String? accountId;
  /// The RFC3339Nano timestamp when the Device IP profile was created.
  final String? createdAt;
  /// An optional description of the Device IP profile.
  final String? description;
  /// Whether the Device IP profile is enabled.
  final bool? enabled;
  final GetZeroTrustDeviceIpProfileFilter? filter;
  /// The ID of this resource.
  final String? id;
  /// The wirefilter expression to match registrations. Available values: "identity.name", "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.saml_attributes".
  final String? match;
  /// A user-friendly name for the Device IP profile.
  final String? name;
  /// The precedence of the Device IP profile. Lower values indicate higher precedence. Device IP profile will be evaluated in ascending order of this field.
  final int? precedence;
  final String? profileId;
  /// The ID of the Subnet.
  final String? subnetId;
  /// The RFC3339Nano timestamp when the Device IP profile was last updated.
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDeviceIpProfileResult].
  /// [accountId] Optional.
  /// [createdAt] The RFC3339Nano timestamp when the Device IP profile was created.
  /// [description] An optional description of the Device IP profile.
  /// [enabled] Whether the Device IP profile is enabled.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  /// [match] The wirefilter expression to match registrations. Available values: "identity.name", "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.saml_attributes".
  /// [name] A user-friendly name for the Device IP profile.
  /// [precedence] The precedence of the Device IP profile. Lower values indicate higher precedence. Device IP profile will be evaluated in ascending order of this field.
  /// [profileId] Optional.
  /// [subnetId] The ID of the Subnet.
  /// [updatedAt] The RFC3339Nano timestamp when the Device IP profile was last updated.
  const GetZeroTrustDeviceIpProfileResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.enabled,
    this.filter,
    this.id,
    this.match,
    this.name,
    this.precedence,
    this.profileId,
    this.subnetId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'enabled': ?enabled,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'match': ?match,
      'name': ?name,
      'precedence': ?precedence,
      'profileId': ?profileId,
      'subnetId': ?subnetId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDeviceIpProfileResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceIpProfileResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustDeviceIpProfileFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
