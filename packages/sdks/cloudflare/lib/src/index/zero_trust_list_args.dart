// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_list_item.dart';

/// {@template pulumi_index_zero_trust_list_zero_trust_list_args_doc}
/// The set of arguments for ZeroTrustList.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_list_zero_trust_list_args_doc}
class ZeroTrustListArgs {
  final pulumi.Input<String> accountId;
  /// Provide the list description.
  final pulumi.Input<String?>? description;
  /// Add items to the list.
  final pulumi.Input<List<ZeroTrustListItem>?>? items;
  /// Specify the list name.
  final pulumi.Input<String> name;
  /// Specify the list type.
  /// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY", "LOCATION", "DEVICE", "AAGUID".
  final pulumi.Input<String> type;

  /// Creates a new [ZeroTrustListArgs].
  /// [accountId] Required.
  /// [description] Provide the list description.
  /// [items] Add items to the list.
  /// [name] Specify the list name.
  /// [type] Specify the list type.
  const ZeroTrustListArgs({
    required this.accountId,
    this.description,
    this.items,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'items': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustListItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ZeroTrustListItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'type': type,
    };
  }

  factory ZeroTrustListArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustListArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustListItem>(guardedValue, (value) => ZeroTrustListItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
