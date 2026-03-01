// ignore_for_file: unused_element, unnecessary_cast


/// The project team associated with the entity, if any.
class DefaultObjectAccessControlProjectTeam {
  /// The project number.
  final String? projectNumber;
  /// The team.
  final String? team;

  /// Creates a new [DefaultObjectAccessControlProjectTeam].
  /// [projectNumber] The project number.
  /// [team] The team.
  DefaultObjectAccessControlProjectTeam({
    this.projectNumber,
    this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumber': ?projectNumber,
      'team': ?team,
    };
  }

  factory DefaultObjectAccessControlProjectTeam.fromMap(Map<String, dynamic> map) {
    return DefaultObjectAccessControlProjectTeam(
      projectNumber: map['projectNumber'] == null ? null : map['projectNumber'] as String,
      team: map['team'] == null ? null : map['team'] as String,
    );
  }
}

