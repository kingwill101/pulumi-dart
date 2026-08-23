// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_share_connection.dart';
import 'managed_identity_auth_properties.dart';

/// The properties of data share source
class DataShareSource {
  /// Details for how to authenticate to the backing data store.
  final pulumi.Input<ManagedIdentityAuthProperties> authProperties;
  /// Details for how to connect to the backing data store.
  final pulumi.Input<DataShareConnection> connection;
  /// The type of the backing data source for storage connector
  /// Expected value is 'DataShare'.
  final pulumi.Input<String> type;

  /// Creates a new [DataShareSource].
  /// [authProperties] Details for how to authenticate to the backing data store.
  /// [connection] Details for how to connect to the backing data store.
  /// [type] The type of the backing data source for storage connector
  const DataShareSource({
    required this.authProperties,
    required this.connection,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProperties': pulumi.Input.mapInputValue<ManagedIdentityAuthProperties, Map<String, dynamic>>(authProperties, (value) => value.toMap()),
      'connection': pulumi.Input.mapInputValue<DataShareConnection, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'type': type,
    };
  }

  factory DataShareSource.fromMap(Map<String, dynamic> map) {
    return DataShareSource(
      authProperties: pulumi.Input.fromValue(ManagedIdentityAuthProperties.fromMap((map['authProperties']! as Map).cast<String, dynamic>())),
      connection: pulumi.Input.fromValue(DataShareConnection.fromMap((map['connection']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
