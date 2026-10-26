// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityDomainsResultEmailsProcessed {
  final pulumi.Input<String> timestamp;
  final pulumi.Input<int> totalEmailsProcessed;
  final pulumi.Input<int> totalEmailsProcessedPrevious;

  /// Creates a new [GetEmailSecurityDomainsResultEmailsProcessed].
  /// [timestamp] Required.
  /// [totalEmailsProcessed] Required.
  /// [totalEmailsProcessedPrevious] Required.
  const GetEmailSecurityDomainsResultEmailsProcessed({
    required this.timestamp,
    required this.totalEmailsProcessed,
    required this.totalEmailsProcessedPrevious,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timestamp': timestamp,
      'totalEmailsProcessed': totalEmailsProcessed,
      'totalEmailsProcessedPrevious': totalEmailsProcessedPrevious,
    };
  }

  factory GetEmailSecurityDomainsResultEmailsProcessed.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityDomainsResultEmailsProcessed(
      timestamp: pulumi.Input.fromValue(map['timestamp'] as String),
      totalEmailsProcessed: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalEmailsProcessed'])),
      totalEmailsProcessedPrevious: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalEmailsProcessedPrevious'])),
    );
  }
}
