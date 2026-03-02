// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupInitContainerSecurity {
  /// Whether the container's permission is elevated to privileged? Changing this forces a new resource to be created.
  ///
  /// > **Note:** Currently, this only applies when the `os_type` is `Linux` and the `sku` is `Confidential`.
  final pulumi.Input<bool> privilegeEnabled;

  /// Creates a new [GroupInitContainerSecurity].
  /// [privilegeEnabled] Whether the container's permission is elevated to privileged? Changing this forces a new resource to be created.
  GroupInitContainerSecurity({
    required this.privilegeEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privilegeEnabled': privilegeEnabled,
    };
  }

  factory GroupInitContainerSecurity.fromMap(Map<String, dynamic> map) {
    return GroupInitContainerSecurity(
      privilegeEnabled: (map['privilegeEnabled'] as bool).input(),
    );
  }
}

