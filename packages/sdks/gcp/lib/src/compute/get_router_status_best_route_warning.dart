// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_status_best_route_warning_data.dart';

class GetRouterStatusBestRouteWarning {
  /// A warning code, if applicable. For example, Compute Engine returns
  /// NO_RESULTS_ON_PAGE if there are no results in the response.
  final pulumi.Input<String> code;
  /// Metadata about this warning in key: value format. For example:
  /// "data": [  {  "key": "scope",  "value": "zones/us-east1-d"  }
  final pulumi.Input<List<GetRouterStatusBestRouteWarningData>> datas;
  /// A human-readable description of the warning code.
  final pulumi.Input<String> message;

  /// Creates a new [GetRouterStatusBestRouteWarning].
  /// [code] A warning code, if applicable. For example, Compute Engine returns
  /// [datas] Metadata about this warning in key: value format. For example:
  /// [message] A human-readable description of the warning code.
  GetRouterStatusBestRouteWarning({
    required this.code,
    required this.datas,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'datas': pulumi.Input.mapInputValue<List<GetRouterStatusBestRouteWarningData>, List<Map<String, dynamic>>>(datas, (value) => pulumi.Input.encodeList<GetRouterStatusBestRouteWarningData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
    };
  }

  factory GetRouterStatusBestRouteWarning.fromMap(Map<String, dynamic> map) {
    return GetRouterStatusBestRouteWarning(
      code: (map['code'] as String).input(),
      datas: (pulumi.Input.decodeList<GetRouterStatusBestRouteWarningData>(map['datas'], (value) => GetRouterStatusBestRouteWarningData.fromMap((value as Map).cast<String, dynamic>()))).input(),
      message: (map['message'] as String).input(),
    );
  }
}

