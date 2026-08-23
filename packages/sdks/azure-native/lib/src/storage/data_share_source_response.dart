// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_share_connection_response.dart';
import 'managed_identity_auth_properties_response.dart';

/// The properties of data share source
class DataShareSourceResponse {
  /// Details for how to authenticate to the backing data store.
  final pulumi.Input<ManagedIdentityAuthPropertiesResponse> authProperties;
  /// Details for how to connect to the backing data store.
  final pulumi.Input<DataShareConnectionResponse> connection;
  /// The type of the backing data source for storage connector
  /// Expected value is 'DataShare'.
  final pulumi.Input<String> type;

  /// Creates a new [DataShareSourceResponse].
  /// [authProperties] Details for how to authenticate to the backing data store.
  /// [connection] Details for how to connect to the backing data store.
  /// [type] The type of the backing data source for storage connector
  const DataShareSourceResponse({
    required this.authProperties,
    required this.connection,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProperties': pulumi.Input.mapInputValue<ManagedIdentityAuthPropertiesResponse, Map<String, dynamic>>(authProperties, (value) => value.toMap()),
      'connection': pulumi.Input.mapInputValue<DataShareConnectionResponse, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'type': type,
    };
  }

  factory DataShareSourceResponse.fromMap(Map<String, dynamic> map) {
    return DataShareSourceResponse(
      authProperties: pulumi.Input.fromValue(ManagedIdentityAuthPropertiesResponse.fromMap((map['authProperties']! as Map).cast<String, dynamic>())),
      connection: pulumi.Input.fromValue(DataShareConnectionResponse.fromMap((map['connection']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
