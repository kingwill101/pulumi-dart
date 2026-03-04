// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecDomainName {
  /// The hostname for the domain.
  final pulumi.Input<String> name;

  /// The domain type, which can be one of the following:
  /// - `DEFAULT`: The default .ondigitalocean.app domain assigned to this app.
  /// - `PRIMARY`: The primary domain for this app that is displayed as the default in the control panel, used in bindable environment variables, and any other places that reference an app's live URL. Only one domain may be set as primary.
  /// - `ALIAS`: A non-primary domain.
  final pulumi.Input<String>? type;

  /// A boolean indicating whether the domain includes all sub-domains, in addition to the given domain.
  final pulumi.Input<bool>? wildcard;

  /// If the domain uses DigitalOcean DNS and you would like App Platform to automatically manage it for you, set this to the name of the domain on your account.
  final pulumi.Input<String>? zone;

  /// Creates a new [AppSpecDomainName].
  /// [name] The hostname for the domain.
  /// [type] The domain type, which can be one of the following:
  /// [wildcard] A boolean indicating whether the domain includes all sub-domains, in addition to the given domain.
  /// [zone] If the domain uses DigitalOcean DNS and you would like App Platform to automatically manage it for you, set this to the name of the domain on your account.
  AppSpecDomainName({required this.name, this.type, this.wildcard, this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': ?type,
      'wildcard': ?wildcard,
      'zone': ?zone,
    };
  }

  factory AppSpecDomainName.fromMap(Map<String, dynamic> map) {
    return AppSpecDomainName(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      wildcard: (() {
        final guardedValue = map['wildcard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
