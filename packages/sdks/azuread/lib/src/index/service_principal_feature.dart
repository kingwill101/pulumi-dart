// ignore_for_file: unused_element, unnecessary_cast


class ServicePrincipalFeature {
  /// Whether this service principal represents a custom SAML application
  final bool? customSingleSignOnApp;
  /// Whether this service principal represents an Enterprise Application
  final bool? enterpriseApplication;
  /// Whether this service principal represents a gallery application
  final bool? galleryApplication;
  /// Whether this app is visible to users in My Apps and Office 365 Launcher
  final bool? visibleToUsers;

  /// Creates a new [ServicePrincipalFeature].
  /// [customSingleSignOnApp] Whether this service principal represents a custom SAML application
  /// [enterpriseApplication] Whether this service principal represents an Enterprise Application
  /// [galleryApplication] Whether this service principal represents a gallery application
  /// [visibleToUsers] Whether this app is visible to users in My Apps and Office 365 Launcher
  ServicePrincipalFeature({
    this.customSingleSignOnApp,
    this.enterpriseApplication,
    this.galleryApplication,
    this.visibleToUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSingleSignOnApp': ?customSingleSignOnApp,
      'enterpriseApplication': ?enterpriseApplication,
      'galleryApplication': ?galleryApplication,
      'visibleToUsers': ?visibleToUsers,
    };
  }

  factory ServicePrincipalFeature.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalFeature(
      customSingleSignOnApp: map['customSingleSignOnApp'] == null ? null : map['customSingleSignOnApp'] as bool,
      enterpriseApplication: map['enterpriseApplication'] == null ? null : map['enterpriseApplication'] as bool,
      galleryApplication: map['galleryApplication'] == null ? null : map['galleryApplication'] as bool,
      visibleToUsers: map['visibleToUsers'] == null ? null : map['visibleToUsers'] as bool,
    );
  }
}

