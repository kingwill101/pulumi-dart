// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePerimeterStatusIngressPolicyIngressFromSource {
  /// An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside.
  final pulumi.Input<String>? accessLevel;
  /// A Google Cloud resource that is allowed to egress the perimeter.
  /// Requests from these resources are allowed to access data outside the perimeter.
  /// Currently only projects are allowed. Project format: `projects/{project_number}`.
  /// The resource may be in any Google Cloud organization, not just the
  /// organization that the perimeter is defined in. `*` is not allowed, the
  /// case of allowing all Google Cloud resources only is not supported.
  final pulumi.Input<String>? resource;

  /// Creates a new [ServicePerimeterStatusIngressPolicyIngressFromSource].
  /// [accessLevel] An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside.
  /// [resource] A Google Cloud resource that is allowed to egress the perimeter.
  const ServicePerimeterStatusIngressPolicyIngressFromSource({
    this.accessLevel,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': ?accessLevel,
      'resource': ?resource,
    };
  }

  factory ServicePerimeterStatusIngressPolicyIngressFromSource.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusIngressPolicyIngressFromSource(
      accessLevel: (() { final guardedValue = map['accessLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

