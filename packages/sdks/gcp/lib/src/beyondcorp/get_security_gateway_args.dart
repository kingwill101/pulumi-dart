// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_get_security_gateway_get_security_gateway_args_doc}
/// Arguments for getSecurityGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_get_security_gateway_get_security_gateway_args_doc}
class GetSecurityGatewayArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the Security Gateway resource.
  ///
  /// - - -
  final pulumi.Input<String> securityGatewayId;

  /// Creates a new [GetSecurityGatewayArgs].
  /// [project] The project in which the resource belongs. If it
  /// [securityGatewayId] The name of the Security Gateway resource.
  const GetSecurityGatewayArgs({
    this.project,
    required this.securityGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'securityGatewayId': securityGatewayId,
    };
  }

  factory GetSecurityGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGatewayId: pulumi.Input.fromValue(map['securityGatewayId'] as String),
    );
  }
}

