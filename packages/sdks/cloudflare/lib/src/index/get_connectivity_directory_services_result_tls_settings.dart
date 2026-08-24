// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityDirectoryServicesResultTlsSettings {
  /// TLS certificate verification mode for the connection to the origin.
  final pulumi.Input<String> certVerificationMode;

  /// Creates a new [GetConnectivityDirectoryServicesResultTlsSettings].
  /// [certVerificationMode] TLS certificate verification mode for the connection to the origin.
  const GetConnectivityDirectoryServicesResultTlsSettings({
    required this.certVerificationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certVerificationMode': certVerificationMode,
    };
  }

  factory GetConnectivityDirectoryServicesResultTlsSettings.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServicesResultTlsSettings(
      certVerificationMode: pulumi.Input.fromValue(map['certVerificationMode'] as String),
    );
  }
}
