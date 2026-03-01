// ignore_for_file: unused_element, unnecessary_cast


class BackendCredentialsAuthorization {
  /// The authentication Parameter value.
  final String? parameter;
  /// The authentication Scheme name.
  final String? scheme;

  /// Creates a new [BackendCredentialsAuthorization].
  /// [parameter] The authentication Parameter value.
  /// [scheme] The authentication Scheme name.
  BackendCredentialsAuthorization({
    this.parameter,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': ?parameter,
      'scheme': ?scheme,
    };
  }

  factory BackendCredentialsAuthorization.fromMap(Map<String, dynamic> map) {
    return BackendCredentialsAuthorization(
      parameter: map['parameter'] == null ? null : map['parameter'] as String,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}

