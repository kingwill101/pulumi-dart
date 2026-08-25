// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_validation_check_status.dart';

class BareMetalAdminClusterValidationCheck {
  /// (Output)
  /// Options used for the validation check.
  final pulumi.Input<String?>? options;
  /// (Output)
  /// The scenario when the preflight checks were run..
  final pulumi.Input<String?>? scenario;
  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalAdminClusterValidationCheckStatus>?>? statuses;

  /// Creates a new [BareMetalAdminClusterValidationCheck].
  /// [options] (Output)
  /// [scenario] (Output)
  /// [statuses] (Output)
  const BareMetalAdminClusterValidationCheck({
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
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scenario: (() { final guardedValue = map['scenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalAdminClusterValidationCheckStatus>(guardedValue, (value) => BareMetalAdminClusterValidationCheckStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
