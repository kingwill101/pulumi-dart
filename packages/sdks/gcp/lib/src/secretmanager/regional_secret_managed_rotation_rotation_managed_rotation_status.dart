// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_secret_managed_rotation_rotation_managed_rotation_status_error.dart';

class RegionalSecretManagedRotationRotationManagedRotationStatus {
  /// (Output)
  /// Customer-facing issues that occurred during an asynchronous managed rotation, for example
  /// permission errors.
  /// Structure is documented below.
  final pulumi.Input<List<RegionalSecretManagedRotationRotationManagedRotationStatusError>?>? errors;
  /// (Output)
  /// Indicates whether the managed rotation is `ACTIVE` or `INACTIVE`.
  final pulumi.Input<String?>? state;

  /// Creates a new [RegionalSecretManagedRotationRotationManagedRotationStatus].
  /// [errors] (Output)
  /// [state] (Output)
  const RegionalSecretManagedRotationRotationManagedRotationStatus({
    this.errors,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<RegionalSecretManagedRotationRotationManagedRotationStatusError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<RegionalSecretManagedRotationRotationManagedRotationStatusError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory RegionalSecretManagedRotationRotationManagedRotationStatus.fromMap(Map<String, dynamic> map) {
    return RegionalSecretManagedRotationRotationManagedRotationStatus(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionalSecretManagedRotationRotationManagedRotationStatusError>(guardedValue, (value) => RegionalSecretManagedRotationRotationManagedRotationStatusError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
