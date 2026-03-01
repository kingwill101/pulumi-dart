// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_cbt_enable_migration_input.dart';

/// Enable migration input properties.
class EnableMigrationInputProperties {
  /// The policy Id.
  final String policyId;
  /// The provider specific details.
  final VMwareCbtEnableMigrationInput providerSpecificDetails;

  /// Creates a new [EnableMigrationInputProperties].
  /// [policyId] The policy Id.
  /// [providerSpecificDetails] The provider specific details.
  EnableMigrationInputProperties({
    required this.policyId,
    required this.providerSpecificDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'providerSpecificDetails': providerSpecificDetails.toMap(),
    };
  }

  factory EnableMigrationInputProperties.fromMap(Map<String, dynamic> map) {
    return EnableMigrationInputProperties(
      policyId: map['policyId'] as String,
      providerSpecificDetails: VMwareCbtEnableMigrationInput.fromMap((map['providerSpecificDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

