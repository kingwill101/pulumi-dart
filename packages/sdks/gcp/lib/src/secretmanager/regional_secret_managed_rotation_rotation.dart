// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_managed_rotation_rotation_managed_rotation_status.dart';

class RegionalSecretManagedRotationRotation {
  /// (Output)
  /// The current status of the managed rotation.
  /// Structure is documented below.
  final pulumi.Input<List<RegionalSecretManagedRotationRotationManagedRotationStatus>?>? managedRotationStatuses;

  /// Creates a new [RegionalSecretManagedRotationRotation].
  /// [managedRotationStatuses] (Output)
  const RegionalSecretManagedRotationRotation({
    this.managedRotationStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRotationStatuses': ?pulumi.Input.mapOptionalInputValue<List<RegionalSecretManagedRotationRotationManagedRotationStatus>, List<Map<String, dynamic>>>(managedRotationStatuses, (value) => pulumi.Input.encodeList<RegionalSecretManagedRotationRotationManagedRotationStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionalSecretManagedRotationRotation.fromMap(Map<String, dynamic> map) {
    return RegionalSecretManagedRotationRotation(
      managedRotationStatuses: (() { final guardedValue = map['managedRotationStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionalSecretManagedRotationRotationManagedRotationStatus>(guardedValue, (value) => RegionalSecretManagedRotationRotationManagedRotationStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
