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
  LoadBalancerDomain({
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
      certificateId: map['certificateId'] == null ? null : (map['certificateId']! as String).input(),
      certificateName: map['certificateName'] == null ? null : (map['certificateName']! as String).input(),
      isManaged: map['isManaged'] == null ? null : (map['isManaged']! as bool).input(),
      name: (map['name'] as String).input(),
      sslValidationErrorReasons: map['sslValidationErrorReasons'] == null ? null : ((map['sslValidationErrorReasons']! as List).cast<String>()).input(),
      verificationErrorReasons: map['verificationErrorReasons'] == null ? null : ((map['verificationErrorReasons']! as List).cast<String>()).input(),
    );
  }
}

