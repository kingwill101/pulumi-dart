// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_service_perimeter_resource_service_perimeter_resource_args_doc}
/// The set of arguments for ServicePerimeterResource.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_resource_service_perimeter_resource_args_doc}
class ServicePerimeterResourceArgs {
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeterName;
  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  final pulumi.Input<String> resource;

  /// Creates a new [ServicePerimeterResourceArgs].
  /// [perimeterName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  ServicePerimeterResourceArgs({
    required this.perimeterName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perimeterName': perimeterName,
      'resource': resource,
    };
  }

  factory ServicePerimeterResourceArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterResourceArgs(
      perimeterName: (map['perimeterName'] as String).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

