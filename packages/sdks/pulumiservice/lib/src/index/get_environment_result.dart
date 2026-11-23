// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// The environment's UUID. Pass it as the `id` of an `environmentRules` entry in `buildRolePermissions`.
  final String? environmentId;
  /// The environment name.
  final String? name;
  /// The Pulumi Cloud organization that owns the environment.
  final String? organizationName;
  /// The ESC project the environment lives in.
  final String? projectName;

  /// Creates a new [GetEnvironmentResult].
  /// [environmentId] The environment's UUID. Pass it as the `id` of an `environmentRules` entry in `buildRolePermissions`.
  /// [name] The environment name.
  /// [organizationName] The Pulumi Cloud organization that owns the environment.
  /// [projectName] The ESC project the environment lives in.
  const GetEnvironmentResult({
    this.environmentId,
    this.name,
    this.organizationName,
    this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': ?environmentId,
      'name': ?name,
      'organizationName': ?organizationName,
      'projectName': ?projectName,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationName: (() { final guardedValue = map['organizationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
