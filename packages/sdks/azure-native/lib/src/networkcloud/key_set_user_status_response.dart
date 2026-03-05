// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeySetUserStatusResponse {
  /// The user name that will be used for access.
  final pulumi.Input<String> azureUserName;
  /// The indicator of whether the user is currently deployed for access.
  final pulumi.Input<String> status;
  /// The additional information describing the current status of this user, if any available.
  final pulumi.Input<String> statusMessage;

  /// Creates a new [KeySetUserStatusResponse].
  /// [azureUserName] The user name that will be used for access.
  /// [status] The indicator of whether the user is currently deployed for access.
  /// [statusMessage] The additional information describing the current status of this user, if any available.
  KeySetUserStatusResponse({
    required this.azureUserName,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureUserName': azureUserName,
      'status': status,
      'statusMessage': statusMessage,
    };
  }

  factory KeySetUserStatusResponse.fromMap(Map<String, dynamic> map) {
    return KeySetUserStatusResponse(
      azureUserName: pulumi.Input.fromValue(map['azureUserName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}

