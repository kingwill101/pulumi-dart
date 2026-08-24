// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ip_ranges_get_ip_ranges_args_doc}
/// Arguments for getIpRanges.
/// {@endtemplate}
/// {@macro pulumi_index_get_ip_ranges_get_ip_ranges_args_doc}
class GetIpRangesArgs {
  /// Specified as `jdcloud` to list IPs used by JD Cloud data centers.
  final pulumi.Input<String?>? networks;

  /// Creates a new [GetIpRangesArgs].
  /// [networks] Specified as `jdcloud` to list IPs used by JD Cloud data centers.
  const GetIpRangesArgs({
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networks': ?networks,
    };
  }

  factory GetIpRangesArgs.fromMap(Map<String, dynamic> map) {
    return GetIpRangesArgs(
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
