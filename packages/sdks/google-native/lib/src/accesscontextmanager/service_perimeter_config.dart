// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_policy.dart';
import 'ingress_policy.dart';
import 'vpc_accessible_services.dart';

/// `ServicePerimeterConfig` specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.
class ServicePerimeterConfig {
  /// A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  final List<String>? accessLevels;
  /// List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
  final List<EgressPolicy>? egressPolicies;
  /// List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
  final List<IngressPolicy>? ingressPolicies;
  /// A list of Google Cloud resources that are inside of the service perimeter. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC network format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.
  final List<String>? resources;
  /// Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  final List<String>? restrictedServices;
  /// Configuration for APIs allowed within Perimeter.
  final VpcAccessibleServices? vpcAccessibleServices;

  /// Creates a new [ServicePerimeterConfig].
  /// [accessLevels] A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  /// [egressPolicies] List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
  /// [ingressPolicies] List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
  /// [resources] A list of Google Cloud resources that are inside of the service perimeter. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC network format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.
  /// [restrictedServices] Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  /// [vpcAccessibleServices] Configuration for APIs allowed within Perimeter.
  ServicePerimeterConfig({
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
      'egressPolicies': ?egressPolicies == null ? null : pulumi.Input.encodeList<EgressPolicy, Map<String, dynamic>>(egressPolicies!, (value) => value.toMap()),
      'ingressPolicies': ?ingressPolicies == null ? null : pulumi.Input.encodeList<IngressPolicy, Map<String, dynamic>>(ingressPolicies!, (value) => value.toMap()),
      'resources': ?resources,
      'restrictedServices': ?restrictedServices,
      'vpcAccessibleServices': ?vpcAccessibleServices == null ? null : vpcAccessibleServices!.toMap(),
    };
  }

  factory ServicePerimeterConfig.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterConfig(
      accessLevels: map['accessLevels'] == null ? null : (map['accessLevels'] as List).cast<String>(),
      egressPolicies: map['egressPolicies'] == null ? null : pulumi.Input.decodeList<EgressPolicy>(map['egressPolicies'], (value) => EgressPolicy.fromMap((value as Map).cast<String, dynamic>())),
      ingressPolicies: map['ingressPolicies'] == null ? null : pulumi.Input.decodeList<IngressPolicy>(map['ingressPolicies'], (value) => IngressPolicy.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null ? null : (map['resources'] as List).cast<String>(),
      restrictedServices: map['restrictedServices'] == null ? null : (map['restrictedServices'] as List).cast<String>(),
      vpcAccessibleServices: map['vpcAccessibleServices'] == null ? null : VpcAccessibleServices.fromMap((map['vpcAccessibleServices'] as Map).cast<String, dynamic>()),
    );
  }
}

