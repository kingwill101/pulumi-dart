// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_share_source.dart';

/// The storage connector properties
class StorageConnectorProperties {
  /// The type of backing data source for this Storage Connector.
  final pulumi.Input<String> dataSourceType;
  /// Arbitrary description of this Storage Connector. Max 250 characters.
  final pulumi.Input<String>? description;
  /// Information about how to communicate with and authenticate to the backing data store.
  final pulumi.Input<DataShareSource> source;
  /// State - Active or Inactive. Whether or not the Storage Connector should start as active (default: Active)
  /// (While set to false on the Storage Connector, all data plane requests using this Storage Connector fail, and this Storage Connector is not billed if it would be otherwise.
  final pulumi.Input<String>? state;
  /// Test connection to backing data source before creating the storage connector.
  final pulumi.Input<bool>? testConnection;

  /// Creates a new [StorageConnectorProperties].
  /// [dataSourceType] The type of backing data source for this Storage Connector.
  /// [description] Arbitrary description of this Storage Connector. Max 250 characters.
  /// [source] Information about how to communicate with and authenticate to the backing data store.
  /// [state] State - Active or Inactive. Whether or not the Storage Connector should start as active (default: Active)
  /// [testConnection] Test connection to backing data source before creating the storage connector.
  const StorageConnectorProperties({
    required this.dataSourceType,
    this.description,
    required this.source,
    this.state,
    this.testConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceType': dataSourceType,
      'description': ?description,
      'source': pulumi.Input.mapInputValue<DataShareSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'state': ?state,
      'testConnection': ?testConnection,
    };
  }

  factory StorageConnectorProperties.fromMap(Map<String, dynamic> map) {
    return StorageConnectorProperties(
      dataSourceType: pulumi.Input.fromValue(map['dataSourceType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(DataShareSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testConnection: (() { final guardedValue = map['testConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
