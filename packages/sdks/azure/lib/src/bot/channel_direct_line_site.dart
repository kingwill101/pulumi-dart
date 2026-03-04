// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelDirectLineSite {
  /// Enables/Disables this site. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Is the endpoint parameters enabled for this site?
  final pulumi.Input<bool>? endpointParametersEnabled;

  /// Enables additional security measures for this site, see [Enhanced Directline Authentication Features](https://blog.botframework.com/2018/09/25/enhanced-direct-line-authentication-features). Disabled by default.
  final pulumi.Input<bool>? enhancedAuthenticationEnabled;

  /// Id for the site
  final pulumi.Input<String>? id;

  /// Primary key for accessing this site
  final pulumi.Input<String>? key;

  /// Secondary key for accessing this site
  final pulumi.Input<String>? key2;

  /// The name of the site
  final pulumi.Input<String> name;

  /// Is the storage site enabled for detailed logging? Defaults to `true`.
  final pulumi.Input<bool>? storageEnabled;

  /// This field is required when `is_secure_site_enabled` is enabled. Determines which origins can establish a Directline conversation for this site.
  final pulumi.Input<List<String>>? trustedOrigins;

  /// Is the user upload enabled for this site? Defaults to `true`.
  final pulumi.Input<bool>? userUploadEnabled;

  /// Enables v1 of the Directline protocol for this site. Defaults to `true`.
  final pulumi.Input<bool>? v1Allowed;

  /// Enables v3 of the Directline protocol for this site. Defaults to `true`.
  final pulumi.Input<bool>? v3Allowed;

  /// Creates a new [ChannelDirectLineSite].
  /// [enabled] Enables/Disables this site. Defaults to `true`.
  /// [endpointParametersEnabled] Is the endpoint parameters enabled for this site?
  /// [enhancedAuthenticationEnabled] Enables additional security measures for this site, see [Enhanced Directline Authentication Features](https://blog.botframework.com/2018/09/25/enhanced-direct-line-authentication-features). Disabled by default.
  /// [id] Id for the site
  /// [key] Primary key for accessing this site
  /// [key2] Secondary key for accessing this site
  /// [name] The name of the site
  /// [storageEnabled] Is the storage site enabled for detailed logging? Defaults to `true`.
  /// [trustedOrigins] This field is required when `is_secure_site_enabled` is enabled. Determines which origins can establish a Directline conversation for this site.
  /// [userUploadEnabled] Is the user upload enabled for this site? Defaults to `true`.
  /// [v1Allowed] Enables v1 of the Directline protocol for this site. Defaults to `true`.
  /// [v3Allowed] Enables v3 of the Directline protocol for this site. Defaults to `true`.
  ChannelDirectLineSite({
    this.enabled,
    this.endpointParametersEnabled,
    this.enhancedAuthenticationEnabled,
    this.id,
    this.key,
    this.key2,
    required this.name,
    this.storageEnabled,
    this.trustedOrigins,
    this.userUploadEnabled,
    this.v1Allowed,
    this.v3Allowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endpointParametersEnabled': ?endpointParametersEnabled,
      'enhancedAuthenticationEnabled': ?enhancedAuthenticationEnabled,
      'id': ?id,
      'key': ?key,
      'key2': ?key2,
      'name': name,
      'storageEnabled': ?storageEnabled,
      'trustedOrigins': ?trustedOrigins,
      'userUploadEnabled': ?userUploadEnabled,
      'v1Allowed': ?v1Allowed,
      'v3Allowed': ?v3Allowed,
    };
  }

  factory ChannelDirectLineSite.fromMap(Map<String, dynamic> map) {
    return ChannelDirectLineSite(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      endpointParametersEnabled: (() {
        final guardedValue = map['endpointParametersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enhancedAuthenticationEnabled: (() {
        final guardedValue = map['enhancedAuthenticationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key2: (() {
        final guardedValue = map['key2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageEnabled: (() {
        final guardedValue = map['storageEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      trustedOrigins: (() {
        final guardedValue = map['trustedOrigins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      userUploadEnabled: (() {
        final guardedValue = map['userUploadEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      v1Allowed: (() {
        final guardedValue = map['v1Allowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      v3Allowed: (() {
        final guardedValue = map['v3Allowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
