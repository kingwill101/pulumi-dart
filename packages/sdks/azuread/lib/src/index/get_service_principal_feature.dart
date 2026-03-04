// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServicePrincipalFeature {
  /// Whether this service principal represents a custom SAML application.
  final pulumi.Input<bool> customSingleSignOnApp;

  /// Whether this service principal represents an Enterprise Application.
  final pulumi.Input<bool> enterpriseApplication;

  /// Whether this service principal represents a gallery application.
  final pulumi.Input<bool> galleryApplication;

  /// Whether this app is visible to users in My Apps and Office 365 Launcher.
  final pulumi.Input<bool> visibleToUsers;

  /// Creates a new [GetServicePrincipalFeature].
  /// [customSingleSignOnApp] Whether this service principal represents a custom SAML application.
  /// [enterpriseApplication] Whether this service principal represents an Enterprise Application.
  /// [galleryApplication] Whether this service principal represents a gallery application.
  /// [visibleToUsers] Whether this app is visible to users in My Apps and Office 365 Launcher.
  GetServicePrincipalFeature({
    required this.customSingleSignOnApp,
    required this.enterpriseApplication,
    required this.galleryApplication,
    required this.visibleToUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSingleSignOnApp': customSingleSignOnApp,
      'enterpriseApplication': enterpriseApplication,
      'galleryApplication': galleryApplication,
      'visibleToUsers': visibleToUsers,
    };
  }

  factory GetServicePrincipalFeature.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalFeature(
      customSingleSignOnApp: pulumi.Input.fromValue(
        map['customSingleSignOnApp'] as bool,
      ),
      enterpriseApplication: pulumi.Input.fromValue(
        map['enterpriseApplication'] as bool,
      ),
      galleryApplication: pulumi.Input.fromValue(
        map['galleryApplication'] as bool,
      ),
      visibleToUsers: pulumi.Input.fromValue(map['visibleToUsers'] as bool),
    );
  }
}
