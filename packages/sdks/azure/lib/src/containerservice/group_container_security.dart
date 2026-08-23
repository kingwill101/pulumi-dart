// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupContainerSecurity {
  /// Whether the container's permission is elevated to privileged? Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Currently, this only applies when the `osType` is `Linux` and the `sku` is `Confidential`.
  final pulumi.Input<bool> privilegeEnabled;

  /// Creates a new [GroupContainerSecurity].
  /// [privilegeEnabled] Whether the container's permission is elevated to privileged? Changing this forces a new resource to be created.
  const GroupContainerSecurity({
    required this.privilegeEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privilegeEnabled': privilegeEnabled,
    };
  }

  factory GroupContainerSecurity.fromMap(Map<String, dynamic> map) {
    return GroupContainerSecurity(
      privilegeEnabled: pulumi.Input.fromValue(map['privilegeEnabled'] as bool),
    );
  }
}
