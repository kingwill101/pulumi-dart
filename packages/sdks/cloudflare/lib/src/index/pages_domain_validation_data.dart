// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesDomainValidationData {
  final pulumi.Input<String?>? errorMessage;
  /// Available values: "http", "txt".
  final pulumi.Input<String?>? method;
  /// Available values: "initializing", "pending", "active", "deactivated", "error".
  final pulumi.Input<String?>? status;
  final pulumi.Input<String?>? txtName;
  final pulumi.Input<String?>? txtValue;

  /// Creates a new [PagesDomainValidationData].
  /// [errorMessage] Optional.
  /// [method] Available values: "http", "txt".
  /// [status] Available values: "initializing", "pending", "active", "deactivated", "error".
  /// [txtName] Optional.
  /// [txtValue] Optional.
  const PagesDomainValidationData({
    this.errorMessage,
    this.method,
    this.status,
    this.txtName,
    this.txtValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'method': ?method,
      'status': ?status,
      'txtName': ?txtName,
      'txtValue': ?txtValue,
    };
  }

  factory PagesDomainValidationData.fromMap(Map<String, dynamic> map) {
    return PagesDomainValidationData(
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      txtName: (() { final guardedValue = map['txtName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      txtValue: (() { final guardedValue = map['txtValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
