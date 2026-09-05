// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedDiskSasToken resources.
class ManagedDiskSasTokenState {
  /// The level of access required on the disk. Supported are Read, Write. Changing this forces a new resource to be created.
  ///
  /// Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/compute/disks/grant-access)
  /// for additional details on the fields above.
  final pulumi.Input<String?>? accessLevel;
  /// The duration for which the export should be allowed. Should be between 30 & 4294967295 seconds. Changing this forces a new resource to be created.
  final pulumi.Input<int?>? durationInSeconds;
  /// The ID of an existing Managed Disk which should be exported. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? managedDiskId;
  /// The computed Shared Access Signature (SAS) of the Managed Disk.
  final pulumi.Input<String?>? sasUrl;

  /// Creates a new [ManagedDiskSasTokenState].
  /// [accessLevel] The level of access required on the disk. Supported are Read, Write. Changing this forces a new resource to be created.
  /// [durationInSeconds] The duration for which the export should be allowed. Should be between 30 & 4294967295 seconds. Changing this forces a new resource to be created.
  /// [managedDiskId] The ID of an existing Managed Disk which should be exported. Changing this forces a new resource to be created.
  /// [sasUrl] The computed Shared Access Signature (SAS) of the Managed Disk.
  const ManagedDiskSasTokenState({
    this.accessLevel,
    this.durationInSeconds,
    this.managedDiskId,
    this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': ?accessLevel,
      'durationInSeconds': ?durationInSeconds,
      'managedDiskId': ?managedDiskId,
      'sasUrl': ?sasUrl,
    };
  }

  factory ManagedDiskSasTokenState.fromMap(Map<String, dynamic> map) {
    return ManagedDiskSasTokenState(
      accessLevel: (() { final guardedValue = map['accessLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      durationInSeconds: (() { final guardedValue = map['durationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      managedDiskId: (() { final guardedValue = map['managedDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasUrl: (() { final guardedValue = map['sasUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
