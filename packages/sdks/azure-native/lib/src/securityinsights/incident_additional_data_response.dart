// ignore_for_file: unused_element, unnecessary_cast


/// Incident additional data property bag.
class IncidentAdditionalDataResponse {
  /// List of product names of alerts in the incident
  final List<String> alertProductNames;
  /// The number of alerts in the incident
  final int alertsCount;
  /// The number of bookmarks in the incident
  final int bookmarksCount;
  /// The number of comments in the incident
  final int commentsCount;
  /// The provider incident url to the incident in Microsoft 365 Defender portal
  final String providerIncidentUrl;
  /// The tactics associated with incident
  final List<String> tactics;

  /// Creates a new [IncidentAdditionalDataResponse].
  /// [alertProductNames] List of product names of alerts in the incident
  /// [alertsCount] The number of alerts in the incident
  /// [bookmarksCount] The number of bookmarks in the incident
  /// [commentsCount] The number of comments in the incident
  /// [providerIncidentUrl] The provider incident url to the incident in Microsoft 365 Defender portal
  /// [tactics] The tactics associated with incident
  IncidentAdditionalDataResponse({
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
      alertProductNames: (map['alertProductNames'] as List).cast<String>(),
      alertsCount: map['alertsCount'] as int,
      bookmarksCount: map['bookmarksCount'] as int,
      commentsCount: map['commentsCount'] as int,
      providerIncidentUrl: map['providerIncidentUrl'] as String,
      tactics: (map['tactics'] as List).cast<String>(),
    );
  }
}

