// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_ifile_ifile_args_doc}
/// The set of arguments for Ifile.
/// {@endtemplate}
/// {@macro pulumi_ltm_ifile_ifile_args_doc}
class IfileArgs {
  /// The system iFile name to reference (e.g., `/Common/my-sys-ifile`). This should reference an existing system iFile created with `f5bigip.sys.Ifile`.
  final pulumi.Input<String> fileName;
  /// Name of the LTM iFile to be created on BIG-IP.
  final pulumi.Input<String> name;
  /// Partition where the LTM iFile will be created. Defaults to `Common`.
  final pulumi.Input<String>? partition;
  /// Subdirectory within the partition for organizing iFiles.
  final pulumi.Input<String>? subPath;

  /// Creates a new [IfileArgs].
  /// [fileName] The system iFile name to reference (e.g., `/Common/my-sys-ifile`). This should reference an existing system iFile created with `f5bigip.sys.Ifile`.
  /// [name] Name of the LTM iFile to be created on BIG-IP.
  /// [partition] Partition where the LTM iFile will be created. Defaults to `Common`.
  /// [subPath] Subdirectory within the partition for organizing iFiles.
  IfileArgs({
    required this.fileName,
    required this.name,
    this.partition,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': fileName,
      'name': name,
      'partition': ?partition,
      'subPath': ?subPath,
    };
  }

  factory IfileArgs.fromMap(Map<String, dynamic> map) {
    return IfileArgs(
      fileName: (map['fileName'] as String).input(),
      name: (map['name'] as String).input(),
      partition: map['partition'] == null ? null : (map['partition']! as String).input(),
      subPath: map['subPath'] == null ? null : (map['subPath']! as String).input(),
    );
  }
}

