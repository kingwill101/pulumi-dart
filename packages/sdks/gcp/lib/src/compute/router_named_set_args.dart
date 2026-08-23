// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_named_set_element.dart';

/// {@template pulumi_compute_router_named_set_router_named_set_args_doc}
/// The set of arguments for RouterNamedSet.
/// {@endtemplate}
/// {@macro pulumi_compute_router_named_set_router_named_set_args_doc}
class RouterNamedSetArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of the Named Set.
  final pulumi.Input<String>? description;
  /// CEL expressions that are comparable to constructs of this set's type.
  /// Structure is documented below.
  final pulumi.Input<List<RouterNamedSetElement>>? elements;
  /// The name of the Named Set, which must be a resource ID segment and unique
  /// within all named sets owned by the Router.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where the router resides.
  final pulumi.Input<String>? region;
  /// The name of the Cloud Router in which this Named Set will be configured.
  final pulumi.Input<String> router;
  /// The type of the Named Set.
  /// Possible values are: `NAMED_SET_TYPE_PREFIX`, `NAMED_SET_TYPE_COMMUNITY`.
  final pulumi.Input<String> type;

  /// Creates a new [RouterNamedSetArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of the Named Set.
  /// [elements] CEL expressions that are comparable to constructs of this set's type.
  /// [name] The name of the Named Set, which must be a resource ID segment and unique
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the router resides.
  /// [router] The name of the Cloud Router in which this Named Set will be configured.
  /// [type] The type of the Named Set.
  const RouterNamedSetArgs({
    this.deletionPolicy,
    this.description,
    this.elements,
    this.name,
    this.project,
    this.region,
    required this.router,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'elements': ?pulumi.Input.mapOptionalInputValue<List<RouterNamedSetElement>, List<Map<String, dynamic>>>(elements, (value) => pulumi.Input.encodeList<RouterNamedSetElement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'router': router,
      'type': type,
    };
  }

  factory RouterNamedSetArgs.fromMap(Map<String, dynamic> map) {
    return RouterNamedSetArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elements: (() { final guardedValue = map['elements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterNamedSetElement>(guardedValue, (value) => RouterNamedSetElement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: pulumi.Input.fromValue(map['router'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
