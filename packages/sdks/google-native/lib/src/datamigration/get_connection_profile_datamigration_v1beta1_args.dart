// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1beta1_get_connection_profile_datamigration_v1beta1_args_doc}
/// Arguments for getConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1beta1_get_connection_profile_datamigration_v1beta1_args_doc}
class GetConnectionProfileDatamigrationV1beta1Args {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionProfileDatamigrationV1beta1Args].
  /// [connectionProfileId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConnectionProfileDatamigrationV1beta1Args({
    required this.connectionProfileId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionProfileId': connectionProfileId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConnectionProfileDatamigrationV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectionProfileDatamigrationV1beta1Args(
      connectionProfileId: pulumi.Input.fromValue(
        map['connectionProfileId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
