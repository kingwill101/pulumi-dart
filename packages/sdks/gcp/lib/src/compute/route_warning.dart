// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_warning_data.dart';

class RouteWarning {
  /// (Output)
  /// A warning code, if applicable. For example, Compute Engine returns
  /// NO_RESULTS_ON_PAGE if there are no results in the response.
  final pulumi.Input<String>? code;
  /// (Output)
  /// Metadata about this warning in key: value format. For example:
  /// "data":   {  "key": "scope",  "value": "zones/us-east1-d"  }
  /// Structure is [documented below.
  final pulumi.Input<List<RouteWarningData>>? datas;
  /// (Output)
  /// A human-readable description of the warning code.
  final pulumi.Input<String>? message;

  /// Creates a new [RouteWarning].
  /// [code] (Output)
  /// [datas] (Output)
  /// [message] (Output)
  const RouteWarning({
    this.code,
    this.datas,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'datas': ?pulumi.Input.mapOptionalInputValue<List<RouteWarningData>, List<Map<String, dynamic>>>(datas, (value) => pulumi.Input.encodeList<RouteWarningData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': ?message,
    };
  }

  factory RouteWarning.fromMap(Map<String, dynamic> map) {
    return RouteWarning(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datas: (() { final guardedValue = map['datas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteWarningData>(guardedValue, (value) => RouteWarningData.fromMap((value as Map).cast<String, dynamic>()))); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

