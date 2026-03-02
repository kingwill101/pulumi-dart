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
      mode: (map['mode'] as String).input(),
      noSquashNids: (map['noSquashNids'] as String).input(),
      squashGid: map['squashGid'] == null ? null : (map['squashGid'] as int).input(),
      squashUid: map['squashUid'] == null ? null : (map['squashUid'] as int).input(),
    );
  }
}

