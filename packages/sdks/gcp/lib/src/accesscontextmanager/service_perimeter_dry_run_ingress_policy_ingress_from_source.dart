// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_ingress_policy_ingress_from_source_psc_endpoint.dart';

class ServicePerimeterDryRunIngressPolicyIngressFromSource {
  /// An `AccessLevel` resource name that allow resources within the
  /// `ServicePerimeters` to be accessed from the internet. `AccessLevels` listed
  /// must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent
  /// `AccessLevel` will cause an error. If no `AccessLevel` names are listed,
  /// resources within the perimeter can only be accessed via Google Cloud calls
  /// with request origins within the perimeter.
  /// Example `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL.`
  /// If * is specified, then all IngressSources will be allowed.
  final pulumi.Input<String>? accessLevel;
  /// A Private Service Connect endpoint that is allowed to access the perimeter.
  /// The Private Service Connect endpoint may be in any organization, not just the organization that the perimeter is defined in.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterDryRunIngressPolicyIngressFromSourcePscEndpoint>? pscEndpoint;
  /// A Google Cloud resource that is allowed to ingress the perimeter.
  /// Requests from these resources will be allowed to access perimeter data.
  /// Currently only projects are allowed. Format `projects/{project_number}`
  /// The project may be in any Google Cloud organization, not just the
  /// organization that the perimeter is defined in. `*` is not allowed, the case
  /// of allowing all Google Cloud resources only is not supported.
  final pulumi.Input<String>? resource;

  /// Creates a new [ServicePerimeterDryRunIngressPolicyIngressFromSource].
  /// [accessLevel] An `AccessLevel` resource name that allow resources within the
  /// [pscEndpoint] A Private Service Connect endpoint that is allowed to access the perimeter.
  /// [resource] A Google Cloud resource that is allowed to ingress the perimeter.
  const ServicePerimeterDryRunIngressPolicyIngressFromSource({
    this.accessLevel,
    this.pscEndpoint,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': ?accessLevel,
      'pscEndpoint': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterDryRunIngressPolicyIngressFromSourcePscEndpoint, Map<String, dynamic>>(pscEndpoint, (value) => value.toMap()),
      'resource': ?resource,
    };
  }

  factory ServicePerimeterDryRunIngressPolicyIngressFromSource.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterDryRunIngressPolicyIngressFromSource(
      accessLevel: (() { final guardedValue = map['accessLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscEndpoint: (() { final guardedValue = map['pscEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterDryRunIngressPolicyIngressFromSourcePscEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
