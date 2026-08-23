// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_status_code_status_class.dart';

/// A status to accept. Either a status code class like "2xx", or an integer status code like "200".
class ResponseStatusCode {
  /// A class of status codes to accept.
  final pulumi.Input<ResponseStatusCodeStatusClass>? statusClass;
  /// A status code to accept.
  final pulumi.Input<int>? statusValue;

  /// Creates a new [ResponseStatusCode].
  /// [statusClass] A class of status codes to accept.
  /// [statusValue] A status code to accept.
  const ResponseStatusCode({
    this.statusClass,
    this.statusValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusClass': ?pulumi.Input.mapOptionalInputValue<ResponseStatusCodeStatusClass, String>(statusClass, (value) => value.wireValue),
      'statusValue': ?statusValue,
    };
  }

  factory ResponseStatusCode.fromMap(Map<String, dynamic> map) {
    return ResponseStatusCode(
      statusClass: (() { final guardedValue = map['statusClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponseStatusCodeStatusClass.fromValue(guardedValue as String)); })(),
      statusValue: (() { final guardedValue = map['statusValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
