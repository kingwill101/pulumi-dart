// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the additional data of governance assignment - optional
class GovernanceAssignmentAdditionalDataResponse {
  /// Ticket link associated with this governance assignment - for example: https://snow.com
  final pulumi.Input<String?>? ticketLink;
  /// Ticket number associated with this governance assignment
  final pulumi.Input<int?>? ticketNumber;
  /// The ticket status associated with this governance assignment - for example: Active
  final pulumi.Input<String?>? ticketStatus;

  /// Creates a new [GovernanceAssignmentAdditionalDataResponse].
  /// [ticketLink] Ticket link associated with this governance assignment - for example: https://snow.com
  /// [ticketNumber] Ticket number associated with this governance assignment
  /// [ticketStatus] The ticket status associated with this governance assignment - for example: Active
  const GovernanceAssignmentAdditionalDataResponse({
    this.ticketLink,
    this.ticketNumber,
    this.ticketStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ticketLink': ?ticketLink,
      'ticketNumber': ?ticketNumber,
      'ticketStatus': ?ticketStatus,
    };
  }

  factory GovernanceAssignmentAdditionalDataResponse.fromMap(Map<String, dynamic> map) {
    return GovernanceAssignmentAdditionalDataResponse(
      ticketLink: (() { final guardedValue = map['ticketLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ticketNumber: (() { final guardedValue = map['ticketNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ticketStatus: (() { final guardedValue = map['ticketStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
