// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesDomainsResultValidationData {
  final pulumi.Input<String> errorMessage;
  /// Available values: "http", "txt".
  final pulumi.Input<String> method;
  /// Available values: "initializing", "pending", "active", "deactivated", "error".
  final pulumi.Input<String> status;
  final pulumi.Input<String> txtName;
  final pulumi.Input<String> txtValue;

  /// Creates a new [GetPagesDomainsResultValidationData].
  /// [errorMessage] Required.
  /// [method] Available values: "http", "txt".
  /// [status] Available values: "initializing", "pending", "active", "deactivated", "error".
  /// [txtName] Required.
  /// [txtValue] Required.
  const GetPagesDomainsResultValidationData({
    required this.errorMessage,
    required this.method,
    required this.status,
    required this.txtName,
    required this.txtValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': errorMessage,
      'method': method,
      'status': status,
      'txtName': txtName,
      'txtValue': txtValue,
    };
  }

  factory GetPagesDomainsResultValidationData.fromMap(Map<String, dynamic> map) {
    return GetPagesDomainsResultValidationData(
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      method: pulumi.Input.fromValue(map['method'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      txtName: pulumi.Input.fromValue(map['txtName'] as String),
      txtValue: pulumi.Input.fromValue(map['txtValue'] as String),
    );
  }
}
