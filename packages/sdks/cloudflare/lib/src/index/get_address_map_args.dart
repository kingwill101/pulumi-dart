// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_address_map_get_address_map_args_doc}
/// Arguments for getAddressMap.
/// {@endtemplate}
/// {@macro pulumi_index_get_address_map_get_address_map_args_doc}
class GetAddressMapArgs {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String?>? accountId;
  /// Identifier of an Address Map.
  final pulumi.Input<String> addressMapId;

  /// Creates a new [GetAddressMapArgs].
  /// [accountId] Identifier of a Cloudflare account.
  /// [addressMapId] Identifier of an Address Map.
  const GetAddressMapArgs({
    this.accountId,
    required this.addressMapId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'addressMapId': addressMapId,
    };
  }

  factory GetAddressMapArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressMapArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressMapId: pulumi.Input.fromValue(map['addressMapId'] as String),
    );
  }
}
