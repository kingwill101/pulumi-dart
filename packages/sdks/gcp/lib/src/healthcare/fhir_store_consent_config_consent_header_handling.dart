// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FhirStoreConsentConfigConsentHeaderHandling {
  /// Specifies the default server behavior when the header is empty. If not specified, the ScopeProfile.PERMIT_EMPTY_SCOPE option is used.
  /// Default value is `PERMIT_EMPTY_SCOPE`.
  /// Possible values are: `SCOPE_PROFILE_UNSPECIFIED`, `PERMIT_EMPTY_SCOPE`, `REQUIRED_ON_READ`.
  final pulumi.Input<String>? profile;

  /// Creates a new [FhirStoreConsentConfigConsentHeaderHandling].
  /// [profile] Specifies the default server behavior when the header is empty. If not specified, the ScopeProfile.PERMIT_EMPTY_SCOPE option is used.
  FhirStoreConsentConfigConsentHeaderHandling({
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profile': ?profile,
    };
  }

  factory FhirStoreConsentConfigConsentHeaderHandling.fromMap(Map<String, dynamic> map) {
    return FhirStoreConsentConfigConsentHeaderHandling(
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

