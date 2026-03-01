// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayTrustedClientCertificate {
  /// The content of the Trusted Client Certificate in use.
  final String data;
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;

  /// Creates a new [GetApplicationGatewayTrustedClientCertificate].
  /// [data] The content of the Trusted Client Certificate in use.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  GetApplicationGatewayTrustedClientCertificate({
    required this.data,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'id': id,
      'name': name,
    };
  }

  factory GetApplicationGatewayTrustedClientCertificate.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayTrustedClientCertificate(
      data: map['data'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

