// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessIdentityProviderFilter {
  /// Indicates to Access to only retrieve identity providers that have the System for Cross-Domain Identity Management (SCIM) enabled.
  final pulumi.Input<String?>? scimEnabled;

  /// Creates a new [GetZeroTrustAccessIdentityProviderFilter].
  /// [scimEnabled] Indicates to Access to only retrieve identity providers that have the System for Cross-Domain Identity Management (SCIM) enabled.
  const GetZeroTrustAccessIdentityProviderFilter({
    this.scimEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scimEnabled': ?scimEnabled,
    };
  }

  factory GetZeroTrustAccessIdentityProviderFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProviderFilter(
      scimEnabled: (() { final guardedValue = map['scimEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
