// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_database_configuration_sharing.dart';

/// Input properties used for looking up and filtering AttachedDatabaseConfiguration resources.
class AttachedDatabaseConfigurationState {
  /// The list of databases from the `clusterResourceId` which are currently attached to the cluster.
  final pulumi.Input<List<String>?>? attachedDatabaseNames;
  /// The resource id of the cluster where the databases you would like to attach reside.
  final pulumi.Input<String?>? clusterId;
  /// Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? clusterName;
  final pulumi.Input<String?>? clusterResourceId;
  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? databaseName;
  /// The database name to use for the attached database instead of using the original database name. Relevant only when attaching to a specific database.
  final pulumi.Input<String?>? databaseNameOverride;
  /// Adds a prefix to the attached databases name. When following an entire cluster, that prefix would be added to all of the databases original names from leader cluster.
  ///
  /// &gt; **Note:** Exactly one of  `databaseNameOverride` and `databaseNamePrefix` can be specified.
  final pulumi.Input<String?>? databaseNamePrefix;
  /// The default principals modification kind. Valid values are: `None` (default), `Replace` and `Union`. Defaults to `None`.
  final pulumi.Input<String?>? defaultPrincipalModificationKind;
  /// Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `sharing` block as defined below.
  final pulumi.Input<AttachedDatabaseConfigurationSharing?>? sharing;

  /// Creates a new [AttachedDatabaseConfigurationState].
  /// [attachedDatabaseNames] The list of databases from the `clusterResourceId` which are currently attached to the cluster.
  /// [clusterId] The resource id of the cluster where the databases you would like to attach reside.
  /// [clusterName] Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  /// [clusterResourceId] Optional.
  /// [databaseName] The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created.
  /// [databaseNameOverride] The database name to use for the attached database instead of using the original database name. Relevant only when attaching to a specific database.
  /// [databaseNamePrefix] Adds a prefix to the attached databases name. When following an entire cluster, that prefix would be added to all of the databases original names from leader cluster.
  /// [defaultPrincipalModificationKind] The default principals modification kind. Valid values are: `None` (default), `Replace` and `Union`. Defaults to `None`.
  /// [location] Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  /// [sharing] A `sharing` block as defined below.
  const AttachedDatabaseConfigurationState({
    this.attachedDatabaseNames,
    this.clusterId,
    this.clusterName,
    this.clusterResourceId,
    this.databaseName,
    this.databaseNameOverride,
    this.databaseNamePrefix,
    this.defaultPrincipalModificationKind,
    this.location,
    this.name,
    this.resourceGroupName,
    this.sharing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseNames': ?attachedDatabaseNames,
      'clusterId': ?clusterId,
      'clusterName': ?clusterName,
      'clusterResourceId': ?clusterResourceId,
      'databaseName': ?databaseName,
      'databaseNameOverride': ?databaseNameOverride,
      'databaseNamePrefix': ?databaseNamePrefix,
      'defaultPrincipalModificationKind': ?defaultPrincipalModificationKind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sharing': ?pulumi.Input.mapOptionalInputValue<AttachedDatabaseConfigurationSharing, Map<String, dynamic>>(sharing, (value) => value.toMap()),
    };
  }

  factory AttachedDatabaseConfigurationState.fromMap(Map<String, dynamic> map) {
    return AttachedDatabaseConfigurationState(
      attachedDatabaseNames: (() { final guardedValue = map['attachedDatabaseNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterResourceId: (() { final guardedValue = map['clusterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseNameOverride: (() { final guardedValue = map['databaseNameOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseNamePrefix: (() { final guardedValue = map['databaseNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultPrincipalModificationKind: (() { final guardedValue = map['defaultPrincipalModificationKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharing: (() { final guardedValue = map['sharing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedDatabaseConfigurationSharing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
