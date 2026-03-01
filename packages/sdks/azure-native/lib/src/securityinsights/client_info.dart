// ignore_for_file: unused_element, unnecessary_cast


/// Information on the client (user or application) that made some action
class ClientInfo {
  /// The email of the client.
  final String? email;
  /// The name of the client.
  final String? name;
  /// The object id of the client.
  final String? objectId;
  /// The user principal name of the client.
  final String? userPrincipalName;

  /// Creates a new [ClientInfo].
  /// [email] The email of the client.
  /// [name] The name of the client.
  /// [objectId] The object id of the client.
  /// [userPrincipalName] The user principal name of the client.
  ClientInfo({
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

  factory ClientInfo.fromMap(Map<String, dynamic> map) {
    return ClientInfo(
      email: map['email'] == null ? null : map['email'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      userPrincipalName: map['userPrincipalName'] == null ? null : map['userPrincipalName'] as String,
    );
  }
}

