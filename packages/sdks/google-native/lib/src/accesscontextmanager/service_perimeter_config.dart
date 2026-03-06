// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_policy.dart';
import 'ingress_policy.dart';
import 'vpc_accessible_services.dart';

/// `ServicePerimeterConfig` specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.
class ServicePerimeterConfig {
  /// A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  final pulumi.Input<List<String>>? accessLevels;
  /// List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
  final pulumi.Input<List<EgressPolicy>>? egressPolicies;
  /// List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
  final pulumi.Input<List<IngressPolicy>>? ingressPolicies;
  /// A list of Google Cloud resources that are inside of the service perimeter. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC network format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.
  final pulumi.Input<List<String>>? resources;
  /// Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  final pulumi.Input<List<String>>? restrictedServices;
  /// Configuration for APIs allowed within Perimeter.
  final pulumi.Input<VpcAccessibleServices>? vpcAccessibleServices;

  /// Creates a new [ServicePerimeterConfig].
  /// [accessLevels] A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
  /// [egressPolicies] List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
  /// [ingressPolicies] List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
  /// [resources] A list of Google Cloud resources that are inside of the service perimeter. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC network format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.
  /// [restrictedServices] Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.
  /// [vpcAccessibleServices] Configuration for APIs allowed within Perimeter.
  const ServicePerimeterConfig({
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
      'egressPolicies': ?pulumi.Input.mapOptionalInputValue<List<EgressPolicy>, List<Map<String, dynamic>>>(egressPolicies, (value) => pulumi.Input.encodeList<EgressPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingressPolicies': ?pulumi.Input.mapOptionalInputValue<List<IngressPolicy>, List<Map<String, dynamic>>>(ingressPolicies, (value) => pulumi.Input.encodeList<IngressPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?resources,
      'restrictedServices': ?restrictedServices,
      'vpcAccessibleServices': ?pulumi.Input.mapOptionalInputValue<VpcAccessibleServices, Map<String, dynamic>>(vpcAccessibleServices, (value) => value.toMap()),
    };
  }

  factory ServicePerimeterConfig.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterConfig(
      accessLevels: (() { final guardedValue = map['accessLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      egressPolicies: (() { final guardedValue = map['egressPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EgressPolicy>(guardedValue, (value) => EgressPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingressPolicies: (() { final guardedValue = map['ingressPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngressPolicy>(guardedValue, (value) => IngressPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      restrictedServices: (() { final guardedValue = map['restrictedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcAccessibleServices: (() { final guardedValue = map['vpcAccessibleServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcAccessibleServices.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

