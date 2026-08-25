// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_spec.dart';
import 'service_perimeter_status.dart';

/// {@template pulumi_accesscontextmanager_service_perimeter_service_perimeter_args_doc}
/// The set of arguments for ServicePerimeter.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_service_perimeter_args_doc}
class ServicePerimeterArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the ServicePerimeter and its use. Does not affect
  /// behavior.
  final pulumi.Input<String?>? description;
  /// Resource name for the ServicePerimeter. The shortName component must
  /// begin with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}
  final pulumi.Input<String?>? name;
  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String> parent;
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
  final pulumi.Input<String?>? perimeterType;
  /// Proposed (or dry run) ServicePerimeter configuration.
  /// This configuration allows to specify and test ServicePerimeter configuration
  /// without enforcing actual access restrictions. Only allowed to be set when
  /// the `useExplicitDryRunSpec` flag is set.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterSpec?>? spec;
  /// ServicePerimeter configuration. Specifies sets of resources,
  /// restricted services and access levels that determine
  /// perimeter content and boundaries.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterStatus?>? status;
  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String> title;
  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
  /// for all Service Perimeters, and that spec is identical to the status for those
  /// Service Perimeters. When this flag is set, it inhibits the generation of the
  /// implicit spec, thereby allowing the user to explicitly provide a
  /// configuration ("spec") to use in a dry-run version of the Service Perimeter.
  /// This allows the user to test changes to the enforced config ("status") without
  /// actually enforcing them. This testing is done through analyzing the differences
  /// between currently enforced and suggested restrictions. useExplicitDryRunSpec must
  /// bet set to True if any of the fields in the spec are set to non-default values.
  final pulumi.Input<bool?>? useExplicitDryRunSpec;

  /// Creates a new [ServicePerimeterArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the ServicePerimeter and its use. Does not affect
  /// [name] Resource name for the ServicePerimeter. The shortName component must
  /// [parent] The AccessPolicy this ServicePerimeter lives in.
  /// [perimeterType] Specifies the type of the Perimeter. There are two types: regular and
  /// [spec] Proposed (or dry run) ServicePerimeter configuration.
  /// [status] ServicePerimeter configuration. Specifies sets of resources,
  /// [title] Human readable title. Must be unique within the Policy.
  /// [useExplicitDryRunSpec] Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
  const ServicePerimeterArgs({
    this.deletionPolicy,
    this.description,
    this.name,
    required this.parent,
    this.perimeterType,
    this.spec,
    this.status,
    required this.title,
    this.useExplicitDryRunSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'parent': parent,
      'perimeterType': ?perimeterType,
      'spec': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'title': title,
      'useExplicitDryRunSpec': ?useExplicitDryRunSpec,
    };
  }

  factory ServicePerimeterArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      perimeterType: (() { final guardedValue = map['perimeterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
      useExplicitDryRunSpec: (() { final guardedValue = map['useExplicitDryRunSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
