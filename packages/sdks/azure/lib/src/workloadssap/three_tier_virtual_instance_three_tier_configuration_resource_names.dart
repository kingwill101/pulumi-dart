// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_application_server.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_central_server.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_database_server.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_shared_storage.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNames {
  /// An `application_server` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer>? applicationServer;
  /// A `central_server` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer>? centralServer;
  /// A `database_server` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer>? databaseServer;
  /// A `shared_storage` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage>? sharedStorage;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNames].
  /// [applicationServer] An `application_server` block as defined below. Changing this forces a new resource to be created.
  /// [centralServer] A `central_server` block as defined below. Changing this forces a new resource to be created.
  /// [databaseServer] A `database_server` block as defined below. Changing this forces a new resource to be created.
  /// [sharedStorage] A `shared_storage` block as defined below. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNames({
    this.applicationServer,
    this.centralServer,
    this.databaseServer,
    this.sharedStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationServer': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer, Map<String, dynamic>>(applicationServer, (value) => value.toMap()),
      'centralServer': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer, Map<String, dynamic>>(centralServer, (value) => value.toMap()),
      'databaseServer': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer, Map<String, dynamic>>(databaseServer, (value) => value.toMap()),
      'sharedStorage': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage, Map<String, dynamic>>(sharedStorage, (value) => value.toMap()),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNames.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNames(
      applicationServer: map['applicationServer'] == null ? null : (ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer.fromMap((map['applicationServer']! as Map).cast<String, dynamic>())).input(),
      centralServer: map['centralServer'] == null ? null : (ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer.fromMap((map['centralServer']! as Map).cast<String, dynamic>())).input(),
      databaseServer: map['databaseServer'] == null ? null : (ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer.fromMap((map['databaseServer']! as Map).cast<String, dynamic>())).input(),
      sharedStorage: map['sharedStorage'] == null ? null : (ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage.fromMap((map['sharedStorage']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

