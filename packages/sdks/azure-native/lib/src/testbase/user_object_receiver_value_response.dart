// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user object receiver value.
class UserObjectReceiverValueResponse {
  /// user object ids.
  final pulumi.Input<List<String>>? userObjectIds;

  /// Creates a new [UserObjectReceiverValueResponse].
  /// [userObjectIds] user object ids.
  UserObjectReceiverValueResponse({
    this.userObjectIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userObjectIds': ?userObjectIds,
    };
  }

  factory UserObjectReceiverValueResponse.fromMap(Map<String, dynamic> map) {
    return UserObjectReceiverValueResponse(
      userObjectIds: map['userObjectIds'] == null ? null : ((map['userObjectIds'] as List).cast<String>()).input(),
    );
  }
}

