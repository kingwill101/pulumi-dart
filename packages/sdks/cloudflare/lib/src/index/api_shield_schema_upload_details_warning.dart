// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiShieldSchemaUploadDetailsWarning {
  /// Code that identifies the event that occurred.
  final pulumi.Input<int?>? code;
  /// JSONPath location(s) in the schema where these events were encountered.  See [https://goessner.net/articles/JsonPath/](https://goessner.net/articles/JsonPath/) for JSONPath specification.
  final pulumi.Input<List<String>?>? locations;
  /// Diagnostic message that describes the event.
  final pulumi.Input<String?>? message;

  /// Creates a new [ApiShieldSchemaUploadDetailsWarning].
  /// [code] Code that identifies the event that occurred.
  /// [locations] JSONPath location(s) in the schema where these events were encountered.  See [https://goessner.net/articles/JsonPath/](https://goessner.net/articles/JsonPath/) for JSONPath specification.
  /// [message] Diagnostic message that describes the event.
  const ApiShieldSchemaUploadDetailsWarning({
    this.code,
    this.locations,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'locations': ?locations,
      'message': ?message,
    };
  }

  factory ApiShieldSchemaUploadDetailsWarning.fromMap(Map<String, dynamic> map) {
    return ApiShieldSchemaUploadDetailsWarning(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
