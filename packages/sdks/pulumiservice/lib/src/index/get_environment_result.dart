// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// The environment's UUID. Pass it to `buildEnvironmentScopedPermissions` (preferred) or use it as the `identity` field of a hand-rolled `PermissionLiteralExpressionEnvironment` in `OrganizationRole.permissions`.
  final String environmentId;
  /// The environment name.
  final String name;
  /// The Pulumi Cloud organization that owns the environment.
  final String organizationName;
  /// The ESC project the environment lives in.
  final String projectName;

  /// Creates a new [GetEnvironmentResult].
  /// [environmentId] The environment's UUID. Pass it to `buildEnvironmentScopedPermissions` (preferred) or use it as the `identity` field of a hand-rolled `PermissionLiteralExpressionEnvironment` in `OrganizationRole.permissions`.
  /// [name] The environment name.
  /// [organizationName] The Pulumi Cloud organization that owns the environment.
  /// [projectName] The ESC project the environment lives in.
  const GetEnvironmentResult({
    required this.environmentId,
    required this.name,
    required this.organizationName,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'name': name,
      'organizationName': organizationName,
      'projectName': projectName,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      environmentId: map['environmentId'] as String,
      name: map['name'] as String,
      organizationName: map['organizationName'] as String,
      projectName: map['projectName'] as String,
    );
  }
}
