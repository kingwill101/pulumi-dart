// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_instance_backups_get_instance_backups_args_doc}
/// Arguments for getInstanceBackups.
/// {@endtemplate}
/// {@macro pulumi_index_get_instance_backups_get_instance_backups_args_doc}
class GetInstanceBackupsArgs {
  /// The Linode instance's ID.
  final pulumi.Input<int> linodeId;

  /// Creates a new [GetInstanceBackupsArgs].
  /// [linodeId] The Linode instance's ID.
  GetInstanceBackupsArgs({
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linodeId': linodeId,
    };
  }

  factory GetInstanceBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupsArgs(
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
    );
  }
}

