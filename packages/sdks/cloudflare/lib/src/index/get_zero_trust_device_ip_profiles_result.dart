// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceIpProfilesResult {
  /// The RFC3339Nano timestamp when the Device IP profile was created.
  final pulumi.Input<String> createdAt;
  /// An optional description of the Device IP profile.
  final pulumi.Input<String> description;
  /// Whether the Device IP profile is enabled.
  final pulumi.Input<bool> enabled;
  /// The ID of the Device IP profile.
  final pulumi.Input<String> id;
  /// The wirefilter expression to match registrations. Available values: "identity.name", "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.saml_attributes".
  final pulumi.Input<String> match;
  /// A user-friendly name for the Device IP profile.
  final pulumi.Input<String> name;
  /// The precedence of the Device IP profile. Lower values indicate higher precedence. Device IP profile will be evaluated in ascending order of this field.
  final pulumi.Input<int> precedence;
  /// The ID of the Subnet.
  final pulumi.Input<String> subnetId;
  /// The RFC3339Nano timestamp when the Device IP profile was last updated.
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustDeviceIpProfilesResult].
  /// [createdAt] The RFC3339Nano timestamp when the Device IP profile was created.
  /// [description] An optional description of the Device IP profile.
  /// [enabled] Whether the Device IP profile is enabled.
  /// [id] The ID of the Device IP profile.
  /// [match] The wirefilter expression to match registrations. Available values: "identity.name", "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.saml_attributes".
  /// [name] A user-friendly name for the Device IP profile.
  /// [precedence] The precedence of the Device IP profile. Lower values indicate higher precedence. Device IP profile will be evaluated in ascending order of this field.
  /// [subnetId] The ID of the Subnet.
  /// [updatedAt] The RFC3339Nano timestamp when the Device IP profile was last updated.
  const GetZeroTrustDeviceIpProfilesResult({
    required this.createdAt,
    required this.description,
    required this.enabled,
    required this.id,
    required this.match,
    required this.name,
    required this.precedence,
    required this.subnetId,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'enabled': enabled,
      'id': id,
      'match': match,
      'name': name,
      'precedence': precedence,
      'subnetId': subnetId,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustDeviceIpProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceIpProfilesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      match: pulumi.Input.fromValue(map['match'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      precedence: pulumi.Input.fromValue((map['precedence'] as num).toInt()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
