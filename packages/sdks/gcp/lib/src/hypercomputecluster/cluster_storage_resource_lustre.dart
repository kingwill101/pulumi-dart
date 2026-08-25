// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceLustre {
  /// Name of the Managed Lustre instance, in the format
  /// 'projects/{project}/locations/{location}/instances/{instance}'
  final pulumi.Input<String?>? lustre;

  /// Creates a new [ClusterStorageResourceLustre].
  /// [lustre] Name of the Managed Lustre instance, in the format
  const ClusterStorageResourceLustre({
    this.lustre,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lustre': ?lustre,
    };
  }

  factory ClusterStorageResourceLustre.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceLustre(
      lustre: (() { final guardedValue = map['lustre']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
