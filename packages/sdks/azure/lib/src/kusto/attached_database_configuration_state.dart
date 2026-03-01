// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_database_configuration_sharing.dart';

/// Input properties used for looking up and filtering AttachedDatabaseConfiguration resources.
class AttachedDatabaseConfigurationState {
  /// The list of databases from the `cluster_resource_id` which are currently attached to the cluster.
  final pulumi.Input<List<String>>? attachedDatabaseNames;
  /// The resource id of the cluster where the databases you would like to attach reside.
  final pulumi.Input<String>? clusterId;
  /// Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterName;
  final pulumi.Input<String>? clusterResourceId;
  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseName;
  /// The default principals modification kind. Valid values are: `None` (default), `Replace` and `Union`. Defaults to `None`.
  final pulumi.Input<String>? defaultPrincipalModificationKind;
  /// Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `sharing` block as defined below.
  final pulumi.Input<AttachedDatabaseConfigurationSharing>? sharing;

  /// Creates a new [AttachedDatabaseConfigurationState].
  /// [attachedDatabaseNames] The list of databases from the `cluster_resource_id` which are currently attached to the cluster.
  /// [clusterId] The resource id of the cluster where the databases you would like to attach reside.
  /// [clusterName] Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  /// [clusterResourceId] Optional.
  /// [databaseName] The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created.
  /// [defaultPrincipalModificationKind] The default principals modification kind. Valid values are: `None` (default), `Replace` and `Union`. Defaults to `None`.
  /// [location] Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  /// [sharing] A `sharing` block as defined below.
  AttachedDatabaseConfigurationState({
    pulumi.Output<List<String>>? attachedDatabaseNames,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? clusterResourceId,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? defaultPrincipalModificationKind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<AttachedDatabaseConfigurationSharing>? sharing,
  }) :
      attachedDatabaseNames = pulumi.Input.asOptionalInput<List<String>>(attachedDatabaseNames),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterResourceId = pulumi.Input.asOptionalInput<String>(clusterResourceId),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      defaultPrincipalModificationKind = pulumi.Input.asOptionalInput<String>(defaultPrincipalModificationKind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sharing = pulumi.Input.asOptionalInput<AttachedDatabaseConfigurationSharing>(sharing);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseNames': ?attachedDatabaseNames,
      'clusterId': ?clusterId,
      'clusterName': ?clusterName,
      'clusterResourceId': ?clusterResourceId,
      'databaseName': ?databaseName,
      'defaultPrincipalModificationKind': ?defaultPrincipalModificationKind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sharing': ?pulumi.Input.mapOptionalInputValue<AttachedDatabaseConfigurationSharing, Map<String, dynamic>>(sharing, (value) => value.toMap()),
    };
  }

  factory AttachedDatabaseConfigurationState.fromMap(Map<String, dynamic> map) {
    return AttachedDatabaseConfigurationState(
      attachedDatabaseNames: map['attachedDatabaseNames'] == null ? null : pulumi.Output.create<List<String>>((map['attachedDatabaseNames'] as List).cast<String>()),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterResourceId: map['clusterResourceId'] == null ? null : pulumi.Output.create<String>(map['clusterResourceId'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      defaultPrincipalModificationKind: map['defaultPrincipalModificationKind'] == null ? null : pulumi.Output.create<String>(map['defaultPrincipalModificationKind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sharing: map['sharing'] == null ? null : pulumi.Output.create<AttachedDatabaseConfigurationSharing>(AttachedDatabaseConfigurationSharing.fromMap((map['sharing'] as Map).cast<String, dynamic>())),
    );
  }
}

