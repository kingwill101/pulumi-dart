// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The project team associated with the entity, if any.
class BucketAccessControlProjectTeamResponse {
  /// The project number.
  final pulumi.Input<String> projectNumber;
  /// The team.
  final pulumi.Input<String> team;

  /// Creates a new [BucketAccessControlProjectTeamResponse].
  /// [projectNumber] The project number.
  /// [team] The team.
  BucketAccessControlProjectTeamResponse({
    required this.projectNumber,
    required this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumber': projectNumber,
      'team': team,
    };
  }

  factory BucketAccessControlProjectTeamResponse.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlProjectTeamResponse(
      projectNumber: (map['projectNumber'] as String).input(),
      team: (map['team'] as String).input(),
    );
  }
}

