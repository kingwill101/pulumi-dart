// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ipv6_range_get_ipv6_range_args_doc}
/// Arguments for getIpv6Range.
/// {@endtemplate}
/// {@macro pulumi_index_get_ipv6_range_get_ipv6_range_args_doc}
class GetIpv6RangeArgs {
  /// The IPv6 range to retrieve information about.
  final pulumi.Input<String> range;

  /// Creates a new [GetIpv6RangeArgs].
  /// [range] The IPv6 range to retrieve information about.
  GetIpv6RangeArgs({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory GetIpv6RangeArgs.fromMap(Map<String, dynamic> map) {
    return GetIpv6RangeArgs(
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}

