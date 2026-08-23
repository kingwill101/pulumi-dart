// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec.dart';
import 'service_perimeters_service_perimeter_status.dart';

class ServicePerimetersServicePerimeter {
  /// (Output)
  /// Time the AccessPolicy was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Description of the ServicePerimeter and its use. Does not affect
  /// behavior.
  final pulumi.Input<String>? description;
  /// Resource name for the ServicePerimeter. The shortName component must
  /// begin with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}
  final pulumi.Input<String> name;
  /// Specifies the type of the Perimeter. There are two types: regular and
  /// bridge. Regular Service Perimeter contains resources, access levels,
  /// and restricted services. Every resource can be in at most
  /// ONE regular Service Perimeter.
  /// In addition to being in a regular service perimeter, a resource can also
  /// be in zero or more perimeter bridges. A perimeter bridge only contains
  /// resources. Cross project operations are permitted if all effected
  /// resources share some perimeter (whether bridge or regular). Perimeter
  /// Bridge does not contain access levels or services: those are governed
  /// entirely by the regular perimeter that resource is in.
  /// Perimeter Bridges are typically useful when building more complex
  /// topologies with many independent perimeters that need to share some data
  /// with a common perimeter, but should not be able to share data among
  /// themselves.
  /// Default value is `PERIMETER_TYPE_REGULAR`.
  /// Possible values are: `PERIMETER_TYPE_REGULAR`, `PERIMETER_TYPE_BRIDGE`.
  final pulumi.Input<String>? perimeterType;
  /// Proposed (or dry run) ServicePerimeter configuration.
  /// This configuration allows to specify and test ServicePerimeter configuration
  /// without enforcing actual access restrictions. Only allowed to be set when
  /// the `useExplicitDryRunSpec` flag is set.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimetersServicePerimeterSpec>? spec;
  /// ServicePerimeter configuration. Specifies sets of resources,
  /// restricted services and access levels that determine
  /// perimeter content and boundaries.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimetersServicePerimeterStatus>? status;
  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String> title;
  /// (Output)
  /// Time the AccessPolicy was updated in UTC.
  final pulumi.Input<String>? updateTime;
  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
  /// for all Service Perimeters, and that spec is identical to the status for those
  /// Service Perimeters. When this flag is set, it inhibits the generation of the
  /// implicit spec, thereby allowing the user to explicitly provide a
  /// configuration ("spec") to use in a dry-run version of the Service Perimeter.
  /// This allows the user to test changes to the enforced config ("status") without
  /// actually enforcing them. This testing is done through analyzing the differences
  /// between currently enforced and suggested restrictions. useExplicitDryRunSpec must
  /// bet set to True if any of the fields in the spec are set to non-default values.
  final pulumi.Input<bool>? useExplicitDryRunSpec;

  /// Creates a new [ServicePerimetersServicePerimeter].
  /// [createTime] (Output)
  /// [description] Description of the ServicePerimeter and its use. Does not affect
  /// [name] Resource name for the ServicePerimeter. The shortName component must
  /// [perimeterType] Specifies the type of the Perimeter. There are two types: regular and
  /// [spec] Proposed (or dry run) ServicePerimeter configuration.
  /// [status] ServicePerimeter configuration. Specifies sets of resources,
  /// [title] Human readable title. Must be unique within the Policy.
  /// [updateTime] (Output)
  /// [useExplicitDryRunSpec] Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
  const ServicePerimetersServicePerimeter({
    this.createTime,
    this.description,
    required this.name,
    this.perimeterType,
    this.spec,
    this.status,
    required this.title,
    this.updateTime,
    this.useExplicitDryRunSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': name,
      'perimeterType': ?perimeterType,
      'spec': ?pulumi.Input.mapOptionalInputValue<ServicePerimetersServicePerimeterSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<ServicePerimetersServicePerimeterStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'title': title,
      'updateTime': ?updateTime,
      'useExplicitDryRunSpec': ?useExplicitDryRunSpec,
    };
  }

  factory ServicePerimetersServicePerimeter.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeter(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      perimeterType: (() { final guardedValue = map['perimeterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimetersServicePerimeterSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimetersServicePerimeterStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useExplicitDryRunSpec: (() { final guardedValue = map['useExplicitDryRunSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
