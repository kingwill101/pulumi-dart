// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus {
  /// Output only. The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int>? code;
  /// Output only. A developer-facing error message in English.
  final pulumi.Input<String>? message;

  /// Creates a new [IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus].
  /// [code] Output only. The status code, which should be an enum value of google.rpc.Code.
  /// [message] Output only. A developer-facing error message in English.
  const IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogFederatedCatalogOptionsRefreshStatusStatus(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
