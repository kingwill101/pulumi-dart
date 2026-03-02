// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePrincipalFeature {
  /// Whether this service principal represents a custom SAML application
  final pulumi.Input<bool>? customSingleSignOnApp;
  /// Whether this service principal represents an Enterprise Application
  final pulumi.Input<bool>? enterpriseApplication;
  /// Whether this service principal represents a gallery application
  final pulumi.Input<bool>? galleryApplication;
  /// Whether this app is visible to users in My Apps and Office 365 Launcher
  final pulumi.Input<bool>? visibleToUsers;

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
      customSingleSignOnApp: map['customSingleSignOnApp'] == null ? null : (map['customSingleSignOnApp'] as bool).input(),
      enterpriseApplication: map['enterpriseApplication'] == null ? null : (map['enterpriseApplication'] as bool).input(),
      galleryApplication: map['galleryApplication'] == null ? null : (map['galleryApplication'] as bool).input(),
      visibleToUsers: map['visibleToUsers'] == null ? null : (map['visibleToUsers'] as bool).input(),
    );
  }
}

