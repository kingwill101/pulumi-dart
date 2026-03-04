// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_managed_private_endpoint_managed_private_endpoint_args_doc}
/// The set of arguments for ManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_datafactory_managed_private_endpoint_managed_private_endpoint_args_doc}
class ManagedPrivateEndpointArgs {
  /// The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataFactoryId;

  /// Fully qualified domain names. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Possible values are listed in [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#dns-configuration).
  final pulumi.Input<List<String>>? fqdns;

  /// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subresourceName;

  /// The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [ManagedPrivateEndpointArgs].
  /// [dataFactoryId] The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [fqdns] Fully qualified domain names. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [subresourceName] Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ManagedPrivateEndpointArgs({
    required this.dataFactoryId,
    this.fqdns,
    this.name,
    this.subresourceName,
    required this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': dataFactoryId,
      'fqdns': ?fqdns,
      'name': ?name,
      'subresourceName': ?subresourceName,
      'targetResourceId': targetResourceId,
    };
  }

  factory ManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointArgs(
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      fqdns: (() {
        final guardedValue = map['fqdns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subresourceName: (() {
        final guardedValue = map['subresourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetResourceId: pulumi.Input.fromValue(
        map['targetResourceId'] as String,
      ),
    );
  }
}
