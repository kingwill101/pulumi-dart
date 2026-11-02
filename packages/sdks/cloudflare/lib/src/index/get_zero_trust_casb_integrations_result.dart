// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCasbIntegrationsResult {
  final pulumi.Input<Map<String, String>> application;
  /// When the integration was created.
  final pulumi.Input<String> created;
  /// Integration ID.
  final pulumi.Input<String> id;
  /// Whether the user paused the integration.
  final pulumi.Input<bool> isPaused;
  /// Name of the integration.
  final pulumi.Input<String> name;
  /// Integration status.
  final pulumi.Input<String> status;
  /// When the integration was last updated.
  final pulumi.Input<String> updated;

  /// Creates a new [GetZeroTrustCasbIntegrationsResult].
  /// [application] Required.
  /// [created] When the integration was created.
  /// [id] Integration ID.
  /// [isPaused] Whether the user paused the integration.
  /// [name] Name of the integration.
  /// [status] Integration status.
  /// [updated] When the integration was last updated.
  const GetZeroTrustCasbIntegrationsResult({
    required this.application,
    required this.created,
    required this.id,
    required this.isPaused,
    required this.name,
    required this.status,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'created': created,
      'id': id,
      'isPaused': isPaused,
      'name': name,
      'status': status,
      'updated': updated,
    };
  }

  factory GetZeroTrustCasbIntegrationsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbIntegrationsResult(
      application: pulumi.Input.fromValue((map['application'] as Map).cast<String, String>()),
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isPaused: pulumi.Input.fromValue(map['isPaused'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updated: pulumi.Input.fromValue(map['updated'] as String),
    );
  }
}
