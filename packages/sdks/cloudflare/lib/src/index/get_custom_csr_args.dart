// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_custom_csr_get_custom_csr_args_doc}
/// Arguments for getCustomCsr.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_csr_get_custom_csr_args_doc}
class GetCustomCsrArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Custom CSR identifier tag.
  final pulumi.Input<String?>? customCsrId;
  final pulumi.Input<Map<String, dynamic>?>? filter;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomCsrArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [customCsrId] Custom CSR identifier tag.
  /// [filter] Optional.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetCustomCsrArgs({
    this.accountId,
    this.customCsrId,
    this.filter,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'customCsrId': ?customCsrId,
      'filter': ?filter,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomCsrArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomCsrArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customCsrId: (() { final guardedValue = map['customCsrId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
