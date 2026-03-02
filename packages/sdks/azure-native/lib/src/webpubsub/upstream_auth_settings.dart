// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_settings.dart';

/// Upstream auth settings. If not set, no auth is used for upstream messages.
class UpstreamAuthSettings {
  /// Managed identity settings for upstream.
  final pulumi.Input<ManagedIdentitySettings>? managedIdentity;
  /// Upstream auth type enum.
  final pulumi.Input<String>? type;

  /// Creates a new [UpstreamAuthSettings].
  /// [managedIdentity] Managed identity settings for upstream.
  /// [type] Upstream auth type enum.
  UpstreamAuthSettings({
    this.managedIdentity,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentitySettings, Map<String, dynamic>>(managedIdentity, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory UpstreamAuthSettings.fromMap(Map<String, dynamic> map) {
    return UpstreamAuthSettings(
      managedIdentity: map['managedIdentity'] == null ? null : (ManagedIdentitySettings.fromMap((map['managedIdentity'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

