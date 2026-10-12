// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailSecurityDomainEmailsProcessed {
  final pulumi.Input<String?>? timestamp;
  final pulumi.Input<int?>? totalEmailsProcessed;
  final pulumi.Input<int?>? totalEmailsProcessedPrevious;

  /// Creates a new [EmailSecurityDomainEmailsProcessed].
  /// [timestamp] Optional.
  /// [totalEmailsProcessed] Optional.
  /// [totalEmailsProcessedPrevious] Optional.
  const EmailSecurityDomainEmailsProcessed({
    this.timestamp,
    this.totalEmailsProcessed,
    this.totalEmailsProcessedPrevious,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timestamp': ?timestamp,
      'totalEmailsProcessed': ?totalEmailsProcessed,
      'totalEmailsProcessedPrevious': ?totalEmailsProcessedPrevious,
    };
  }

  factory EmailSecurityDomainEmailsProcessed.fromMap(Map<String, dynamic> map) {
    return EmailSecurityDomainEmailsProcessed(
      timestamp: (() { final guardedValue = map['timestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalEmailsProcessed: (() { final guardedValue = map['totalEmailsProcessed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      totalEmailsProcessedPrevious: (() { final guardedValue = map['totalEmailsProcessedPrevious']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
