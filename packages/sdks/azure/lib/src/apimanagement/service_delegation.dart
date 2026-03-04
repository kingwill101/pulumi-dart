// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceDelegation {
  /// Should subscription requests be delegated to an external url? Defaults to `false`.
  final pulumi.Input<bool>? subscriptionsEnabled;

  /// The delegation URL.
  final pulumi.Input<String>? url;

  /// Should user registration requests be delegated to an external url? Defaults to `false`.
  final pulumi.Input<bool>? userRegistrationEnabled;

  /// A base64-encoded validation key to validate, that a request is coming from Azure API Management.
  final pulumi.Input<String>? validationKey;

  /// Creates a new [ServiceDelegation].
  /// [subscriptionsEnabled] Should subscription requests be delegated to an external url? Defaults to `false`.
  /// [url] The delegation URL.
  /// [userRegistrationEnabled] Should user registration requests be delegated to an external url? Defaults to `false`.
  /// [validationKey] A base64-encoded validation key to validate, that a request is coming from Azure API Management.
  ServiceDelegation({
    this.subscriptionsEnabled,
    this.url,
    this.userRegistrationEnabled,
    this.validationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptionsEnabled': ?subscriptionsEnabled,
      'url': ?url,
      'userRegistrationEnabled': ?userRegistrationEnabled,
      'validationKey': ?validationKey,
    };
  }

  factory ServiceDelegation.fromMap(Map<String, dynamic> map) {
    return ServiceDelegation(
      subscriptionsEnabled: (() {
        final guardedValue = map['subscriptionsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userRegistrationEnabled: (() {
        final guardedValue = map['userRegistrationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      validationKey: (() {
        final guardedValue = map['validationKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
