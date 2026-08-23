// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGuardOperationDetail {
  final pulumi.Input<String>? defaultResourceRequest;
  final pulumi.Input<String>? vaultCriticalOperation;

  /// Creates a new [ResourceGuardOperationDetail].
  /// [defaultResourceRequest] Optional.
  /// [vaultCriticalOperation] Optional.
  const ResourceGuardOperationDetail({
    this.defaultResourceRequest,
    this.vaultCriticalOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResourceRequest': ?defaultResourceRequest,
      'vaultCriticalOperation': ?vaultCriticalOperation,
    };
  }

  factory ResourceGuardOperationDetail.fromMap(Map<String, dynamic> map) {
    return ResourceGuardOperationDetail(
      defaultResourceRequest: (() { final guardedValue = map['defaultResourceRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultCriticalOperation: (() { final guardedValue = map['vaultCriticalOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
