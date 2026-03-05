// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_tenant_template_deployment_get_tenant_template_deployment_args_doc}
/// Arguments for getTenantTemplateDeployment.
/// {@endtemplate}
/// {@macro pulumi_core_get_tenant_template_deployment_get_tenant_template_deployment_args_doc}
class GetTenantTemplateDeploymentArgs {
  /// The name of this Tenant Template Deployment.
  final pulumi.Input<String> name;

  /// Creates a new [GetTenantTemplateDeploymentArgs].
  /// [name] The name of this Tenant Template Deployment.
  GetTenantTemplateDeploymentArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetTenantTemplateDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetTenantTemplateDeploymentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

