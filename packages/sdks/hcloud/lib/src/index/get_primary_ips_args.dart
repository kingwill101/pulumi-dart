// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_primary_ips_get_primary_ips_args_doc}
/// Arguments for getPrimaryIps.
/// {@endtemplate}
/// {@macro pulumi_index_get_primary_ips_get_primary_ips_args_doc}
class GetPrimaryIpsArgs {
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetPrimaryIpsArgs].
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetPrimaryIpsArgs({this.withSelector});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'withSelector': ?withSelector};
  }

  factory GetPrimaryIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpsArgs(
      withSelector: (() {
        final guardedValue = map['withSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
