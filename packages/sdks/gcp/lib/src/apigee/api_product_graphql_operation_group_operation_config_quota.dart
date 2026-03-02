// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProductGraphqlOperationGroupOperationConfigQuota {
  /// Required. Time interval over which the number of request messages is calculated.
  final pulumi.Input<String>? interval;
  /// Required. Upper limit allowed for the time interval and time unit specified. Requests exceeding this limit will be rejected.
  final pulumi.Input<String>? limit;
  /// Time unit defined for the interval. Valid values include second, minute, hour, day, month or year. If limit and interval are valid, the default value is hour; otherwise, the default is null.
  final pulumi.Input<String>? timeUnit;

  /// Creates a new [ApiProductGraphqlOperationGroupOperationConfigQuota].
  /// [interval] Required. Time interval over which the number of request messages is calculated.
  /// [limit] Required. Upper limit allowed for the time interval and time unit specified. Requests exceeding this limit will be rejected.
  /// [timeUnit] Time unit defined for the interval. Valid values include second, minute, hour, day, month or year. If limit and interval are valid, the default value is hour; otherwise, the default is null.
  ApiProductGraphqlOperationGroupOperationConfigQuota({
    this.interval,
    this.limit,
    this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'limit': ?limit,
      'timeUnit': ?timeUnit,
    };
  }

  factory ApiProductGraphqlOperationGroupOperationConfigQuota.fromMap(Map<String, dynamic> map) {
    return ApiProductGraphqlOperationGroupOperationConfigQuota(
      interval: map['interval'] == null ? null : (map['interval']! as String).input(),
      limit: map['limit'] == null ? null : (map['limit']! as String).input(),
      timeUnit: map['timeUnit'] == null ? null : (map['timeUnit']! as String).input(),
    );
  }
}

