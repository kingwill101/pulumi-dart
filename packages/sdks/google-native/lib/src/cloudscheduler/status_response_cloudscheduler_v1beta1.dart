// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).
class StatusResponseCloudschedulerV1beta1 {
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int> code;
  /// A list of messages that carry the error details. There is a common set of message types for APIs to use.
  final pulumi.Input<List<Map<String, String>>> details;
  /// A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  final pulumi.Input<String> message;

  /// Creates a new [StatusResponseCloudschedulerV1beta1].
  /// [code] The status code, which should be an enum value of google.rpc.Code.
  /// [details] A list of messages that carry the error details. There is a common set of message types for APIs to use.
  /// [message] A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  StatusResponseCloudschedulerV1beta1({
    required this.code,
    required this.details,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': details,
      'message': message,
    };
  }

  factory StatusResponseCloudschedulerV1beta1.fromMap(Map<String, dynamic> map) {
    return StatusResponseCloudschedulerV1beta1(
      code: (map['code'] as int).input(),
      details: ((map['details'] as List).cast<Map<String, String>>()).input(),
      message: (map['message'] as String).input(),
    );
  }
}

