// ignore_for_file: unused_element, unnecessary_cast

import 'application_server_full_resource_names.dart';
import 'central_server_full_resource_names.dart';
import 'database_server_full_resource_names.dart';
import 'shared_storage_resource_names.dart';

/// The resource name object where the specified values will be full resource names of the corresponding resources in a three tier SAP system.
class ThreeTierFullResourceNames {
  /// The full resource names object for application layer resources. The number of entries in this list should be equal to the number VMs to be created for application layer.
  final ApplicationServerFullResourceNames? applicationServer;
  /// The full resource names object for central server layer resources.
  final CentralServerFullResourceNames? centralServer;
  /// The full resource names object for database layer resources. The number of entries in this list should be equal to the number VMs to be created for database layer.
  final DatabaseServerFullResourceNames? databaseServer;
  /// The pattern type to be used for resource naming.
  /// Expected value is 'FullResourceName'.
  final String namingPatternType;
  /// The resource names object for shared storage.
  final SharedStorageResourceNames? sharedStorage;

  /// Creates a new [ThreeTierFullResourceNames].
  /// [applicationServer] The full resource names object for application layer resources. The number of entries in this list should be equal to the number VMs to be created for application layer.
  /// [centralServer] The full resource names object for central server layer resources.
  /// [databaseServer] The full resource names object for database layer resources. The number of entries in this list should be equal to the number VMs to be created for database layer.
  /// [namingPatternType] The pattern type to be used for resource naming.
  /// [sharedStorage] The resource names object for shared storage.
  ThreeTierFullResourceNames({
    this.applicationServer,
    this.centralServer,
    this.databaseServer,
    required this.namingPatternType,
    this.sharedStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationServer': ?applicationServer == null ? null : applicationServer!.toMap(),
      'centralServer': ?centralServer == null ? null : centralServer!.toMap(),
      'databaseServer': ?databaseServer == null ? null : databaseServer!.toMap(),
      'namingPatternType': namingPatternType,
      'sharedStorage': ?sharedStorage == null ? null : sharedStorage!.toMap(),
    };
  }

  factory ThreeTierFullResourceNames.fromMap(Map<String, dynamic> map) {
    return ThreeTierFullResourceNames(
      applicationServer: map['applicationServer'] == null ? null : ApplicationServerFullResourceNames.fromMap((map['applicationServer'] as Map).cast<String, dynamic>()),
      centralServer: map['centralServer'] == null ? null : CentralServerFullResourceNames.fromMap((map['centralServer'] as Map).cast<String, dynamic>()),
      databaseServer: map['databaseServer'] == null ? null : DatabaseServerFullResourceNames.fromMap((map['databaseServer'] as Map).cast<String, dynamic>()),
      namingPatternType: map['namingPatternType'] as String,
      sharedStorage: map['sharedStorage'] == null ? null : SharedStorageResourceNames.fromMap((map['sharedStorage'] as Map).cast<String, dynamic>()),
    );
  }
}

