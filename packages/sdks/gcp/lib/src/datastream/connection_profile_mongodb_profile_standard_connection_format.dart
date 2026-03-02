// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileMongodbProfileStandardConnectionFormat {
  /// Specifies whether the client connects directly to the
  /// host[:port] in the connection URI.
  final pulumi.Input<bool>? directConnection;

  /// Creates a new [ConnectionProfileMongodbProfileStandardConnectionFormat].
  /// [directConnection] Specifies whether the client connects directly to the
  ConnectionProfileMongodbProfileStandardConnectionFormat({
    this.directConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directConnection': ?directConnection,
    };
  }

  factory ConnectionProfileMongodbProfileStandardConnectionFormat.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMongodbProfileStandardConnectionFormat(
      directConnection: map['directConnection'] == null ? null : (map['directConnection']! as bool).input(),
    );
  }
}

