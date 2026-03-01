// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_spec.dart';
import 'service_perimeter_status.dart';

/// Input properties used for looking up and filtering ServicePerimeter resources.
class ServicePerimeterState {
  /// Time the AccessPolicy was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Description of the ServicePerimeter and its use. Does not affect
  /// behavior.
  final pulumi.Input<String>? description;
  /// Resource name for the ServicePerimeter. The short_name component must
  /// begin with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}
  final pulumi.Input<String>? name;
  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String>? parent;
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
  final pulumi.Input<ServicePerimeterSpec>? spec;
  /// ServicePerimeter configuration. Specifies sets of resources,
  /// restricted services and access levels that determine
  /// perimeter content and boundaries.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterStatus>? status;
  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String>? title;
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

  /// Creates a new [ServicePerimeterState].
  /// [createTime] Time the AccessPolicy was created in UTC.
  /// [description] Description of the ServicePerimeter and its use. Does not affect
  /// [name] Resource name for the ServicePerimeter. The short_name component must
  /// [parent] The AccessPolicy this ServicePerimeter lives in.
  /// [perimeterType] Specifies the type of the Perimeter. There are two types: regular and
  /// [spec] Proposed (or dry run) ServicePerimeter configuration.
  /// [status] ServicePerimeter configuration. Specifies sets of resources,
  /// [title] Human readable title. Must be unique within the Policy.
  /// [updateTime] Time the AccessPolicy was updated in UTC.
  /// [useExplicitDryRunSpec] Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
  ServicePerimeterState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? perimeterType,
    pulumi.Output<ServicePerimeterSpec>? spec,
    pulumi.Output<ServicePerimeterStatus>? status,
    pulumi.Output<String>? title,
    pulumi.Output<String>? updateTime,
    pulumi.Output<bool>? useExplicitDryRunSpec,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      perimeterType = pulumi.Input.asOptionalInput<String>(perimeterType),
      spec = pulumi.Input.asOptionalInput<ServicePerimeterSpec>(spec),
      status = pulumi.Input.asOptionalInput<ServicePerimeterStatus>(status),
      title = pulumi.Input.asOptionalInput<String>(title),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      useExplicitDryRunSpec = pulumi.Input.asOptionalInput<bool>(useExplicitDryRunSpec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'parent': ?parent,
      'perimeterType': ?perimeterType,
      'spec': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'title': ?title,
      'updateTime': ?updateTime,
      'useExplicitDryRunSpec': ?useExplicitDryRunSpec,
    };
  }

  factory ServicePerimeterState.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      perimeterType: map['perimeterType'] == null ? null : pulumi.Output.create<String>(map['perimeterType'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<ServicePerimeterSpec>(ServicePerimeterSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<ServicePerimeterStatus>(ServicePerimeterStatus.fromMap((map['status'] as Map).cast<String, dynamic>())),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      useExplicitDryRunSpec: map['useExplicitDryRunSpec'] == null ? null : pulumi.Output.create<bool>(map['useExplicitDryRunSpec'] as bool),
    );
  }
}

