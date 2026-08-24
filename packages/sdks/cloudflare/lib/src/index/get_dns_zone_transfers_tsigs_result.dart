// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsZoneTransfersTsigsResult {
  /// TSIG algorithm.
  final pulumi.Input<String> algo;
  final pulumi.Input<String> id;
  /// TSIG key name.
  final pulumi.Input<String> name;
  /// TSIG secret.
  final pulumi.Input<String> secret;

  /// Creates a new [GetDnsZoneTransfersTsigsResult].
  /// [algo] TSIG algorithm.
  /// [id] Required.
  /// [name] TSIG key name.
  /// [secret] TSIG secret.
  const GetDnsZoneTransfersTsigsResult({
    required this.algo,
    required this.id,
    required this.name,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algo': algo,
      'id': id,
      'name': name,
      'secret': secret,
    };
  }

  factory GetDnsZoneTransfersTsigsResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersTsigsResult(
      algo: pulumi.Input.fromValue(map['algo'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}
