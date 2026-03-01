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
  /// > **Note:** Possible values are listed in [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#dns-configuration).
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
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<List<String>>? fqdns,
    pulumi.Output<String>? name,
    pulumi.Output<String>? subresourceName,
    required pulumi.Output<String> targetResourceId,
  }) :
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      fqdns = pulumi.Input.asOptionalInput<List<String>>(fqdns),
      name = pulumi.Input.asOptionalInput<String>(name),
      subresourceName = pulumi.Input.asOptionalInput<String>(subresourceName),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

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
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      fqdns: map['fqdns'] == null ? null : pulumi.Output.create<List<String>>((map['fqdns'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      subresourceName: map['subresourceName'] == null ? null : pulumi.Output.create<String>(map['subresourceName'] as String),
      targetResourceId: pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

