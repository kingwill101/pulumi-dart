// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the error happened when create or update an image template
class ProvisioningErrorResponse {
  /// Verbose error message about the provisioning failure
  final pulumi.Input<String>? message;
  /// Error code of the provisioning failure
  final pulumi.Input<String>? provisioningErrorCode;

  /// Creates a new [ProvisioningErrorResponse].
  /// [message] Verbose error message about the provisioning failure
  /// [provisioningErrorCode] Error code of the provisioning failure
  const ProvisioningErrorResponse({
    this.message,
    this.provisioningErrorCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'provisioningErrorCode': ?provisioningErrorCode,
    };
  }

  factory ProvisioningErrorResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningErrorResponse(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningErrorCode: (() { final guardedValue = map['provisioningErrorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

