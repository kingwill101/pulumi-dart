// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectivityDirectoryServiceTlsSettings {
  /// TLS certificate verification mode for the connection to the origin.
  final pulumi.Input<String> certVerificationMode;

  /// Creates a new [ConnectivityDirectoryServiceTlsSettings].
  /// [certVerificationMode] TLS certificate verification mode for the connection to the origin.
  const ConnectivityDirectoryServiceTlsSettings({
    required this.certVerificationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certVerificationMode': certVerificationMode,
    };
  }

  factory ConnectivityDirectoryServiceTlsSettings.fromMap(Map<String, dynamic> map) {
    return ConnectivityDirectoryServiceTlsSettings(
      certVerificationMode: pulumi.Input.fromValue(map['certVerificationMode'] as String),
    );
  }
}
