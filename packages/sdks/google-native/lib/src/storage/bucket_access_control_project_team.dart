// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The project team associated with the entity, if any.
class BucketAccessControlProjectTeam {
  /// The project number.
  final pulumi.Input<String>? projectNumber;
  /// The team.
  final pulumi.Input<String>? team;

  /// Creates a new [BucketAccessControlProjectTeam].
  /// [projectNumber] The project number.
  /// [team] The team.
  BucketAccessControlProjectTeam({
    this.projectNumber,
    this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumber': ?projectNumber,
      'team': ?team,
    };
  }

  factory BucketAccessControlProjectTeam.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlProjectTeam(
      projectNumber: map['projectNumber'] == null ? null : (map['projectNumber'] as String).input(),
      team: map['team'] == null ? null : (map['team'] as String).input(),
    );
  }
}

