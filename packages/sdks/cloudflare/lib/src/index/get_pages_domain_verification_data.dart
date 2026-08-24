// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesDomainVerificationData {
  final pulumi.Input<String> errorMessage;
  /// Available values: "pending", "active", "deactivated", "blocked", "error".
  final pulumi.Input<String> status;

  /// Creates a new [GetPagesDomainVerificationData].
  /// [errorMessage] Required.
  /// [status] Available values: "pending", "active", "deactivated", "blocked", "error".
  const GetPagesDomainVerificationData({
    required this.errorMessage,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': errorMessage,
      'status': status,
    };
  }

  factory GetPagesDomainVerificationData.fromMap(Map<String, dynamic> map) {
    return GetPagesDomainVerificationData(
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
