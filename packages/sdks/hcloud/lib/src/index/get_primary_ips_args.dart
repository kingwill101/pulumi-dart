// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_primary_ips_get_primary_ips_args_doc}
/// Arguments for getPrimaryIps.
/// {@endtemplate}
/// {@macro pulumi_index_get_primary_ips_get_primary_ips_args_doc}
class GetPrimaryIpsArgs {
  /// The ID of this resource.
  final pulumi.Input<String>? id;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetPrimaryIpsArgs].
  /// [id] The ID of this resource.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  const GetPrimaryIpsArgs({
    this.id,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'withSelector': ?withSelector,
    };
  }

  factory GetPrimaryIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpsArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
