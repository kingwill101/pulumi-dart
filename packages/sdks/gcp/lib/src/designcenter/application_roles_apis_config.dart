// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_roles_apis_config_api.dart';
import 'application_roles_apis_config_role.dart';

class ApplicationRolesApisConfig {
  /// APIs that must be enabled in this project before the application is
  /// deployed, in the form of `*.googleapis.com`.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationRolesApisConfigApi>?>? apis;
  /// The project ID to which these configurations apply.
  final pulumi.Input<String> projectId;
  /// IAM roles that the deployment service account needs to deploy the
  /// application within this project.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationRolesApisConfigRole>?>? roles;

  /// Creates a new [ApplicationRolesApisConfig].
  /// [apis] APIs that must be enabled in this project before the application is
  /// [projectId] The project ID to which these configurations apply.
  /// [roles] IAM roles that the deployment service account needs to deploy the
  const ApplicationRolesApisConfig({
    this.apis,
    required this.projectId,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apis': ?pulumi.Input.mapOptionalInputValue<List<ApplicationRolesApisConfigApi>, List<Map<String, dynamic>>>(apis, (value) => pulumi.Input.encodeList<ApplicationRolesApisConfigApi, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': projectId,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<ApplicationRolesApisConfigRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<ApplicationRolesApisConfigRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationRolesApisConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationRolesApisConfig(
      apis: (() { final guardedValue = map['apis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationRolesApisConfigApi>(guardedValue, (value) => ApplicationRolesApisConfigApi.fromMap((value as Map).cast<String, dynamic>()))); })(),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationRolesApisConfigRole>(guardedValue, (value) => ApplicationRolesApisConfigRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
