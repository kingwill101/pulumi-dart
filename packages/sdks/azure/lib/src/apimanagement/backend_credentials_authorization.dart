// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendCredentialsAuthorization {
  /// The authentication Parameter value.
  final pulumi.Input<String>? parameter;
  /// The authentication Scheme name.
  final pulumi.Input<String>? scheme;

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
      parameter: map['parameter'] == null ? null : (map['parameter']! as String).input(),
      scheme: map['scheme'] == null ? null : (map['scheme']! as String).input(),
    );
  }
}

