// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A resource that reports the errors encountered while processing an import job.
class ImportErrorResponseMigrationcenterV1alpha1 {
  /// The error information.
  final pulumi.Input<String> errorDetails;
  /// The severity of the error.
  final pulumi.Input<String> severity;

  /// Creates a new [ImportErrorResponseMigrationcenterV1alpha1].
  /// [errorDetails] The error information.
  /// [severity] The severity of the error.
  ImportErrorResponseMigrationcenterV1alpha1({
    required this.errorDetails,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': errorDetails,
      'severity': severity,
    };
  }

  factory ImportErrorResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ImportErrorResponseMigrationcenterV1alpha1(
      errorDetails: pulumi.Input.fromValue(map['errorDetails'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
    );
  }
}

