// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServicePrincipalFeatureTag {
  /// Whether this service principal represents a custom SAML application
  final pulumi.Input<bool> customSingleSignOn;
  /// Whether this service principal represents an Enterprise Application
  final pulumi.Input<bool> enterprise;
  /// Whether this service principal represents a gallery application
  final pulumi.Input<bool> gallery;
  /// Whether this app is invisible to users in My Apps and Office 365 Launcher
  final pulumi.Input<bool> hide;

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
      customSingleSignOn: pulumi.Input.fromValue(map['customSingleSignOn'] as bool),
      enterprise: pulumi.Input.fromValue(map['enterprise'] as bool),
      gallery: pulumi.Input.fromValue(map['gallery'] as bool),
      hide: pulumi.Input.fromValue(map['hide'] as bool),
    );
  }
}

