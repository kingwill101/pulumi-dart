// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_connector_identity.dart';

/// {@template pulumi_databricks_access_connector_access_connector_args_doc}
/// The set of arguments for AccessConnector.
/// {@endtemplate}
/// {@macro pulumi_databricks_access_connector_access_connector_args_doc}
class AccessConnectorArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<AccessConnectorIdentity>? identity;
  /// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Databricks Access Connector resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the Databricks Access Connector should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccessConnectorArgs].
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Databricks Access Connector resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Databricks Access Connector should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const AccessConnectorArgs({
    this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<AccessConnectorIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccessConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AccessConnectorArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessConnectorIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
