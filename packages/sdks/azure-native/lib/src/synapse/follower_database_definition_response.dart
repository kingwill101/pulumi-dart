// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A class representing follower database request.
class FollowerDatabaseDefinitionResponse {
  /// Resource name of the attached database configuration in the follower cluster.
  final pulumi.Input<String> attachedDatabaseConfigurationName;
  /// The database name owned by this cluster that was followed. * in case following all databases.
  final pulumi.Input<String> databaseName;
  /// Resource id of the cluster that follows a database owned by this cluster.
  final pulumi.Input<String> kustoPoolResourceId;

  /// Creates a new [FollowerDatabaseDefinitionResponse].
  /// [attachedDatabaseConfigurationName] Resource name of the attached database configuration in the follower cluster.
  /// [databaseName] The database name owned by this cluster that was followed. * in case following all databases.
  /// [kustoPoolResourceId] Resource id of the cluster that follows a database owned by this cluster.
  const FollowerDatabaseDefinitionResponse({
    required this.attachedDatabaseConfigurationName,
    required this.databaseName,
    required this.kustoPoolResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseConfigurationName': attachedDatabaseConfigurationName,
      'databaseName': databaseName,
      'kustoPoolResourceId': kustoPoolResourceId,
    };
  }

  factory FollowerDatabaseDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return FollowerDatabaseDefinitionResponse(
      attachedDatabaseConfigurationName: pulumi.Input.fromValue(map['attachedDatabaseConfigurationName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      kustoPoolResourceId: pulumi.Input.fromValue(map['kustoPoolResourceId'] as String),
    );
  }
}

