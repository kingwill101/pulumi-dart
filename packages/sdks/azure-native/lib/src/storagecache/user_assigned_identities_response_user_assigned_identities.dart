// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAssignedIdentitiesResponseUserAssignedIdentities {
  /// The client ID of the user-assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal ID of the user-assigned identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [UserAssignedIdentitiesResponseUserAssignedIdentities].
  /// [clientId] The client ID of the user-assigned identity.
  /// [principalId] The principal ID of the user-assigned identity.
  UserAssignedIdentitiesResponseUserAssignedIdentities({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentitiesResponseUserAssignedIdentities.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentitiesResponseUserAssignedIdentities(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
    );
  }
}

