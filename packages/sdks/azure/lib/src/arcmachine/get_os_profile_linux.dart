// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_os_profile_linux_patch.dart';

class GetOsProfileLinux {
  /// A `patch` block as defined above.
  final pulumi.Input<List<GetOsProfileLinuxPatch>> patches;

  /// Creates a new [GetOsProfileLinux].
  /// [patches] A `patch` block as defined above.
  GetOsProfileLinux({
    required this.patches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patches': pulumi.Input.mapInputValue<List<GetOsProfileLinuxPatch>, List<Map<String, dynamic>>>(patches, (value) => pulumi.Input.encodeList<GetOsProfileLinuxPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOsProfileLinux.fromMap(Map<String, dynamic> map) {
    return GetOsProfileLinux(
      patches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOsProfileLinuxPatch>(map['patches']!, (value) => GetOsProfileLinuxPatch.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

