// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_status_best_routes_for_router_warning_data.dart';

class RouterStatusBestRoutesForRouterWarning {
  /// A warning code, if applicable. For example, Compute Engine returns
  /// NO_RESULTS_ON_PAGE if there are no results in the response.
  final pulumi.Input<String> code;
  /// Metadata about this warning in key: value format. For example:
  /// "data": [  {  "key": "scope",  "value": "zones/us-east1-d"  }
  final pulumi.Input<List<RouterStatusBestRoutesForRouterWarningData>> datas;
  /// A human-readable description of the warning code.
  final pulumi.Input<String> message;

  /// Creates a new [RouterStatusBestRoutesForRouterWarning].
  /// [code] A warning code, if applicable. For example, Compute Engine returns
  /// [datas] Metadata about this warning in key: value format. For example:
  /// [message] A human-readable description of the warning code.
  RouterStatusBestRoutesForRouterWarning({
    required this.code,
    required this.datas,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'datas': pulumi.Input.mapInputValue<List<RouterStatusBestRoutesForRouterWarningData>, List<Map<String, dynamic>>>(datas, (value) => pulumi.Input.encodeList<RouterStatusBestRoutesForRouterWarningData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
    };
  }

  factory RouterStatusBestRoutesForRouterWarning.fromMap(Map<String, dynamic> map) {
    return RouterStatusBestRoutesForRouterWarning(
      code: (map['code'] as String).input(),
      datas: (pulumi.Input.decodeList<RouterStatusBestRoutesForRouterWarningData>(map['datas'], (value) => RouterStatusBestRoutesForRouterWarningData.fromMap((value as Map).cast<String, dynamic>()))).input(),
      message: (map['message'] as String).input(),
    );
  }
}

