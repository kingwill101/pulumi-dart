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
      customSingleSignOnApp: (() {
        final guardedValue = map['customSingleSignOnApp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enterpriseApplication: (() {
        final guardedValue = map['enterpriseApplication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      galleryApplication: (() {
        final guardedValue = map['galleryApplication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      visibleToUsers: (() {
        final guardedValue = map['visibleToUsers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
