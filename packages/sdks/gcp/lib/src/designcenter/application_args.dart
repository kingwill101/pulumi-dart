// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_app_parameter.dart';
import 'application_attributes.dart';
import 'application_component_parameter.dart';
import 'application_composite_application_parameters.dart';
import 'application_connection_config.dart';
import 'application_deployment_target.dart';
import 'application_roles_apis_config.dart';
import 'application_scope.dart';
import 'application_source.dart';

/// {@template pulumi_designcenter_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_designcenter_application_application_args_doc}
class ApplicationArgs {
  /// A list of parameters to attach to the deployment source object, which is
  /// a catalog entry or an application template snapshot. When unset, the API
  /// fills these in from the application template.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationAppParameter>?>? appParameters;
  /// The ID of the application.
  final pulumi.Input<String> applicationId;
  /// Attributes of the App Hub application.
  /// Structure is documented below.
  final pulumi.Input<ApplicationAttributes?>? attributes;
  /// A list of component parameters to associate with the application. When
  /// unset, the API fills these in from the application template.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationComponentParameter>?>? componentParameters;
  /// Parameters that are required for composite applications.
  /// Structure is documented below.
  final pulumi.Input<ApplicationCompositeApplicationParameters?>? compositeApplicationParameters;
  /// Connection configurations for the application. When the application is
  /// created or its source changes, the API sets these from the connections
  /// in the application template.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationConnectionConfig>?>? connectionConfigs;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Deployment project.
  final pulumi.Input<String?>? deploymentProject;
  /// Deployment region.
  final pulumi.Input<String?>? deploymentRegion;
  /// The deployment target of the application.
  /// Structure is documented below.
  final pulumi.Input<ApplicationDeploymentTarget?>? deploymentTarget;
  /// Description of the application.
  final pulumi.Input<String?>? description;
  /// Display name.
  final pulumi.Input<String?>? displayName;
  /// The location of the space.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Project-specific configurations required to deploy the application,
  /// including IAM roles and APIs. When unset, the API fills in the roles and
  /// APIs that the deployment needs.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationRolesApisConfig>?>? rolesApisConfigs;
  /// AppHub Scope for the application.
  /// Structure is documented below.
  final pulumi.Input<ApplicationScope> scope;
  /// Service account for deployment.
  final pulumi.Input<String?>? serviceAccount;
  /// DeploymentSource for the application.
  /// Structure is documented below.
  final pulumi.Input<ApplicationSource> source;
  /// The space for the application.
  final pulumi.Input<String> space;

  /// Creates a new [ApplicationArgs].
  /// [appParameters] A list of parameters to attach to the deployment source object, which is
  /// [applicationId] The ID of the application.
  /// [attributes] Attributes of the App Hub application.
  /// [componentParameters] A list of component parameters to associate with the application. When
  /// [compositeApplicationParameters] Parameters that are required for composite applications.
  /// [connectionConfigs] Connection configurations for the application. When the application is
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deploymentProject] Deployment project.
  /// [deploymentRegion] Deployment region.
  /// [deploymentTarget] The deployment target of the application.
  /// [description] Description of the application.
  /// [displayName] Display name.
  /// [location] The location of the space.
  /// [project] The ID of the project in which the resource belongs.
  /// [rolesApisConfigs] Project-specific configurations required to deploy the application,
  /// [scope] AppHub Scope for the application.
  /// [serviceAccount] Service account for deployment.
  /// [source] DeploymentSource for the application.
  /// [space] The space for the application.
  const ApplicationArgs({
    this.appParameters,
    required this.applicationId,
    this.attributes,
    this.componentParameters,
    this.compositeApplicationParameters,
    this.connectionConfigs,
    this.deletionPolicy,
    this.deploymentProject,
    this.deploymentRegion,
    this.deploymentTarget,
    this.description,
    this.displayName,
    required this.location,
    this.project,
    this.rolesApisConfigs,
    required this.scope,
    this.serviceAccount,
    required this.source,
    required this.space,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appParameters': ?pulumi.Input.mapOptionalInputValue<List<ApplicationAppParameter>, List<Map<String, dynamic>>>(appParameters, (value) => pulumi.Input.encodeList<ApplicationAppParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationId': applicationId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<ApplicationAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'componentParameters': ?pulumi.Input.mapOptionalInputValue<List<ApplicationComponentParameter>, List<Map<String, dynamic>>>(componentParameters, (value) => pulumi.Input.encodeList<ApplicationComponentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'compositeApplicationParameters': ?pulumi.Input.mapOptionalInputValue<ApplicationCompositeApplicationParameters, Map<String, dynamic>>(compositeApplicationParameters, (value) => value.toMap()),
      'connectionConfigs': ?pulumi.Input.mapOptionalInputValue<List<ApplicationConnectionConfig>, List<Map<String, dynamic>>>(connectionConfigs, (value) => pulumi.Input.encodeList<ApplicationConnectionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'deploymentProject': ?deploymentProject,
      'deploymentRegion': ?deploymentRegion,
      'deploymentTarget': ?pulumi.Input.mapOptionalInputValue<ApplicationDeploymentTarget, Map<String, dynamic>>(deploymentTarget, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'rolesApisConfigs': ?pulumi.Input.mapOptionalInputValue<List<ApplicationRolesApisConfig>, List<Map<String, dynamic>>>(rolesApisConfigs, (value) => pulumi.Input.encodeList<ApplicationRolesApisConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': pulumi.Input.mapInputValue<ApplicationScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'source': pulumi.Input.mapInputValue<ApplicationSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'space': space,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      appParameters: (() { final guardedValue = map['appParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationAppParameter>(guardedValue, (value) => ApplicationAppParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      componentParameters: (() { final guardedValue = map['componentParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationComponentParameter>(guardedValue, (value) => ApplicationComponentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      compositeApplicationParameters: (() { final guardedValue = map['compositeApplicationParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationCompositeApplicationParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionConfigs: (() { final guardedValue = map['connectionConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationConnectionConfig>(guardedValue, (value) => ApplicationConnectionConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentProject: (() { final guardedValue = map['deploymentProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentRegion: (() { final guardedValue = map['deploymentRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentTarget: (() { final guardedValue = map['deploymentTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationDeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolesApisConfigs: (() { final guardedValue = map['rolesApisConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationRolesApisConfig>(guardedValue, (value) => ApplicationRolesApisConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scope: pulumi.Input.fromValue(ApplicationScope.fromMap((map['scope']! as Map).cast<String, dynamic>())),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(ApplicationSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      space: pulumi.Input.fromValue(map['space'] as String),
    );
  }
}
