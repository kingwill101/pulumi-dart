// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerDomain {
  /// certificate ID for TLS handshaking
  final pulumi.Input<String> certificateId;
  /// name of certificate required for TLS handshaking
  final pulumi.Input<String> certificateName;
  /// flag indicating if domain is managed by DigitalOcean
  final pulumi.Input<bool> isManaged;
  /// The name of load balancer.
  final pulumi.Input<String> name;
  /// list of domain SSL validation errors
  final pulumi.Input<List<String>> sslValidationErrorReasons;
  /// list of domain verification errors
  final pulumi.Input<List<String>> verificationErrorReasons;

  /// Creates a new [GetLoadBalancerDomain].
  /// [certificateId] certificate ID for TLS handshaking
  /// [certificateName] name of certificate required for TLS handshaking
  /// [isManaged] flag indicating if domain is managed by DigitalOcean
  /// [name] The name of load balancer.
  /// [sslValidationErrorReasons] list of domain SSL validation errors
  /// [verificationErrorReasons] list of domain verification errors
  GetLoadBalancerDomain({
    required this.certificateId,
    required this.certificateName,
    required this.isManaged,
    required this.name,
    required this.sslValidationErrorReasons,
    required this.verificationErrorReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'certificateName': certificateName,
      'isManaged': isManaged,
      'name': name,
      'sslValidationErrorReasons': sslValidationErrorReasons,
      'verificationErrorReasons': verificationErrorReasons,
    };
  }

  factory GetLoadBalancerDomain.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerDomain(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      isManaged: pulumi.Input.fromValue(map['isManaged'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      sslValidationErrorReasons: pulumi.Input.fromValue((map['sslValidationErrorReasons'] as List).cast<String>()),
      verificationErrorReasons: pulumi.Input.fromValue((map['verificationErrorReasons'] as List).cast<String>()),
    );
  }
}

