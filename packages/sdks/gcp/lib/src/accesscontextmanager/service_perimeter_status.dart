// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_egress_policy.dart';
import 'service_perimeter_status_ingress_policy.dart';
import 'service_perimeter_status_vpc_accessible_services.dart';

class ServicePerimeterStatus {
  /// A list of AccessLevel resource names that allow resources within
  /// the ServicePerimeter to be accessed from the internet.
  /// AccessLevels listed must be in the same policy as this
  /// ServicePerimeter. Referencing a nonexistent AccessLevel is a
  /// syntax error. If no AccessLevel names are listed, resources within
  /// the perimeter can only be accessed via GCP calls with request
  /// origins within the perimeter. For Service Perimeter Bridge, must
  /// be empty.
  /// Format: accessPolicies/{policy_id}/accessLevels/{access_level_name}
  final pulumi.Input<List<String>>? accessLevels;
  /// List of EgressPolicies to apply to the perimeter. A perimeter may
  /// have multiple EgressPolicies, each of which is evaluated separately.
  /// Access is granted if any EgressPolicy grants it. Must be empty for
  /// a perimeter bridge.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterStatusEgressPolicy>>? egressPolicies;
  /// List of `IngressPolicies` to apply to the perimeter. A perimeter may
  /// have multiple `IngressPolicies`, each of which is evaluated
  /// separately. Access is granted if any `Ingress Policy` grants it.
  /// Must be empty for a perimeter bridge.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterStatusIngressPolicy>>? ingressPolicies;
  /// A list of GCP resources that are inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  final pulumi.Input<List<String>>? resources;
  /// GCP services that are subject to the Service Perimeter
  /// restrictions. Must contain a list of services. For example, if
  /// `storage.googleapis.com` is specified, access to the storage
  /// buckets inside the perimeter must meet the perimeter's access
  /// restrictions.
  final pulumi.Input<List<String>>? restrictedServices;
  /// Specifies how APIs are allowed to communicate within the Service
  /// Perimeter.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterStatusVpcAccessibleServices>? vpcAccessibleServices;

  /// Creates a new [ServicePerimeterStatus].
  /// [accessLevels] A list of AccessLevel resource names that allow resources within
  /// [egressPolicies] List of EgressPolicies to apply to the perimeter. A perimeter may
  /// [ingressPolicies] List of `IngressPolicies` to apply to the perimeter. A perimeter may
  /// [resources] A list of GCP resources that are inside of the service perimeter.
  /// [restrictedServices] GCP services that are subject to the Service Perimeter
  /// [vpcAccessibleServices] Specifies how APIs are allowed to communicate within the Service
  ServicePerimeterStatus({
    this.accessLevels,
    this.egressPolicies,
    this.ingressPolicies,
    this.resources,
    this.restrictedServices,
    this.vpcAccessibleServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': ?accessLevels,
      'egressPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterStatusEgressPolicy>, List<Map<String, dynamic>>>(egressPolicies, (value) => pulumi.Input.encodeList<ServicePerimeterStatusEgressPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingressPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterStatusIngressPolicy>, List<Map<String, dynamic>>>(ingressPolicies, (value) => pulumi.Input.encodeList<ServicePerimeterStatusIngressPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?resources,
      'restrictedServices': ?restrictedServices,
      'vpcAccessibleServices': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterStatusVpcAccessibleServices, Map<String, dynamic>>(vpcAccessibleServices, (value) => value.toMap()),
    };
  }

  factory ServicePerimeterStatus.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatus(
      accessLevels: map['accessLevels'] == null ? null : ((map['accessLevels'] as List).cast<String>()).input(),
      egressPolicies: map['egressPolicies'] == null ? null : (pulumi.Input.decodeList<ServicePerimeterStatusEgressPolicy>(map['egressPolicies'], (value) => ServicePerimeterStatusEgressPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingressPolicies: map['ingressPolicies'] == null ? null : (pulumi.Input.decodeList<ServicePerimeterStatusIngressPolicy>(map['ingressPolicies'], (value) => ServicePerimeterStatusIngressPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resources: map['resources'] == null ? null : ((map['resources'] as List).cast<String>()).input(),
      restrictedServices: map['restrictedServices'] == null ? null : ((map['restrictedServices'] as List).cast<String>()).input(),
      vpcAccessibleServices: map['vpcAccessibleServices'] == null ? null : (ServicePerimeterStatusVpcAccessibleServices.fromMap((map['vpcAccessibleServices'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

