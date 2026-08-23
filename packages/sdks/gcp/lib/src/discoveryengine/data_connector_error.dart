// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataConnectorError {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int>? code;
  /// (Output)
  /// A developer-facing error message, which should be in English.
  final pulumi.Input<String>? message;

  /// Creates a new [DataConnectorError].
  /// [code] (Output)
  /// [message] (Output)
  const DataConnectorError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory DataConnectorError.fromMap(Map<String, dynamic> map) {
    return DataConnectorError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
