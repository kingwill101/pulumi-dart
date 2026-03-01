// ignore_for_file: unused_element, unnecessary_cast


class ServicePrincipalFeatureTag {
  /// Whether this service principal represents a custom SAML application. Enabling this will assign the `WindowsAzureActiveDirectoryCustomSingleSignOnApplication` tag. Defaults to `false`.
  final bool? customSingleSignOn;
  /// Whether this service principal represents an Enterprise Application. Enabling this will assign the `WindowsAzureActiveDirectoryIntegratedApp` tag. Defaults to `false`.
  final bool? enterprise;
  /// Whether this service principal represents a gallery application. Enabling this will assign the `WindowsAzureActiveDirectoryGalleryApplicationNonPrimaryV1` tag. Defaults to `false`.
  final bool? gallery;
  /// Whether this app is invisible to users in My Apps and Office 365 Launcher. Enabling this will assign the `HideApp` tag. Defaults to `false`.
  final bool? hide;

  /// Creates a new [ServicePrincipalFeatureTag].
  /// [customSingleSignOn] Whether this service principal represents a custom SAML application. Enabling this will assign the `WindowsAzureActiveDirectoryCustomSingleSignOnApplication` tag. Defaults to `false`.
  /// [enterprise] Whether this service principal represents an Enterprise Application. Enabling this will assign the `WindowsAzureActiveDirectoryIntegratedApp` tag. Defaults to `false`.
  /// [gallery] Whether this service principal represents a gallery application. Enabling this will assign the `WindowsAzureActiveDirectoryGalleryApplicationNonPrimaryV1` tag. Defaults to `false`.
  /// [hide] Whether this app is invisible to users in My Apps and Office 365 Launcher. Enabling this will assign the `HideApp` tag. Defaults to `false`.
  ServicePrincipalFeatureTag({
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

  factory ServicePrincipalFeatureTag.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalFeatureTag(
      customSingleSignOn: map['customSingleSignOn'] == null ? null : map['customSingleSignOn'] as bool,
      enterprise: map['enterprise'] == null ? null : map['enterprise'] as bool,
      gallery: map['gallery'] == null ? null : map['gallery'] as bool,
      hide: map['hide'] == null ? null : map['hide'] as bool,
    );
  }
}

