// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustDeviceIpProfile resources.
class ZeroTrustDeviceIpProfileState {
  final pulumi.Input<String?>? accountId;
  /// The RFC3339Nano timestamp when the Device IP profile was created.
  final pulumi.Input<String?>? createdAt;
  /// An optional description of the Device IP profile.
  final pulumi.Input<String?>? description;
  /// Whether the Device IP profile will be applied to matching devices.
  final pulumi.Input<bool?>? enabled;
  /// The wirefilter expression to match registrations. Available values: "identity.name", "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.saml_attributes".
  final pulumi.Input<String?>? match;
  /// A user-friendly name for the Device IP profile.
  final pulumi.Input<String?>? name;
  /// The precedence of the Device IP profile. Lower values indicate higher precedence. Device IP profile will be evaluated in ascending order of this field.
  final pulumi.Input<int?>? precedence;
  /// The ID of the Subnet.
  final pulumi.Input<String?>? subnetId;
  /// The RFC3339Nano timestamp when the Device IP profile was last updated.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustDeviceIpProfileState].
  /// [accountId] Optional.
  /// [createdAt] The RFC3339Nano timestamp when the Device IP profile was created.
  /// [description] An optional description of the Device IP profile.
  /// [enabled] Whether the Device IP profile will be applied to matching devices.
  /// [match] The wirefilter expression to match registrations. Available values: "identity.name", "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.saml_attributes".
  /// [name] A user-friendly name for the Device IP profile.
  /// [precedence] The precedence of the Device IP profile. Lower values indicate higher precedence. Device IP profile will be evaluated in ascending order of this field.
  /// [subnetId] The ID of the Subnet.
  /// [updatedAt] The RFC3339Nano timestamp when the Device IP profile was last updated.
  const ZeroTrustDeviceIpProfileState({
    this.accountId,
    this.createdAt,
    this.description,
    this.enabled,
    this.match,
    this.name,
    this.precedence,
    this.subnetId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'enabled': ?enabled,
      'match': ?match,
      'name': ?name,
      'precedence': ?precedence,
      'subnetId': ?subnetId,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustDeviceIpProfileState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceIpProfileState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
