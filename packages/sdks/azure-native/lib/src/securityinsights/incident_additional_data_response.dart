// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Incident additional data property bag.
class IncidentAdditionalDataResponse {
  /// List of product names of alerts in the incident
  final pulumi.Input<List<String>> alertProductNames;
  /// The number of alerts in the incident
  final pulumi.Input<int> alertsCount;
  /// The number of bookmarks in the incident
  final pulumi.Input<int> bookmarksCount;
  /// The number of comments in the incident
  final pulumi.Input<int> commentsCount;
  /// The provider incident url to the incident in Microsoft 365 Defender portal
  final pulumi.Input<String> providerIncidentUrl;
  /// The tactics associated with incident
  final pulumi.Input<List<String>> tactics;

  /// Creates a new [IncidentAdditionalDataResponse].
  /// [alertProductNames] List of product names of alerts in the incident
  /// [alertsCount] The number of alerts in the incident
  /// [bookmarksCount] The number of bookmarks in the incident
  /// [commentsCount] The number of comments in the incident
  /// [providerIncidentUrl] The provider incident url to the incident in Microsoft 365 Defender portal
  /// [tactics] The tactics associated with incident
  const IncidentAdditionalDataResponse({
    required this.alertProductNames,
    required this.alertsCount,
    required this.bookmarksCount,
    required this.commentsCount,
    required this.providerIncidentUrl,
    required this.tactics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertProductNames': alertProductNames,
      'alertsCount': alertsCount,
      'bookmarksCount': bookmarksCount,
      'commentsCount': commentsCount,
      'providerIncidentUrl': providerIncidentUrl,
      'tactics': tactics,
    };
  }

  factory IncidentAdditionalDataResponse.fromMap(Map<String, dynamic> map) {
    return IncidentAdditionalDataResponse(
      alertProductNames: pulumi.Input.fromValue((map['alertProductNames'] as List).cast<String>()),
      alertsCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['alertsCount'])),
      bookmarksCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['bookmarksCount'])),
      commentsCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['commentsCount'])),
      providerIncidentUrl: pulumi.Input.fromValue(map['providerIncidentUrl'] as String),
      tactics: pulumi.Input.fromValue((map['tactics'] as List).cast<String>()),
    );
  }
}
