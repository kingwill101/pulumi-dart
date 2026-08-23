// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_share_source_response.dart';

/// The storage connector properties
class StorageConnectorPropertiesResponse {
  /// System-generated creation time of the Storage Connector in ISO 8601 date-time format (YYYY-MM-DDTHH:mm:ssZ).
  /// Not a valid input parameter during creating.
  final pulumi.Input<String> creationTime;
  /// The type of backing data source for this Storage Connector.
  final pulumi.Input<String> dataSourceType;
  /// Arbitrary description of this Storage Connector. Max 250 characters.
  final pulumi.Input<String>? description;
  /// Represents the provisioning state of the storage connector.
  final pulumi.Input<String> provisioningState;
  /// Information about how to communicate with and authenticate to the backing data store.
  final pulumi.Input<DataShareSourceResponse> source;
  /// State - Active or Inactive. Whether or not the Storage Connector should start as active (default: Active)
  /// (While set to false on the Storage Connector, all data plane requests using this Storage Connector fail, and this Storage Connector is not billed if it would be otherwise.
  final pulumi.Input<String>? state;
  /// System-generated GUID identifier for the Storage Connector. Not a valid input parameter when creating.
  final pulumi.Input<String> uniqueId;

  /// Creates a new [StorageConnectorPropertiesResponse].
  /// [creationTime] System-generated creation time of the Storage Connector in ISO 8601 date-time format (YYYY-MM-DDTHH:mm:ssZ).
  /// [dataSourceType] The type of backing data source for this Storage Connector.
  /// [description] Arbitrary description of this Storage Connector. Max 250 characters.
  /// [provisioningState] Represents the provisioning state of the storage connector.
  /// [source] Information about how to communicate with and authenticate to the backing data store.
  /// [state] State - Active or Inactive. Whether or not the Storage Connector should start as active (default: Active)
  /// [uniqueId] System-generated GUID identifier for the Storage Connector. Not a valid input parameter when creating.
  const StorageConnectorPropertiesResponse({
    required this.creationTime,
    required this.dataSourceType,
    this.description,
    required this.provisioningState,
    required this.source,
    this.state,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'dataSourceType': dataSourceType,
      'description': ?description,
      'provisioningState': provisioningState,
      'source': pulumi.Input.mapInputValue<DataShareSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'state': ?state,
      'uniqueId': uniqueId,
    };
  }

  factory StorageConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageConnectorPropertiesResponse(
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      dataSourceType: pulumi.Input.fromValue(map['dataSourceType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      source: pulumi.Input.fromValue(DataShareSourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>())),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniqueId: pulumi.Input.fromValue(map['uniqueId'] as String),
    );
  }
}
