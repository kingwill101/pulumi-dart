// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupImageRegistryCredential {
  /// The password with which to connect to the registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;
  /// The address to use to connect to the registry without protocol ("https"/"http"). For example: "myacr.acr.io". Changing this forces a new resource to be created.
  final pulumi.Input<String> server;
  /// The identity ID for the private registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? userAssignedIdentityId;
  /// The username with which to connect to the registry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? username;

  /// Creates a new [GroupImageRegistryCredential].
  /// [password] The password with which to connect to the registry. Changing this forces a new resource to be created.
  /// [server] The address to use to connect to the registry without protocol ("https"/"http"). For example: "myacr.acr.io". Changing this forces a new resource to be created.
  /// [userAssignedIdentityId] The identity ID for the private registry. Changing this forces a new resource to be created.
  /// [username] The username with which to connect to the registry. Changing this forces a new resource to be created.
  GroupImageRegistryCredential({
    this.password,
    required this.server,
    this.userAssignedIdentityId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'server': server,
      'userAssignedIdentityId': ?userAssignedIdentityId,
      'username': ?username,
    };
  }

  factory GroupImageRegistryCredential.fromMap(Map<String, dynamic> map) {
    return GroupImageRegistryCredential(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      server: (map['server'] as String).input(),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : (map['userAssignedIdentityId']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

