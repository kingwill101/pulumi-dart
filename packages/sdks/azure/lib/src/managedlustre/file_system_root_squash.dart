// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemRootSquash {
  /// Squash mode of the AML file system. Possible values are `RootOnly`, and `All`.
  final pulumi.Input<String> mode;

  /// NID IP Address list(s) to be added to the TrustedSystems, separated by semicolons.
  final pulumi.Input<String> noSquashNids;

  /// The GID to be used for the root squash. Defaults to `0`.
  final pulumi.Input<int>? squashGid;

  /// The UID to be used for the root squash. Defaults to `0`.
  final pulumi.Input<int>? squashUid;

  /// Creates a new [FileSystemRootSquash].
  /// [mode] Squash mode of the AML file system. Possible values are `RootOnly`, and `All`.
  /// [noSquashNids] NID IP Address list(s) to be added to the TrustedSystems, separated by semicolons.
  /// [squashGid] The GID to be used for the root squash. Defaults to `0`.
  /// [squashUid] The UID to be used for the root squash. Defaults to `0`.
  FileSystemRootSquash({
    required this.mode,
    required this.noSquashNids,
    this.squashGid,
    this.squashUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'noSquashNids': noSquashNids,
      'squashGid': ?squashGid,
      'squashUid': ?squashUid,
    };
  }

  factory FileSystemRootSquash.fromMap(Map<String, dynamic> map) {
    return FileSystemRootSquash(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      noSquashNids: pulumi.Input.fromValue(map['noSquashNids'] as String),
      squashGid: (() {
        final guardedValue = map['squashGid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      squashUid: (() {
        final guardedValue = map['squashUid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
