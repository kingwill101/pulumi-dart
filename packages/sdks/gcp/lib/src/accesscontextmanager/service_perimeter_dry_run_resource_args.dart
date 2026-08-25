// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_service_perimeter_dry_run_resource_service_perimeter_dry_run_resource_args_doc}
/// The set of arguments for ServicePerimeterDryRunResource.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_dry_run_resource_service_perimeter_dry_run_resource_args_doc}
class ServicePerimeterDryRunResourceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeterName;
  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  final pulumi.Input<String> resource;

  /// Creates a new [ServicePerimeterDryRunResourceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [perimeterName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  const ServicePerimeterDryRunResourceArgs({
    this.deletionPolicy,
    required this.perimeterName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'perimeterName': perimeterName,
      'resource': resource,
    };
  }

  factory ServicePerimeterDryRunResourceArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterDryRunResourceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perimeterName: pulumi.Input.fromValue(map['perimeterName'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
