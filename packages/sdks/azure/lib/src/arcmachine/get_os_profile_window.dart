// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_os_profile_window_patch.dart';

class GetOsProfileWindow {
  /// A `patch` block as defined above.
  final pulumi.Input<List<GetOsProfileWindowPatch>> patches;

  /// Creates a new [GetOsProfileWindow].
  /// [patches] A `patch` block as defined above.
  GetOsProfileWindow({
    required this.patches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patches': pulumi.Input.mapInputValue<List<GetOsProfileWindowPatch>, List<Map<String, dynamic>>>(patches, (value) => pulumi.Input.encodeList<GetOsProfileWindowPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOsProfileWindow.fromMap(Map<String, dynamic> map) {
    return GetOsProfileWindow(
      patches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOsProfileWindowPatch>(map['patches']!, (value) => GetOsProfileWindowPatch.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

