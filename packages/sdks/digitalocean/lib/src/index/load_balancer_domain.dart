// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerDomain {
  /// **Deprecated** The certificate ID to be used for TLS handshaking.
  final pulumi.Input<String>? certificateId;
  /// The certificate name to be used for TLS handshaking.
  final pulumi.Input<String>? certificateName;
  /// Control flag to specify whether the domain is managed by DigitalOcean.
  final pulumi.Input<bool>? isManaged;
  /// The domain name to be used for ingressing traffic to a Global Load Balancer.
  final pulumi.Input<String> name;
  /// list of domain SSL validation errors
  final pulumi.Input<List<String>>? sslValidationErrorReasons;
  /// list of domain verification errors
  final pulumi.Input<List<String>>? verificationErrorReasons;

  /// Creates a new [LoadBalancerDomain].
  /// [certificateId] **Deprecated** The certificate ID to be used for TLS handshaking.
  /// [certificateName] The certificate name to be used for TLS handshaking.
  /// [isManaged] Control flag to specify whether the domain is managed by DigitalOcean.
  /// [name] The domain name to be used for ingressing traffic to a Global Load Balancer.
  /// [sslValidationErrorReasons] list of domain SSL validation errors
  /// [verificationErrorReasons] list of domain verification errors
  const LoadBalancerDomain({
    this.certificateId,
    this.certificateName,
    this.isManaged,
    required this.name,
    this.sslValidationErrorReasons,
    this.verificationErrorReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'certificateName': ?certificateName,
      'isManaged': ?isManaged,
      'name': name,
      'sslValidationErrorReasons': ?sslValidationErrorReasons,
      'verificationErrorReasons': ?verificationErrorReasons,
    };
  }

  factory LoadBalancerDomain.fromMap(Map<String, dynamic> map) {
    return LoadBalancerDomain(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isManaged: (() { final guardedValue = map['isManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sslValidationErrorReasons: (() { final guardedValue = map['sslValidationErrorReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      verificationErrorReasons: (() { final guardedValue = map['verificationErrorReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

