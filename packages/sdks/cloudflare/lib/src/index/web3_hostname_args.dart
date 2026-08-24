// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_web3_hostname_web3_hostname_args_doc}
/// The set of arguments for Web3Hostname.
/// {@endtemplate}
/// {@macro pulumi_index_web3_hostname_web3_hostname_args_doc}
class Web3HostnameArgs {
  /// Specify an optional description of the hostname.
  final pulumi.Input<String?>? description;
  /// Specify the DNSLink value used if the target is ipfs.
  final pulumi.Input<String?>? dnslink;
  /// Specify the hostname that points to the target gateway via CNAME.
  final pulumi.Input<String> name;
  /// Specify the target gateway of the hostname.
  /// Available values: "ethereum", "ipfs", "ipfs*universal*path".
  final pulumi.Input<String> target;
  /// Specify the identifier of the hostname.
  final pulumi.Input<String> zoneId;

  /// Creates a new [Web3HostnameArgs].
  /// [description] Specify an optional description of the hostname.
  /// [dnslink] Specify the DNSLink value used if the target is ipfs.
  /// [name] Specify the hostname that points to the target gateway via CNAME.
  /// [target] Specify the target gateway of the hostname.
  /// [zoneId] Specify the identifier of the hostname.
  const Web3HostnameArgs({
    this.description,
    this.dnslink,
    required this.name,
    required this.target,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dnslink': ?dnslink,
      'name': name,
      'target': target,
      'zoneId': zoneId,
    };
  }

  factory Web3HostnameArgs.fromMap(Map<String, dynamic> map) {
    return Web3HostnameArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnslink: (() { final guardedValue = map['dnslink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
