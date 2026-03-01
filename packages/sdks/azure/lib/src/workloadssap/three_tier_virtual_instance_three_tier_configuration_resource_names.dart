// ignore_for_file: unused_element, unnecessary_cast

import 'three_tier_virtual_instance_three_tier_configuration_resource_names_application_server.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_central_server.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_database_server.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_shared_storage.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNames {
  /// An `application_server` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer? applicationServer;
  /// A `central_server` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer? centralServer;
  /// A `database_server` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer? databaseServer;
  /// A `shared_storage` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage? sharedStorage;

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
      'applicationServer': ?applicationServer == null ? null : applicationServer!.toMap(),
      'centralServer': ?centralServer == null ? null : centralServer!.toMap(),
      'databaseServer': ?databaseServer == null ? null : databaseServer!.toMap(),
      'sharedStorage': ?sharedStorage == null ? null : sharedStorage!.toMap(),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNames.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNames(
      applicationServer: map['applicationServer'] == null ? null : ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer.fromMap((map['applicationServer'] as Map).cast<String, dynamic>()),
      centralServer: map['centralServer'] == null ? null : ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer.fromMap((map['centralServer'] as Map).cast<String, dynamic>()),
      databaseServer: map['databaseServer'] == null ? null : ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer.fromMap((map['databaseServer'] as Map).cast<String, dynamic>()),
      sharedStorage: map['sharedStorage'] == null ? null : ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage.fromMap((map['sharedStorage'] as Map).cast<String, dynamic>()),
    );
  }
}

