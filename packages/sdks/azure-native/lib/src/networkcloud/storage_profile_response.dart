// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_disk_response.dart';

class StorageProfileResponse {
  /// The disk to use with this virtual machine.
  final pulumi.Input<OsDiskResponse> osDisk;

  /// The resource IDs of volumes that are requested to be attached to the virtual machine.
  final pulumi.Input<List<String>>? volumeAttachments;

  /// Creates a new [StorageProfileResponse].
  /// [osDisk] The disk to use with this virtual machine.
  /// [volumeAttachments] The resource IDs of volumes that are requested to be attached to the virtual machine.
  StorageProfileResponse({required this.osDisk, this.volumeAttachments});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osDisk':
          pulumi.Input.mapInputValue<OsDiskResponse, Map<String, dynamic>>(
            osDisk,
            (value) => value.toMap(),
          ),
      'volumeAttachments': ?volumeAttachments,
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      osDisk: pulumi.Input.fromValue(
        OsDiskResponse.fromMap((map['osDisk']! as Map).cast<String, dynamic>()),
      ),
      volumeAttachments: (() {
        final guardedValue = map['volumeAttachments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
