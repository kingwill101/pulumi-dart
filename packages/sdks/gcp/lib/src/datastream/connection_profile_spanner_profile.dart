// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileSpannerProfile {
  /// The full project and resource path for Spanner database. Format:
  /// projects/{project}/instances/{instance}/databases/{database}.
  final pulumi.Input<String> database;
  /// The regional Spanner endpoint. Format:
  /// https://spanner.{region}.rep.googleapis.com.
  final pulumi.Input<String>? host;

  /// Creates a new [ConnectionProfileSpannerProfile].
  /// [database] The full project and resource path for Spanner database. Format:
  /// [host] The regional Spanner endpoint. Format:
  const ConnectionProfileSpannerProfile({
    required this.database,
    this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'host': ?host,
    };
  }

  factory ConnectionProfileSpannerProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileSpannerProfile(
      database: pulumi.Input.fromValue(map['database'] as String),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
