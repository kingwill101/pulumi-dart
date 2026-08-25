// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_config_error_detail.dart';

class InsightsConfigError {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int?>? code;
  /// (Output)
  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  /// Structure is documented below.
  final pulumi.Input<List<InsightsConfigErrorDetail>?>? details;
  /// (Output)
  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  final pulumi.Input<String?>? message;

  /// Creates a new [InsightsConfigError].
  /// [code] (Output)
  /// [details] (Output)
  /// [message] (Output)
  const InsightsConfigError({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<InsightsConfigErrorDetail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<InsightsConfigErrorDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': ?message,
    };
  }

  factory InsightsConfigError.fromMap(Map<String, dynamic> map) {
    return InsightsConfigError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InsightsConfigErrorDetail>(guardedValue, (value) => InsightsConfigErrorDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
