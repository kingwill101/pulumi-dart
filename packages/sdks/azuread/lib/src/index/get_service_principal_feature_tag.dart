// ignore_for_file: unused_element, unnecessary_cast


class GetServicePrincipalFeatureTag {
  /// Whether this service principal represents a custom SAML application
  final bool customSingleSignOn;
  /// Whether this service principal represents an Enterprise Application
  final bool enterprise;
  /// Whether this service principal represents a gallery application
  final bool gallery;
  /// Whether this app is invisible to users in My Apps and Office 365 Launcher
  final bool hide;

  /// Creates a new [GetServicePrincipalFeatureTag].
  /// [customSingleSignOn] Whether this service principal represents a custom SAML application
  /// [enterprise] Whether this service principal represents an Enterprise Application
  /// [gallery] Whether this service principal represents a gallery application
  /// [hide] Whether this app is invisible to users in My Apps and Office 365 Launcher
  GetServicePrincipalFeatureTag({
    required this.customSingleSignOn,
    required this.enterprise,
    required this.gallery,
    required this.hide,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSingleSignOn': customSingleSignOn,
      'enterprise': enterprise,
      'gallery': gallery,
      'hide': hide,
    };
  }

  factory GetServicePrincipalFeatureTag.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalFeatureTag(
      customSingleSignOn: map['customSingleSignOn'] as bool,
      enterprise: map['enterprise'] as bool,
      gallery: map['gallery'] as bool,
      hide: map['hide'] as bool,
    );
  }
}

