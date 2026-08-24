// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_web3_hostnames_get_web3_hostnames_args_doc}
/// Arguments for getWeb3Hostnames.
/// {@endtemplate}
/// {@macro pulumi_index_get_web3_hostnames_get_web3_hostnames_args_doc}
class GetWeb3HostnamesArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Specify the identifier of the hostname.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetWeb3HostnamesArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Specify the identifier of the hostname.
  const GetWeb3HostnamesArgs({
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetWeb3HostnamesArgs.fromMap(Map<String, dynamic> map) {
    return GetWeb3HostnamesArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
