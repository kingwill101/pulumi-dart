// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information on the client (user or application) that made some action
class ClientInfoResponse {
  /// The email of the client.
  final pulumi.Input<String>? email;

  /// The name of the client.
  final pulumi.Input<String>? name;

  /// The object id of the client.
  final pulumi.Input<String>? objectId;

  /// The user principal name of the client.
  final pulumi.Input<String>? userPrincipalName;

  /// Creates a new [ClientInfoResponse].
  /// [email] The email of the client.
  /// [name] The name of the client.
  /// [objectId] The object id of the client.
  /// [userPrincipalName] The user principal name of the client.
  ClientInfoResponse({
    this.email,
    this.name,
    this.objectId,
    this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'name': ?name,
      'objectId': ?objectId,
      'userPrincipalName': ?userPrincipalName,
    };
  }

  factory ClientInfoResponse.fromMap(Map<String, dynamic> map) {
    return ClientInfoResponse(
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      objectId: (() {
        final guardedValue = map['objectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPrincipalName: (() {
        final guardedValue = map['userPrincipalName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
