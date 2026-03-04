// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_egress_policy.dart';
import 'service_perimeters_service_perimeter_spec_ingress_policy.dart';
import 'service_perimeters_service_perimeter_spec_vpc_accessible_services.dart';

class ServicePerimetersServicePerimeterSpec {
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
  final pulumi.Input<List<ServicePerimetersServicePerimeterSpecEgressPolicy>>?
  egressPolicies;

  /// List of `IngressPolicies` to apply to the perimeter. A perimeter may
  /// have multiple `IngressPolicies`, each of which is evaluated
  /// separately. Access is granted if any `Ingress Policy` grants it.
  /// Must be empty for a perimeter bridge.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimetersServicePerimeterSpecIngressPolicy>>?
  ingressPolicies;

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
  final pulumi.Input<
    ServicePerimetersServicePerimeterSpecVpcAccessibleServices
  >?
  vpcAccessibleServices;

  /// Creates a new [ServicePerimetersServicePerimeterSpec].
  /// [accessLevels] A list of AccessLevel resource names that allow resources within
  /// [egressPolicies] List of EgressPolicies to apply to the perimeter. A perimeter may
  /// [ingressPolicies] List of `IngressPolicies` to apply to the perimeter. A perimeter may
  /// [resources] A list of GCP resources that are inside of the service perimeter.
  /// [restrictedServices] GCP services that are subject to the Service Perimeter
  /// [vpcAccessibleServices] Specifies how APIs are allowed to communicate within the Service
  ServicePerimetersServicePerimeterSpec({
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
      'egressPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServicePerimetersServicePerimeterSpecEgressPolicy>,
            List<Map<String, dynamic>>
          >(
            egressPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  ServicePerimetersServicePerimeterSpecEgressPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ingressPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServicePerimetersServicePerimeterSpecIngressPolicy>,
            List<Map<String, dynamic>>
          >(
            ingressPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  ServicePerimetersServicePerimeterSpecIngressPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resources': ?resources,
      'restrictedServices': ?restrictedServices,
      'vpcAccessibleServices':
          ?pulumi.Input.mapOptionalInputValue<
            ServicePerimetersServicePerimeterSpecVpcAccessibleServices,
            Map<String, dynamic>
          >(vpcAccessibleServices, (value) => value.toMap()),
    };
  }

  factory ServicePerimetersServicePerimeterSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimetersServicePerimeterSpec(
      accessLevels: (() {
        final guardedValue = map['accessLevels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      egressPolicies: (() {
        final guardedValue = map['egressPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServicePerimetersServicePerimeterSpecEgressPolicy
          >(
            guardedValue,
            (value) =>
                ServicePerimetersServicePerimeterSpecEgressPolicy.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      ingressPolicies: (() {
        final guardedValue = map['ingressPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServicePerimetersServicePerimeterSpecIngressPolicy
          >(
            guardedValue,
            (value) =>
                ServicePerimetersServicePerimeterSpecIngressPolicy.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      restrictedServices: (() {
        final guardedValue = map['restrictedServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      vpcAccessibleServices: (() {
        final guardedValue = map['vpcAccessibleServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServicePerimetersServicePerimeterSpecVpcAccessibleServices.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
