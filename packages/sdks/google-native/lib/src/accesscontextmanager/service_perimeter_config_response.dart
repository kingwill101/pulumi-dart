// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_policy_response.dart';
import 'ingress_policy_response.dart';
import 'vpc_accessible_services_response.dart';

/// `ServicePerimeterConfig` specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.
class ServicePerimeterConfigResponse {
  /// A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  final pulumi.Input<List<String>> accessLevels;
  /// List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
  final pulumi.Input<List<EgressPolicyResponse>> egressPolicies;
  /// List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
  final pulumi.Input<List<IngressPolicyResponse>> ingressPolicies;
  /// A list of Google Cloud resources that are inside of the service perimeter. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC network format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.
  final pulumi.Input<List<String>> resources;
  /// Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  final pulumi.Input<List<String>> restrictedServices;
  /// Configuration for APIs allowed within Perimeter.
  final pulumi.Input<VpcAccessibleServicesResponse> vpcAccessibleServices;

  /// Creates a new [ServicePerimeterConfigResponse].
  /// [accessLevels] A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  /// [egressPolicies] List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
  /// [ingressPolicies] List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
  /// [resources] A list of Google Cloud resources that are inside of the service perimeter. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC network format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.
  /// [restrictedServices] Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  /// [vpcAccessibleServices] Configuration for APIs allowed within Perimeter.
  const ServicePerimeterConfigResponse({
    required this.accessLevels,
    required this.egressPolicies,
    required this.ingressPolicies,
    required this.resources,
    required this.restrictedServices,
    required this.vpcAccessibleServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': accessLevels,
      'egressPolicies': pulumi.Input.mapInputValue<List<EgressPolicyResponse>, List<Map<String, dynamic>>>(egressPolicies, (value) => pulumi.Input.encodeList<EgressPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingressPolicies': pulumi.Input.mapInputValue<List<IngressPolicyResponse>, List<Map<String, dynamic>>>(ingressPolicies, (value) => pulumi.Input.encodeList<IngressPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': resources,
      'restrictedServices': restrictedServices,
      'vpcAccessibleServices': pulumi.Input.mapInputValue<VpcAccessibleServicesResponse, Map<String, dynamic>>(vpcAccessibleServices, (value) => value.toMap()),
    };
  }

  factory ServicePerimeterConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterConfigResponse(
      accessLevels: pulumi.Input.fromValue((map['accessLevels'] as List).cast<String>()),
      egressPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<EgressPolicyResponse>(map['egressPolicies']!, (value) => EgressPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      ingressPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<IngressPolicyResponse>(map['ingressPolicies']!, (value) => IngressPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      resources: pulumi.Input.fromValue((map['resources'] as List).cast<String>()),
      restrictedServices: pulumi.Input.fromValue((map['restrictedServices'] as List).cast<String>()),
      vpcAccessibleServices: pulumi.Input.fromValue(VpcAccessibleServicesResponse.fromMap((map['vpcAccessibleServices']! as Map).cast<String, dynamic>())),
    );
  }
}
