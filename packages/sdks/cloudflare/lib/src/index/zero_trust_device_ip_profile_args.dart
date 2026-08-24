// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_device_ip_profile_zero_trust_device_ip_profile_args_doc}
/// The set of arguments for ZeroTrustDeviceIpProfile.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_device_ip_profile_zero_trust_device_ip_profile_args_doc}
class ZeroTrustDeviceIpProfileArgs {
  final pulumi.Input<String> accountId;
  /// An optional description of the Device IP profile.
  final pulumi.Input<String?>? description;
  /// Whether the Device IP profile will be applied to matching devices.
  final pulumi.Input<bool?>? enabled;
  /// The wirefilter expression to match registrations. Available values: "identity.name", "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.saml_attributes".
  final pulumi.Input<String> match;
  /// A user-friendly name for the Device IP profile.
  final pulumi.Input<String> name;
  /// The precedence of the Device IP profile. Lower values indicate higher precedence. Device IP profile will be evaluated in ascending order of this field.
  final pulumi.Input<int> precedence;
  /// The ID of the Subnet.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ZeroTrustDeviceIpProfileArgs].
  /// [accountId] Required.
  /// [description] An optional description of the Device IP profile.
  /// [enabled] Whether the Device IP profile will be applied to matching devices.
  /// [match] The wirefilter expression to match registrations. Available values: "identity.name", "identity.email", "identity.groups.id", "identity.groups.name", "identity.groups.email", "identity.saml_attributes".
  /// [name] A user-friendly name for the Device IP profile.
  /// [precedence] The precedence of the Device IP profile. Lower values indicate higher precedence. Device IP profile will be evaluated in ascending order of this field.
  /// [subnetId] The ID of the Subnet.
  const ZeroTrustDeviceIpProfileArgs({
    required this.accountId,
    this.description,
    this.enabled,
    required this.match,
    required this.name,
    required this.precedence,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'enabled': ?enabled,
      'match': match,
      'name': name,
      'precedence': precedence,
      'subnetId': subnetId,
    };
  }

  factory ZeroTrustDeviceIpProfileArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceIpProfileArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: pulumi.Input.fromValue(map['match'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      precedence: pulumi.Input.fromValue((map['precedence'] as num).toInt()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
