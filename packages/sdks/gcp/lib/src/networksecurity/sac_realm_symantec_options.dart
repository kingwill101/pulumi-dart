// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SacRealmSymantecOptions {
  /// (Output)
  /// Symantec site IDs which the user can choose to connect to.
  final pulumi.Input<List<String>?>? availableSymantecSites;
  /// API Key used to call Symantec APIs on the user's behalf. Required if using Symantec Cloud SWG. P4SA account needs permissions granted to read this secret.
  /// A secret ID, secret name, or secret URI can be specified, but it will be parsed and stored as a secret URI in the form projects/{projectNumber}/secrets/my-secret.
  final pulumi.Input<String?>? secretPath;
  /// (Output)
  /// Connection status to Symantec API
  final pulumi.Input<String?>? symantecConnectionState;

  /// Creates a new [SacRealmSymantecOptions].
  /// [availableSymantecSites] (Output)
  /// [secretPath] API Key used to call Symantec APIs on the user's behalf. Required if using Symantec Cloud SWG. P4SA account needs permissions granted to read this secret.
  /// [symantecConnectionState] (Output)
  const SacRealmSymantecOptions({
    this.availableSymantecSites,
    this.secretPath,
    this.symantecConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSymantecSites': ?availableSymantecSites,
      'secretPath': ?secretPath,
      'symantecConnectionState': ?symantecConnectionState,
    };
  }

  factory SacRealmSymantecOptions.fromMap(Map<String, dynamic> map) {
    return SacRealmSymantecOptions(
      availableSymantecSites: (() { final guardedValue = map['availableSymantecSites']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      secretPath: (() { final guardedValue = map['secretPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      symantecConnectionState: (() { final guardedValue = map['symantecConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
