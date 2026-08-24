// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_web3_hostname_get_web3_hostname_args_doc}
/// Arguments for getWeb3Hostname.
/// {@endtemplate}
/// {@macro pulumi_index_get_web3_hostname_get_web3_hostname_args_doc}
class GetWeb3HostnameArgs {
  /// Specify the identifier of the hostname.
  final pulumi.Input<String> identifier;
  /// Specify the identifier of the hostname.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetWeb3HostnameArgs].
  /// [identifier] Specify the identifier of the hostname.
  /// [zoneId] Specify the identifier of the hostname.
  const GetWeb3HostnameArgs({
    required this.identifier,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'zoneId': ?zoneId,
    };
  }

  factory GetWeb3HostnameArgs.fromMap(Map<String, dynamic> map) {
    return GetWeb3HostnameArgs(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
