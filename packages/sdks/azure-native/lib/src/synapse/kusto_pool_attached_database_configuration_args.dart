// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_level_sharing_properties.dart';

/// {@template pulumi_synapse_kusto_pool_attached_database_configuration_args_doc}
/// The set of arguments for KustoPoolAttachedDatabaseConfiguration.
/// {@endtemplate}
/// {@macro pulumi_synapse_kusto_pool_attached_database_configuration_args_doc}
class KustoPoolAttachedDatabaseConfigurationArgs {
  /// The name of the attached database configuration.
  final pulumi.Input<String?>? attachedDatabaseConfigurationName;
  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  final pulumi.Input<String> databaseName;
  /// The default principals modification kind
  final pulumi.Input<dynamic> defaultPrincipalsModificationKind;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The resource id of the kusto pool where the databases you would like to attach reside.
  final pulumi.Input<String> kustoPoolResourceId;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Table level sharing specifications
  final pulumi.Input<TableLevelSharingProperties?>? tableLevelSharingProperties;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [KustoPoolAttachedDatabaseConfigurationArgs].
  /// [attachedDatabaseConfigurationName] The name of the attached database configuration.
  /// [databaseName] The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  /// [defaultPrincipalsModificationKind] The default principals modification kind
  /// [kustoPoolName] The name of the Kusto pool.
  /// [kustoPoolResourceId] The resource id of the kusto pool where the databases you would like to attach reside.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tableLevelSharingProperties] Table level sharing specifications
  /// [workspaceName] The name of the workspace.
  const KustoPoolAttachedDatabaseConfigurationArgs({
    this.attachedDatabaseConfigurationName,
    required this.databaseName,
    required this.defaultPrincipalsModificationKind,
    required this.kustoPoolName,
    required this.kustoPoolResourceId,
    this.location,
    required this.resourceGroupName,
    this.tableLevelSharingProperties,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseConfigurationName': ?attachedDatabaseConfigurationName,
      'databaseName': databaseName,
      'defaultPrincipalsModificationKind': defaultPrincipalsModificationKind,
      'kustoPoolName': kustoPoolName,
      'kustoPoolResourceId': kustoPoolResourceId,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tableLevelSharingProperties': ?pulumi.Input.mapOptionalInputValue<TableLevelSharingProperties, Map<String, dynamic>>(tableLevelSharingProperties, (value) => value.toMap()),
      'workspaceName': workspaceName,
    };
  }

  factory KustoPoolAttachedDatabaseConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return KustoPoolAttachedDatabaseConfigurationArgs(
      attachedDatabaseConfigurationName: (() { final guardedValue = map['attachedDatabaseConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      defaultPrincipalsModificationKind: pulumi.Input.fromValue(map['defaultPrincipalsModificationKind']),
      kustoPoolName: pulumi.Input.fromValue(map['kustoPoolName'] as String),
      kustoPoolResourceId: pulumi.Input.fromValue(map['kustoPoolResourceId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tableLevelSharingProperties: (() { final guardedValue = map['tableLevelSharingProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableLevelSharingProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
