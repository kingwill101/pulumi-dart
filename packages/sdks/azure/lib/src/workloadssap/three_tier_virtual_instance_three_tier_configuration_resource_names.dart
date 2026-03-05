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
      applicationServer: (() { final guardedValue = map['applicationServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      centralServer: (() { final guardedValue = map['centralServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseServer: (() { final guardedValue = map['databaseServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sharedStorage: (() { final guardedValue = map['sharedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

