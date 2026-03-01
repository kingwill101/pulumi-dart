// ignore_for_file: unused_element, unnecessary_cast


class KeySetUserStatusResponse {
  /// The user name that will be used for access.
  final String azureUserName;
  /// The indicator of whether the user is currently deployed for access.
  final String status;
  /// The additional information describing the current status of this user, if any available.
  final String statusMessage;

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
      azureUserName: map['azureUserName'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}

