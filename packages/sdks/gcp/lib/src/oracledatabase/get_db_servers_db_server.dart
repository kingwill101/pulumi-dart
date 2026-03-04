// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_db_server_property.dart';

class GetDbServersDbServer {
  /// The Display name
  final pulumi.Input<String> displayName;
  final pulumi.Input<List<GetDbServersDbServerProperty>> properties;

  /// Creates a new [GetDbServersDbServer].
  /// [displayName] The Display name
  /// [properties] Required.
  GetDbServersDbServer({required this.displayName, required this.properties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'properties':
          pulumi.Input.mapInputValue<
            List<GetDbServersDbServerProperty>,
            List<Map<String, dynamic>>
          >(
            properties,
            (value) =>
                pulumi.Input.encodeList<
                  GetDbServersDbServerProperty,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetDbServersDbServer.fromMap(Map<String, dynamic> map) {
    return GetDbServersDbServer(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      properties: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDbServersDbServerProperty>(
          map['properties']!,
          (value) => GetDbServersDbServerProperty.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
