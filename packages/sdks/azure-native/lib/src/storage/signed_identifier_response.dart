// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_response.dart';

class SignedIdentifierResponse {
  /// Access policy
  final pulumi.Input<AccessPolicyResponse>? accessPolicy;
  /// An unique identifier of the stored access policy.
  final pulumi.Input<String>? id;

  /// Creates a new [SignedIdentifierResponse].
  /// [accessPolicy] Access policy
  /// [id] An unique identifier of the stored access policy.
  SignedIdentifierResponse({
    this.accessPolicy,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?pulumi.Input.mapOptionalInputValue<AccessPolicyResponse, Map<String, dynamic>>(accessPolicy, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory SignedIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return SignedIdentifierResponse(
      accessPolicy: (() { final guardedValue = map['accessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

