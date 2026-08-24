// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityDirectoryServiceTlsSettings {
  /// TLS certificate verification mode for the connection to the origin.
  final pulumi.Input<String> certVerificationMode;

  /// Creates a new [GetConnectivityDirectoryServiceTlsSettings].
  /// [certVerificationMode] TLS certificate verification mode for the connection to the origin.
  const GetConnectivityDirectoryServiceTlsSettings({
    required this.certVerificationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certVerificationMode': certVerificationMode,
    };
  }

  factory GetConnectivityDirectoryServiceTlsSettings.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServiceTlsSettings(
      certVerificationMode: pulumi.Input.fromValue(map['certVerificationMode'] as String),
    );
  }
}
