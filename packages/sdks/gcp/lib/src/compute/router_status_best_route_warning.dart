// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_status_best_route_warning_data.dart';

class RouterStatusBestRouteWarning {
  /// A warning code, if applicable. For example, Compute Engine returns
  /// NO_RESULTS_ON_PAGE if there are no results in the response.
  final pulumi.Input<String> code;
  /// Metadata about this warning in key: value format. For example:
  /// "data": [  {  "key": "scope",  "value": "zones/us-east1-d"  }
  final pulumi.Input<List<RouterStatusBestRouteWarningData>> datas;
  /// A human-readable description of the warning code.
  final pulumi.Input<String> message;

  /// Creates a new [RouterStatusBestRouteWarning].
  /// [code] A warning code, if applicable. For example, Compute Engine returns
  /// [datas] Metadata about this warning in key: value format. For example:
  /// [message] A human-readable description of the warning code.
  const RouterStatusBestRouteWarning({
    required this.code,
    required this.datas,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'datas': pulumi.Input.mapInputValue<List<RouterStatusBestRouteWarningData>, List<Map<String, dynamic>>>(datas, (value) => pulumi.Input.encodeList<RouterStatusBestRouteWarningData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
    };
  }

  factory RouterStatusBestRouteWarning.fromMap(Map<String, dynamic> map) {
    return RouterStatusBestRouteWarning(
      code: pulumi.Input.fromValue(map['code'] as String),
      datas: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterStatusBestRouteWarningData>(map['datas']!, (value) => RouterStatusBestRouteWarningData.fromMap((value as Map).cast<String, dynamic>()))),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

