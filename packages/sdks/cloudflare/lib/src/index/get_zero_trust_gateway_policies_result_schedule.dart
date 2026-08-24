// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultSchedule {
  /// Specify the time intervals when the rule is active on Fridays, in the increasing order from 00:00-24:00.  If this parameter omitted, the rule is deactivated on Fridays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  final pulumi.Input<String> fri;
  /// Specify the time intervals when the rule is active on Mondays, in the increasing order from 00:00-24:00(capped at maximum of 6 time splits). If this parameter omitted, the rule is deactivated on Mondays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  final pulumi.Input<String> mon;
  /// Specify the time intervals when the rule is active on Saturdays, in the increasing order from 00:00-24:00.  If this parameter omitted, the rule is deactivated on Saturdays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  final pulumi.Input<String> sat;
  /// Specify the time intervals when the rule is active on Sundays, in the increasing order from 00:00-24:00. If this parameter omitted, the rule is deactivated on Sundays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  final pulumi.Input<String> sun;
  /// Specify the time intervals when the rule is active on Thursdays, in the increasing order from 00:00-24:00. If this parameter omitted, the rule is deactivated on Thursdays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  final pulumi.Input<String> thu;
  /// Specify the time zone for rule evaluation. When a [valid time zone city name](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List) is provided, Gateway always uses the current time for that time zone. When this parameter is omitted, Gateway uses the time zone determined from the user's IP address. Colo time zone is used when the user's IP address does not resolve to a location.
  final pulumi.Input<String> timeZone;
  /// Specify the time intervals when the rule is active on Tuesdays, in the increasing order from 00:00-24:00. If this parameter omitted, the rule is deactivated on Tuesdays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  final pulumi.Input<String> tue;
  /// Specify the time intervals when the rule is active on Wednesdays, in the increasing order from 00:00-24:00. If this parameter omitted, the rule is deactivated on Wednesdays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  final pulumi.Input<String> wed;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultSchedule].
  /// [fri] Specify the time intervals when the rule is active on Fridays, in the increasing order from 00:00-24:00.  If this parameter omitted, the rule is deactivated on Fridays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  /// [mon] Specify the time intervals when the rule is active on Mondays, in the increasing order from 00:00-24:00(capped at maximum of 6 time splits). If this parameter omitted, the rule is deactivated on Mondays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  /// [sat] Specify the time intervals when the rule is active on Saturdays, in the increasing order from 00:00-24:00.  If this parameter omitted, the rule is deactivated on Saturdays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  /// [sun] Specify the time intervals when the rule is active on Sundays, in the increasing order from 00:00-24:00. If this parameter omitted, the rule is deactivated on Sundays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  /// [thu] Specify the time intervals when the rule is active on Thursdays, in the increasing order from 00:00-24:00. If this parameter omitted, the rule is deactivated on Thursdays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  /// [timeZone] Specify the time zone for rule evaluation. When a [valid time zone city name](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List) is provided, Gateway always uses the current time for that time zone. When this parameter is omitted, Gateway uses the time zone determined from the user's IP address. Colo time zone is used when the user's IP address does not resolve to a location.
  /// [tue] Specify the time intervals when the rule is active on Tuesdays, in the increasing order from 00:00-24:00. If this parameter omitted, the rule is deactivated on Tuesdays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  /// [wed] Specify the time intervals when the rule is active on Wednesdays, in the increasing order from 00:00-24:00. If this parameter omitted, the rule is deactivated on Wednesdays. API returns a formatted version of this string, which may cause Terraform drift if a unformatted value is used.
  const GetZeroTrustGatewayPoliciesResultSchedule({
    required this.fri,
    required this.mon,
    required this.sat,
    required this.sun,
    required this.thu,
    required this.timeZone,
    required this.tue,
    required this.wed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fri': fri,
      'mon': mon,
      'sat': sat,
      'sun': sun,
      'thu': thu,
      'timeZone': timeZone,
      'tue': tue,
      'wed': wed,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultSchedule.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultSchedule(
      fri: pulumi.Input.fromValue(map['fri'] as String),
      mon: pulumi.Input.fromValue(map['mon'] as String),
      sat: pulumi.Input.fromValue(map['sat'] as String),
      sun: pulumi.Input.fromValue(map['sun'] as String),
      thu: pulumi.Input.fromValue(map['thu'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      tue: pulumi.Input.fromValue(map['tue'] as String),
      wed: pulumi.Input.fromValue(map['wed'] as String),
    );
  }
}
