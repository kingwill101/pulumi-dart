// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RuntimeMigrationEligibility represents the feasibility information of a migration from GmN to WbI.
class RuntimeMigrationEligibilityResponse {
  /// Certain configurations make the GmN ineligible for an automatic migration. A manual migration is required.
  final pulumi.Input<List<String>> errors;

  /// Certain configurations will be defaulted during the migration.
  final pulumi.Input<List<String>> warnings;

  /// Creates a new [RuntimeMigrationEligibilityResponse].
  /// [errors] Certain configurations make the GmN ineligible for an automatic migration. A manual migration is required.
  /// [warnings] Certain configurations will be defaulted during the migration.
  RuntimeMigrationEligibilityResponse({
    required this.errors,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'errors': errors, 'warnings': warnings};
  }

  factory RuntimeMigrationEligibilityResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuntimeMigrationEligibilityResponse(
      errors: pulumi.Input.fromValue((map['errors'] as List).cast<String>()),
      warnings: pulumi.Input.fromValue(
        (map['warnings'] as List).cast<String>(),
      ),
    );
  }
}
