// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_addon_backup.dart';

class GetInstanceTypeAddon {
  final pulumi.Input<List<GetInstanceTypeAddonBackup>> backups;

  /// Creates a new [GetInstanceTypeAddon].
  /// [backups] Required.
  GetInstanceTypeAddon({
    required this.backups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backups': pulumi.Input.mapInputValue<List<GetInstanceTypeAddonBackup>, List<Map<String, dynamic>>>(backups, (value) => pulumi.Input.encodeList<GetInstanceTypeAddonBackup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceTypeAddon.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeAddon(
      backups: (pulumi.Input.decodeList<GetInstanceTypeAddonBackup>(map['backups'], (value) => GetInstanceTypeAddonBackup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

