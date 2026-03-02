// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_validation_check_status.dart';

class BareMetalAdminClusterValidationCheck {
  /// (Output)
  /// Options used for the validation check.
  final pulumi.Input<String>? options;
  /// (Output)
  /// The scenario when the preflight checks were run..
  final pulumi.Input<String>? scenario;
  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalAdminClusterValidationCheckStatus>>? statuses;

  /// Creates a new [BareMetalAdminClusterValidationCheck].
  /// [options] (Output)
  /// [scenario] (Output)
  /// [statuses] (Output)
  BareMetalAdminClusterValidationCheck({
    this.options,
    this.scenario,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?options,
      'scenario': ?scenario,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminClusterValidationCheckStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<BareMetalAdminClusterValidationCheckStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalAdminClusterValidationCheck.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterValidationCheck(
      options: map['options'] == null ? null : (map['options']! as String).input(),
      scenario: map['scenario'] == null ? null : (map['scenario']! as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<BareMetalAdminClusterValidationCheckStatus>(map['statuses']!, (value) => BareMetalAdminClusterValidationCheckStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

