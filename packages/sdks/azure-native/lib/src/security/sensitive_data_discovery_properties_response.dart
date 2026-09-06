// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'operation_status_response.dart';

/// Properties of Sensitive Data Discovery.
class SensitiveDataDiscoveryPropertiesResponse {
  /// Indicates whether Sensitive Data Discovery should be enabled.
  final pulumi.Input<bool?>? isEnabled;
  /// Upon failure or partial success. Additional data describing Sensitive Data Discovery enable/disable operation.
  final pulumi.Input<OperationStatusResponse> operationStatus;

  /// Creates a new [SensitiveDataDiscoveryPropertiesResponse].
  /// [isEnabled] Indicates whether Sensitive Data Discovery should be enabled.
  /// [operationStatus] Upon failure or partial success. Additional data describing Sensitive Data Discovery enable/disable operation.
  const SensitiveDataDiscoveryPropertiesResponse({
    this.isEnabled,
    required this.operationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
      'operationStatus': pulumi.Input.mapInputValue<OperationStatusResponse, Map<String, dynamic>>(operationStatus, (value) => value.toMap()),
    };
  }

  factory SensitiveDataDiscoveryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SensitiveDataDiscoveryPropertiesResponse(
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operationStatus: pulumi.Input.fromValue(OperationStatusResponse.fromMap((map['operationStatus']! as Map).cast<String, dynamic>())),
    );
  }
}
