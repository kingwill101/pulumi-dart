// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_connector_identity.dart';

/// Input properties used for looking up and filtering AccessConnector resources.
class AccessConnectorState {
  /// An `identity` block as defined below.
  final pulumi.Input<AccessConnectorIdentity>? identity;
  /// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Databricks Access Connector resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the Databricks Access Connector should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccessConnectorState].
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Databricks Access Connector resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Databricks Access Connector should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  AccessConnectorState({
    pulumi.Output<AccessConnectorIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<AccessConnectorIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<AccessConnectorIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccessConnectorState.fromMap(Map<String, dynamic> map) {
    return AccessConnectorState(
      identity: map['identity'] == null ? null : pulumi.Output.create<AccessConnectorIdentity>(AccessConnectorIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

