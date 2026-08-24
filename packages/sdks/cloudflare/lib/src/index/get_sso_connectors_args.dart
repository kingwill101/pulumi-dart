// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_sso_connectors_get_sso_connectors_args_doc}
/// Arguments for getSsoConnectors.
/// {@endtemplate}
/// {@macro pulumi_index_get_sso_connectors_get_sso_connectors_args_doc}
class GetSsoConnectorsArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetSsoConnectorsArgs].
  /// [accountId] Account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  const GetSsoConnectorsArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetSsoConnectorsArgs.fromMap(Map<String, dynamic> map) {
    return GetSsoConnectorsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
