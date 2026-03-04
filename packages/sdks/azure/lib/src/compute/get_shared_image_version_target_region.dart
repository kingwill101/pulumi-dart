// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSharedImageVersionTargetRegion {
  /// The name of the Image Version.
  ///
  /// &gt; **Note:** You may specify `latest` to obtain the latest version or `recent` to obtain the most recently updated version.
  ///
  /// &gt; **Note:** In 3.0, `latest` may return an image version with `exclude_from_latest` set to `true`. Starting from 4.0 onwards `latest` will not return image versions with `exlude_from_latest` set to `true`.
  final pulumi.Input<String> name;

  /// The number of replicas of the Image Version to be created per region.
  final pulumi.Input<int> regionalReplicaCount;

  /// The storage account type for the image version.
  final pulumi.Input<String> storageAccountType;

  /// Creates a new [GetSharedImageVersionTargetRegion].
  /// [name] The name of the Image Version.
  /// [regionalReplicaCount] The number of replicas of the Image Version to be created per region.
  /// [storageAccountType] The storage account type for the image version.
  GetSharedImageVersionTargetRegion({
    required this.name,
    required this.regionalReplicaCount,
    required this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'regionalReplicaCount': regionalReplicaCount,
      'storageAccountType': storageAccountType,
    };
  }

  factory GetSharedImageVersionTargetRegion.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionTargetRegion(
      name: pulumi.Input.fromValue(map['name'] as String),
      regionalReplicaCount: pulumi.Input.fromValue(
        map['regionalReplicaCount'] as int,
      ),
      storageAccountType: pulumi.Input.fromValue(
        map['storageAccountType'] as String,
      ),
    );
  }
}
