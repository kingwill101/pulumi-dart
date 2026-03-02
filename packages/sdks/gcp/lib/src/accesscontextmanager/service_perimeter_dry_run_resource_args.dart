// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_service_perimeter_dry_run_resource_service_perimeter_dry_run_resource_args_doc}
/// The set of arguments for ServicePerimeterDryRunResource.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_dry_run_resource_service_perimeter_dry_run_resource_args_doc}
class ServicePerimeterDryRunResourceArgs {
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeterName;
  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  final pulumi.Input<String> resource;

  /// Creates a new [ServicePerimeterDryRunResourceArgs].
  /// [perimeterName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  ServicePerimeterDryRunResourceArgs({
    required this.perimeterName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perimeterName': perimeterName,
      'resource': resource,
    };
  }

  factory ServicePerimeterDryRunResourceArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterDryRunResourceArgs(
      perimeterName: (map['perimeterName'] as String).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

