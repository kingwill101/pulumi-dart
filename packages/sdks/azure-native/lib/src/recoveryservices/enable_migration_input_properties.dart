// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cbt_enable_migration_input.dart';

/// Enable migration input properties.
class EnableMigrationInputProperties {
  /// The policy Id.
  final pulumi.Input<String> policyId;
  /// The provider specific details.
  final pulumi.Input<VMwareCbtEnableMigrationInput> providerSpecificDetails;

  /// Creates a new [EnableMigrationInputProperties].
  /// [policyId] The policy Id.
  /// [providerSpecificDetails] The provider specific details.
  const EnableMigrationInputProperties({
    required this.policyId,
    required this.providerSpecificDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'providerSpecificDetails': pulumi.Input.mapInputValue<VMwareCbtEnableMigrationInput, Map<String, dynamic>>(providerSpecificDetails, (value) => value.toMap()),
    };
  }

  factory EnableMigrationInputProperties.fromMap(Map<String, dynamic> map) {
    return EnableMigrationInputProperties(
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      providerSpecificDetails: pulumi.Input.fromValue(VMwareCbtEnableMigrationInput.fromMap((map['providerSpecificDetails']! as Map).cast<String, dynamic>())),
    );
  }
}
