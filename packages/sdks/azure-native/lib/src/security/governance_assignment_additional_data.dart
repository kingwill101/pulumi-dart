// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the additional data of governance assignment - optional
class GovernanceAssignmentAdditionalData {
  /// Ticket link associated with this governance assignment - for example: https://snow.com
  final pulumi.Input<String>? ticketLink;
  /// Ticket number associated with this governance assignment
  final pulumi.Input<int>? ticketNumber;
  /// The ticket status associated with this governance assignment - for example: Active
  final pulumi.Input<String>? ticketStatus;

  /// Creates a new [GovernanceAssignmentAdditionalData].
  /// [ticketLink] Ticket link associated with this governance assignment - for example: https://snow.com
  /// [ticketNumber] Ticket number associated with this governance assignment
  /// [ticketStatus] The ticket status associated with this governance assignment - for example: Active
  GovernanceAssignmentAdditionalData({
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

  factory GovernanceAssignmentAdditionalData.fromMap(Map<String, dynamic> map) {
    return GovernanceAssignmentAdditionalData(
      ticketLink: map['ticketLink'] == null ? null : (map['ticketLink'] as String).input(),
      ticketNumber: map['ticketNumber'] == null ? null : (map['ticketNumber'] as int).input(),
      ticketStatus: map['ticketStatus'] == null ? null : (map['ticketStatus'] as String).input(),
    );
  }
}

