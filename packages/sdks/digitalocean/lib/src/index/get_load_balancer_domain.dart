// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerDomain {
  /// certificate ID for TLS handshaking
  final String certificateId;
  /// name of certificate required for TLS handshaking
  final String certificateName;
  /// flag indicating if domain is managed by DigitalOcean
  final bool isManaged;
  /// The name of load balancer.
  final String name;
  /// list of domain SSL validation errors
  final List<String> sslValidationErrorReasons;
  /// list of domain verification errors
  final List<String> verificationErrorReasons;

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
      certificateId: map['certificateId'] as String,
      certificateName: map['certificateName'] as String,
      isManaged: map['isManaged'] as bool,
      name: map['name'] as String,
      sslValidationErrorReasons: (map['sslValidationErrorReasons'] as List).cast<String>(),
      verificationErrorReasons: (map['verificationErrorReasons'] as List).cast<String>(),
    );
  }
}

