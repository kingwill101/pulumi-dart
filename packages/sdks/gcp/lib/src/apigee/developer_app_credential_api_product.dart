// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeveloperAppCredentialApiProduct {
  /// (Output)
  /// Name of the API product.
  final pulumi.Input<String>? apiproduct;
  /// Status of the credential. Valid values include approved or revoked.
  final pulumi.Input<String>? status;

  /// Creates a new [DeveloperAppCredentialApiProduct].
  /// [apiproduct] (Output)
  /// [status] Status of the credential. Valid values include approved or revoked.
  const DeveloperAppCredentialApiProduct({
    this.apiproduct,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiproduct': ?apiproduct,
      'status': ?status,
    };
  }

  factory DeveloperAppCredentialApiProduct.fromMap(Map<String, dynamic> map) {
    return DeveloperAppCredentialApiProduct(
      apiproduct: (() { final guardedValue = map['apiproduct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

