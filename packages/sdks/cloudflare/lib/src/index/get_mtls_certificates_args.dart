// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_mtls_certificates_get_mtls_certificates_args_doc}
/// Arguments for getMtlsCertificates.
/// {@endtemplate}
/// {@macro pulumi_index_get_mtls_certificates_get_mtls_certificates_args_doc}
class GetMtlsCertificatesArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetMtlsCertificatesArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  const GetMtlsCertificatesArgs({
    required this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetMtlsCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetMtlsCertificatesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
