// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedPrivateEndpoint resources.
class ManagedPrivateEndpointState {
  /// The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dataFactoryId;
  /// Fully qualified domain names. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Possible values are listed in [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#dns-configuration).
  final pulumi.Input<List<String>>? fqdns;
  /// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subresourceName;
  /// The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [ManagedPrivateEndpointState].
  /// [dataFactoryId] The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [fqdns] Fully qualified domain names. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [subresourceName] Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ManagedPrivateEndpointState({
    this.dataFactoryId,
    this.fqdns,
    this.name,
    this.subresourceName,
    this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': ?dataFactoryId,
      'fqdns': ?fqdns,
      'name': ?name,
      'subresourceName': ?subresourceName,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory ManagedPrivateEndpointState.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointState(
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId']! as String).input(),
      fqdns: map['fqdns'] == null ? null : ((map['fqdns']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      subresourceName: map['subresourceName'] == null ? null : (map['subresourceName']! as String).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId']! as String).input(),
    );
  }
}

