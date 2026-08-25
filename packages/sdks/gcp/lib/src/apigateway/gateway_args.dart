// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_apigateway_gateway_gateway_args_doc}
class GatewayArgs {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}.
  /// When changing api configs please ensure the new config is a new resource and the
  /// lifecycle rule `createBeforeDestroy` is set.
  final pulumi.Input<String> apiConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A user-visible name for the API.
  final pulumi.Input<String?>? displayName;
  /// Identifier to assign to the Gateway. Must be unique within scope of the parent resource(project).
  final pulumi.Input<String> gatewayId;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the gateway for the API.
  final pulumi.Input<String?>? region;

  /// Creates a new [GatewayArgs].
  /// [apiConfig] Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A user-visible name for the API.
  /// [gatewayId] Identifier to assign to the Gateway. Must be unique within scope of the parent resource(project).
  /// [labels] Resource labels to represent user-provided metadata.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the gateway for the API.
  const GatewayArgs({
    required this.apiConfig,
    this.deletionPolicy,
    this.displayName,
    required this.gatewayId,
    this.labels,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': apiConfig,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'gatewayId': gatewayId,
      'labels': ?labels,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      apiConfig: pulumi.Input.fromValue(map['apiConfig'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
