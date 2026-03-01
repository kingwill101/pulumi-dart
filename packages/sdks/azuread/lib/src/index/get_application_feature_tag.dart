// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationFeatureTag {
  /// Whether this application represents a custom SAML application for linked service principals.
  final bool? customSingleSignOn;
  /// Whether this application represents an Enterprise Application for linked service principals.
  final bool? enterprise;
  /// Whether this application represents a gallery application for linked service principals.
  final bool? gallery;
  /// Whether this app is visible to users in My Apps and Office 365 Launcher.
  final bool? hide;

  /// Creates a new [GetApplicationFeatureTag].
  /// [customSingleSignOn] Whether this application represents a custom SAML application for linked service principals.
  /// [enterprise] Whether this application represents an Enterprise Application for linked service principals.
  /// [gallery] Whether this application represents a gallery application for linked service principals.
  /// [hide] Whether this app is visible to users in My Apps and Office 365 Launcher.
  GetApplicationFeatureTag({
    this.customSingleSignOn,
    this.enterprise,
    this.gallery,
    this.hide,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSingleSignOn': ?customSingleSignOn,
      'enterprise': ?enterprise,
      'gallery': ?gallery,
      'hide': ?hide,
    };
  }

  factory GetApplicationFeatureTag.fromMap(Map<String, dynamic> map) {
    return GetApplicationFeatureTag(
      customSingleSignOn: map['customSingleSignOn'] == null ? null : map['customSingleSignOn'] as bool,
      enterprise: map['enterprise'] == null ? null : map['enterprise'] as bool,
      gallery: map['gallery'] == null ? null : map['gallery'] as bool,
      hide: map['hide'] == null ? null : map['hide'] as bool,
    );
  }
}

