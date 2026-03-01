// ignore_for_file: unused_element, unnecessary_cast


/// The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).
class GoogleRpcStatusResponseDialogflowV3 {
  /// The status code, which should be an enum value of google.rpc.Code.
  final int code;
  /// A list of messages that carry the error details. There is a common set of message types for APIs to use.
  final List<Map<String, String>> details;
  /// A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  final String message;

  /// Creates a new [GoogleRpcStatusResponseDialogflowV3].
  /// [code] The status code, which should be an enum value of google.rpc.Code.
  /// [details] A list of messages that carry the error details. There is a common set of message types for APIs to use.
  /// [message] A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  GoogleRpcStatusResponseDialogflowV3({
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

  factory GoogleRpcStatusResponseDialogflowV3.fromMap(Map<String, dynamic> map) {
    return GoogleRpcStatusResponseDialogflowV3(
      code: map['code'] as int,
      details: (map['details'] as List).cast<Map<String, String>>(),
      message: map['message'] as String,
    );
  }
}

