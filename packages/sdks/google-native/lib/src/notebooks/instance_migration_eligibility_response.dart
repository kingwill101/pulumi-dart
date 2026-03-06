// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InstanceMigrationEligibility represents the feasibility information of a migration from UmN to WbI.
class InstanceMigrationEligibilityResponse {
  /// Certain configurations make the UmN ineligible for an automatic migration. A manual migration is required.
  final pulumi.Input<List<String>> errors;
  /// Certain configurations will be defaulted during the migration.
  final pulumi.Input<List<String>> warnings;

  /// Creates a new [InstanceMigrationEligibilityResponse].
  /// [errors] Certain configurations make the UmN ineligible for an automatic migration. A manual migration is required.
  /// [warnings] Certain configurations will be defaulted during the migration.
  const InstanceMigrationEligibilityResponse({
    required this.errors,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': errors,
      'warnings': warnings,
    };
  }

  factory InstanceMigrationEligibilityResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMigrationEligibilityResponse(
      errors: pulumi.Input.fromValue((map['errors'] as List).cast<String>()),
      warnings: pulumi.Input.fromValue((map['warnings'] as List).cast<String>()),
    );
  }
}

