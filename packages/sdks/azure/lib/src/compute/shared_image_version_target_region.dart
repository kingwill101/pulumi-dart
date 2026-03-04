// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SharedImageVersionTargetRegion {
  /// The ID of the Disk Encryption Set to encrypt the Image Version in the target region. Changing this forces a new resource to be created.
  final pulumi.Input<String>? diskEncryptionSetId;

  /// Specifies whether this Shared Image Version should be excluded when querying for the `latest` version. Defaults to `false`.
  final pulumi.Input<bool>? excludeFromLatestEnabled;

  /// The Azure Region in which this Image Version should exist.
  final pulumi.Input<String> name;

  /// The number of replicas of the Image Version to be created per region.
  final pulumi.Input<int> regionalReplicaCount;

  /// The storage account type for the image version. Possible values are `Standard_LRS`, `Premium_LRS` and `Standard_ZRS`. Defaults to `Standard_LRS`. You can store all of your image version replicas in Zone Redundant Storage by specifying `Standard_ZRS`.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [SharedImageVersionTargetRegion].
  /// [diskEncryptionSetId] The ID of the Disk Encryption Set to encrypt the Image Version in the target region. Changing this forces a new resource to be created.
  /// [excludeFromLatestEnabled] Specifies whether this Shared Image Version should be excluded when querying for the `latest` version. Defaults to `false`.
  /// [name] The Azure Region in which this Image Version should exist.
  /// [regionalReplicaCount] The number of replicas of the Image Version to be created per region.
  /// [storageAccountType] The storage account type for the image version. Possible values are `Standard_LRS`, `Premium_LRS` and `Standard_ZRS`. Defaults to `Standard_LRS`. You can store all of your image version replicas in Zone Redundant Storage by specifying `Standard_ZRS`.
  SharedImageVersionTargetRegion({
    this.diskEncryptionSetId,
    this.excludeFromLatestEnabled,
    required this.name,
    required this.regionalReplicaCount,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'excludeFromLatestEnabled': ?excludeFromLatestEnabled,
      'name': name,
      'regionalReplicaCount': regionalReplicaCount,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory SharedImageVersionTargetRegion.fromMap(Map<String, dynamic> map) {
    return SharedImageVersionTargetRegion(
      diskEncryptionSetId: (() {
        final guardedValue = map['diskEncryptionSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludeFromLatestEnabled: (() {
        final guardedValue = map['excludeFromLatestEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      regionalReplicaCount: pulumi.Input.fromValue(
        map['regionalReplicaCount'] as int,
      ),
      storageAccountType: (() {
        final guardedValue = map['storageAccountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
