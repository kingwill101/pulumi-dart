// ignore_for_file: unused_element, unnecessary_cast

import 'vpc_accessible_services_response_accesscontextmanager_v1beta.dart';

/// `ServicePerimeterConfig` specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.
class ServicePerimeterConfigResponseAccesscontextmanagerV1beta {
  /// A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  final List<String> accessLevels;
  /// A list of Google Cloud resources that are inside of the service perimeter. Currently only projects are allowed. Format: `projects/{project_number}`
  final List<String> resources;
  /// Google Cloud services that are subject to the Service Perimeter restrictions. Must contain a list of services. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  final List<String> restrictedServices;
  /// Google Cloud services that are not subject to the Service Perimeter restrictions. Deprecated. Must be set to a single wildcard "*". The wildcard means that unless explicitly specified by "restricted_services" list, any service is treated as unrestricted.
  final List<String> unrestrictedServices;
  /// Beta. Configuration for APIs allowed within Perimeter.
  final VpcAccessibleServicesResponseAccesscontextmanagerV1beta vpcAccessibleServices;

  /// Creates a new [ServicePerimeterConfigResponseAccesscontextmanagerV1beta].
  /// [accessLevels] A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  /// [resources] A list of Google Cloud resources that are inside of the service perimeter. Currently only projects are allowed. Format: `projects/{project_number}`
  /// [restrictedServices] Google Cloud services that are subject to the Service Perimeter restrictions. Must contain a list of services. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  /// [unrestrictedServices] Google Cloud services that are not subject to the Service Perimeter restrictions. Deprecated. Must be set to a single wildcard "*". The wildcard means that unless explicitly specified by "restricted_services" list, any service is treated as unrestricted.
  /// [vpcAccessibleServices] Beta. Configuration for APIs allowed within Perimeter.
  ServicePerimeterConfigResponseAccesscontextmanagerV1beta({
    required this.accessLevels,
    required this.resources,
    required this.restrictedServices,
    required this.unrestrictedServices,
    required this.vpcAccessibleServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': accessLevels,
      'resources': resources,
      'restrictedServices': restrictedServices,
      'unrestrictedServices': unrestrictedServices,
      'vpcAccessibleServices': vpcAccessibleServices.toMap(),
    };
  }

  factory ServicePerimeterConfigResponseAccesscontextmanagerV1beta.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterConfigResponseAccesscontextmanagerV1beta(
      accessLevels: (map['accessLevels'] as List).cast<String>(),
      resources: (map['resources'] as List).cast<String>(),
      restrictedServices: (map['restrictedServices'] as List).cast<String>(),
      unrestrictedServices: (map['unrestrictedServices'] as List).cast<String>(),
      vpcAccessibleServices: VpcAccessibleServicesResponseAccesscontextmanagerV1beta.fromMap((map['vpcAccessibleServices'] as Map).cast<String, dynamic>()),
    );
  }
}

