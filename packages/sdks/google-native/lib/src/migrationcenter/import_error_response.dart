// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A resource that reports the errors encountered while processing an import job.
class ImportErrorResponse {
  /// The error information.
  final pulumi.Input<String> errorDetails;
  /// The severity of the error.
  final pulumi.Input<String> severity;

  /// Creates a new [ImportErrorResponse].
  /// [errorDetails] The error information.
  /// [severity] The severity of the error.
  const ImportErrorResponse({
    required this.errorDetails,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': errorDetails,
      'severity': severity,
    };
  }

  factory ImportErrorResponse.fromMap(Map<String, dynamic> map) {
    return ImportErrorResponse(
      errorDetails: pulumi.Input.fromValue(map['errorDetails'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
    );
  }
}

