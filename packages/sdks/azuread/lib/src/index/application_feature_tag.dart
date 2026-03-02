// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationFeatureTag {
  /// Whether this application represents a custom SAML application for linked service principals. Enabling this will assign the `WindowsAzureActiveDirectoryCustomSingleSignOnApplication` tag. Defaults to `false`.
  final pulumi.Input<bool>? customSingleSignOn;
  /// Whether this application represents an Enterprise Application for linked service principals. Enabling this will assign the `WindowsAzureActiveDirectoryIntegratedApp` tag. Defaults to `false`.
  final pulumi.Input<bool>? enterprise;
  /// Whether this application represents a gallery application for linked service principals. Enabling this will assign the `WindowsAzureActiveDirectoryGalleryApplicationNonPrimaryV1` tag. Defaults to `false`.
  final pulumi.Input<bool>? gallery;
  /// Whether this app is invisible to users in My Apps and Office 365 Launcher. Enabling this will assign the `HideApp` tag. Defaults to `false`.
  final pulumi.Input<bool>? hide;

  /// Creates a new [ApplicationFeatureTag].
  /// [customSingleSignOn] Whether this application represents a custom SAML application for linked service principals. Enabling this will assign the `WindowsAzureActiveDirectoryCustomSingleSignOnApplication` tag. Defaults to `false`.
  /// [enterprise] Whether this application represents an Enterprise Application for linked service principals. Enabling this will assign the `WindowsAzureActiveDirectoryIntegratedApp` tag. Defaults to `false`.
  /// [gallery] Whether this application represents a gallery application for linked service principals. Enabling this will assign the `WindowsAzureActiveDirectoryGalleryApplicationNonPrimaryV1` tag. Defaults to `false`.
  /// [hide] Whether this app is invisible to users in My Apps and Office 365 Launcher. Enabling this will assign the `HideApp` tag. Defaults to `false`.
  ApplicationFeatureTag({
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

  factory ApplicationFeatureTag.fromMap(Map<String, dynamic> map) {
    return ApplicationFeatureTag(
      customSingleSignOn: map['customSingleSignOn'] == null ? null : (map['customSingleSignOn'] as bool).input(),
      enterprise: map['enterprise'] == null ? null : (map['enterprise'] as bool).input(),
      gallery: map['gallery'] == null ? null : (map['gallery'] as bool).input(),
      hide: map['hide'] == null ? null : (map['hide'] as bool).input(),
    );
  }
}

