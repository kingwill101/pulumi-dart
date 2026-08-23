// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_egress_policy_egress_from_source_psc_endpoint.dart';

class ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource {
  /// An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside.
  final pulumi.Input<String>? accessLevel;
  /// A Private Service Connect endpoint that is allowed to access data outside the perimeter.
  /// The Private Service Connect endpoint may be in any organization, not just the organization that the perimeter is defined in.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSourcePscEndpoint>? pscEndpoint;
  /// A Google Cloud resource that is allowed to egress the perimeter.
  /// Requests from these resources are allowed to access data outside the perimeter.
  /// Currently only projects are allowed. Project format: `projects/{project_number}`.
  /// The resource may be in any Google Cloud organization, not just the
  /// organization that the perimeter is defined in. `*` is not allowed, the
  /// case of allowing all Google Cloud resources only is not supported.
  final pulumi.Input<String>? resource;

  /// Creates a new [ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource].
  /// [accessLevel] An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside.
  /// [pscEndpoint] A Private Service Connect endpoint that is allowed to access data outside the perimeter.
  /// [resource] A Google Cloud resource that is allowed to egress the perimeter.
  const ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource({
    this.accessLevel,
    this.pscEndpoint,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': ?accessLevel,
      'pscEndpoint': ?pulumi.Input.mapOptionalInputValue<ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSourcePscEndpoint, Map<String, dynamic>>(pscEndpoint, (value) => value.toMap()),
      'resource': ?resource,
    };
  }

  factory ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource(
      accessLevel: (() { final guardedValue = map['accessLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscEndpoint: (() { final guardedValue = map['pscEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSourcePscEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
