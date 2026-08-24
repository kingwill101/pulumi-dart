// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesDomainsResultVerificationData {
  final pulumi.Input<String> errorMessage;
  /// Available values: "pending", "active", "deactivated", "blocked", "error".
  final pulumi.Input<String> status;

  /// Creates a new [GetPagesDomainsResultVerificationData].
  /// [errorMessage] Required.
  /// [status] Available values: "pending", "active", "deactivated", "blocked", "error".
  const GetPagesDomainsResultVerificationData({
    required this.errorMessage,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': errorMessage,
      'status': status,
    };
  }

  factory GetPagesDomainsResultVerificationData.fromMap(Map<String, dynamic> map) {
    return GetPagesDomainsResultVerificationData(
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
