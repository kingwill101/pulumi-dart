// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Server endpoint recall error object
class ServerEndpointRecallErrorResponse {
  /// Count of occurences of the error
  final pulumi.Input<double> count;
  /// Error code (HResult)
  final pulumi.Input<int> errorCode;

  /// Creates a new [ServerEndpointRecallErrorResponse].
  /// [count] Count of occurences of the error
  /// [errorCode] Error code (HResult)
  const ServerEndpointRecallErrorResponse({
    required this.count,
    required this.errorCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'errorCode': errorCode,
    };
  }

  factory ServerEndpointRecallErrorResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointRecallErrorResponse(
      count: pulumi.Input.fromValue((map['count'] as num).toDouble()),
      errorCode: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['errorCode'])),
    );
  }
}
