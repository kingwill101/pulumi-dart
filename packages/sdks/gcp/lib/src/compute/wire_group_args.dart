// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wire_group_endpoint.dart';
import 'wire_group_wire_group_properties.dart';
import 'wire_group_wire_properties.dart';

/// {@template pulumi_compute_wire_group_wire_group_args_doc}
/// The set of arguments for WireGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_wire_group_wire_group_args_doc}
class WireGroupArgs {
  /// Indicates whether the wire group is administratively enabled.
  final pulumi.Input<bool?>? adminEnabled;
  /// Required cross site network to which wire group belongs.
  final pulumi.Input<String> crossSiteNetwork;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String?>? description;
  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  final pulumi.Input<List<WireGroupEndpoint>?>? endpoints;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// (Optional, Beta)
  /// Properties specific to the wire group.
  /// Structure is documented below.
  final pulumi.Input<WireGroupWireGroupProperties?>? wireGroupProperties;
  /// Default properties for wires within the group.
  /// Structure is documented below.
  final pulumi.Input<WireGroupWireProperties?>? wireProperties;

  /// Creates a new [WireGroupArgs].
  /// [adminEnabled] Indicates whether the wire group is administratively enabled.
  /// [crossSiteNetwork] Required cross site network to which wire group belongs.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [endpoints] Endpoints grouped by location, each mapping to interconnect configurations.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [project] The ID of the project in which the resource belongs.
  /// [wireGroupProperties] (Optional, Beta)
  /// [wireProperties] Default properties for wires within the group.
  const WireGroupArgs({
    this.adminEnabled,
    required this.crossSiteNetwork,
    this.deletionPolicy,
    this.description,
    this.endpoints,
    this.name,
    this.project,
    this.wireGroupProperties,
    this.wireProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'crossSiteNetwork': crossSiteNetwork,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<WireGroupEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<WireGroupEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'wireGroupProperties': ?pulumi.Input.mapOptionalInputValue<WireGroupWireGroupProperties, Map<String, dynamic>>(wireGroupProperties, (value) => value.toMap()),
      'wireProperties': ?pulumi.Input.mapOptionalInputValue<WireGroupWireProperties, Map<String, dynamic>>(wireProperties, (value) => value.toMap()),
    };
  }

  factory WireGroupArgs.fromMap(Map<String, dynamic> map) {
    return WireGroupArgs(
      adminEnabled: (() { final guardedValue = map['adminEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      crossSiteNetwork: pulumi.Input.fromValue(map['crossSiteNetwork'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WireGroupEndpoint>(guardedValue, (value) => WireGroupEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wireGroupProperties: (() { final guardedValue = map['wireGroupProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WireGroupWireGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wireProperties: (() { final guardedValue = map['wireProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WireGroupWireProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
