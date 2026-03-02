// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGuardOperationDetailResponse {
  final pulumi.Input<String>? defaultResourceRequest;
  final pulumi.Input<String>? vaultCriticalOperation;

  /// Creates a new [ResourceGuardOperationDetailResponse].
  /// [defaultResourceRequest] Optional.
  /// [vaultCriticalOperation] Optional.
  ResourceGuardOperationDetailResponse({
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
      defaultResourceRequest: map['defaultResourceRequest'] == null ? null : (map['defaultResourceRequest'] as String).input(),
      vaultCriticalOperation: map['vaultCriticalOperation'] == null ? null : (map['vaultCriticalOperation'] as String).input(),
    );
  }
}

