// ignore_for_file: unused_element, unnecessary_cast


/// Describes related incident information for the bookmark
class IncidentInfo {
  /// Incident Id
  final String? incidentId;
  /// Relation Name
  final String? relationName;
  /// The severity of the incident
  final String? severity;
  /// The title of the incident
  final String? title;

  /// Creates a new [IncidentInfo].
  /// [incidentId] Incident Id
  /// [relationName] Relation Name
  /// [severity] The severity of the incident
  /// [title] The title of the incident
  IncidentInfo({
    this.incidentId,
    this.relationName,
    this.severity,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentId': ?incidentId,
      'relationName': ?relationName,
      'severity': ?severity,
      'title': ?title,
    };
  }

  factory IncidentInfo.fromMap(Map<String, dynamic> map) {
    return IncidentInfo(
      incidentId: map['incidentId'] == null ? null : map['incidentId'] as String,
      relationName: map['relationName'] == null ? null : map['relationName'] as String,
      severity: map['severity'] == null ? null : map['severity'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

