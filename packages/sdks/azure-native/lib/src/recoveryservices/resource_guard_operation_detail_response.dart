// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGuardOperationDetailResponse {
  final pulumi.Input<String>? defaultResourceRequest;
  final pulumi.Input<String>? vaultCriticalOperation;

  /// Creates a new [ResourceGuardOperationDetailResponse].
  /// [defaultResourceRequest] Optional.
  /// [vaultCriticalOperation] Optional.
  const ResourceGuardOperationDetailResponse({
    this.defaultResourceRequest,
    this.vaultCriticalOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResourceRequest': ?defaultResourceRequest,
      'vaultCriticalOperation': ?vaultCriticalOperation,
    };
  }

  factory ResourceGuardOperationDetailResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGuardOperationDetailResponse(
      defaultResourceRequest: (() { final guardedValue = map['defaultResourceRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultCriticalOperation: (() { final guardedValue = map['vaultCriticalOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

