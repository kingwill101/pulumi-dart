// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_server_full_resource_names_response.dart';
import 'central_server_full_resource_names_response.dart';
import 'database_server_full_resource_names_response.dart';
import 'shared_storage_resource_names_response.dart';

/// The resource name object where the specified values will be full resource names of the corresponding resources in a three tier SAP system.
class ThreeTierFullResourceNamesResponse {
  /// The full resource names object for application layer resources. The number of entries in this list should be equal to the number VMs to be created for application layer.
  final pulumi.Input<ApplicationServerFullResourceNamesResponse>?
  applicationServer;

  /// The full resource names object for central server layer resources.
  final pulumi.Input<CentralServerFullResourceNamesResponse>? centralServer;

  /// The full resource names object for database layer resources. The number of entries in this list should be equal to the number VMs to be created for database layer.
  final pulumi.Input<DatabaseServerFullResourceNamesResponse>? databaseServer;

  /// The pattern type to be used for resource naming.
  /// Expected value is 'FullResourceName'.
  final pulumi.Input<String> namingPatternType;

  /// The resource names object for shared storage.
  final pulumi.Input<SharedStorageResourceNamesResponse>? sharedStorage;

  /// Creates a new [ThreeTierFullResourceNamesResponse].
  /// [applicationServer] The full resource names object for application layer resources. The number of entries in this list should be equal to the number VMs to be created for application layer.
  /// [centralServer] The full resource names object for central server layer resources.
  /// [databaseServer] The full resource names object for database layer resources. The number of entries in this list should be equal to the number VMs to be created for database layer.
  /// [namingPatternType] The pattern type to be used for resource naming.
  /// [sharedStorage] The resource names object for shared storage.
  ThreeTierFullResourceNamesResponse({
    this.applicationServer,
    this.centralServer,
    this.databaseServer,
    required this.namingPatternType,
    this.sharedStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationServer':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationServerFullResourceNamesResponse,
            Map<String, dynamic>
          >(applicationServer, (value) => value.toMap()),
      'centralServer':
          ?pulumi.Input.mapOptionalInputValue<
            CentralServerFullResourceNamesResponse,
            Map<String, dynamic>
          >(centralServer, (value) => value.toMap()),
      'databaseServer':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseServerFullResourceNamesResponse,
            Map<String, dynamic>
          >(databaseServer, (value) => value.toMap()),
      'namingPatternType': namingPatternType,
      'sharedStorage':
          ?pulumi.Input.mapOptionalInputValue<
            SharedStorageResourceNamesResponse,
            Map<String, dynamic>
          >(sharedStorage, (value) => value.toMap()),
    };
  }

  factory ThreeTierFullResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return ThreeTierFullResourceNamesResponse(
      applicationServer: (() {
        final guardedValue = map['applicationServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationServerFullResourceNamesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      centralServer: (() {
        final guardedValue = map['centralServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CentralServerFullResourceNamesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      databaseServer: (() {
        final guardedValue = map['databaseServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseServerFullResourceNamesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      namingPatternType: pulumi.Input.fromValue(
        map['namingPatternType'] as String,
      ),
      sharedStorage: (() {
        final guardedValue = map['sharedStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SharedStorageResourceNamesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
