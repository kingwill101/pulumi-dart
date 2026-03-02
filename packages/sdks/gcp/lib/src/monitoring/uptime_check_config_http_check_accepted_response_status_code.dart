// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UptimeCheckConfigHttpCheckAcceptedResponseStatusCode {
  /// A class of status codes to accept.
  /// Possible values are: `STATUS_CLASS_1XX`, `STATUS_CLASS_2XX`, `STATUS_CLASS_3XX`, `STATUS_CLASS_4XX`, `STATUS_CLASS_5XX`, `STATUS_CLASS_ANY`.
  final pulumi.Input<String>? statusClass;
  /// A status code to accept.
  final pulumi.Input<int>? statusValue;

  /// Creates a new [UptimeCheckConfigHttpCheckAcceptedResponseStatusCode].
  /// [statusClass] A class of status codes to accept.
  /// [statusValue] A status code to accept.
  UptimeCheckConfigHttpCheckAcceptedResponseStatusCode({
    this.statusClass,
    this.statusValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusClass': ?statusClass,
      'statusValue': ?statusValue,
    };
  }

  factory UptimeCheckConfigHttpCheckAcceptedResponseStatusCode.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheckAcceptedResponseStatusCode(
      statusClass: map['statusClass'] == null ? null : (map['statusClass'] as String).input(),
      statusValue: map['statusValue'] == null ? null : (map['statusValue'] as int).input(),
    );
  }
}

