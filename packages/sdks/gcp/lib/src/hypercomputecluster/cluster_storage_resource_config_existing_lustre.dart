// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceConfigExistingLustre {
  /// Name of the Managed Lustre instance to import, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  final pulumi.Input<String> lustre;

  /// Creates a new [ClusterStorageResourceConfigExistingLustre].
  /// [lustre] Name of the Managed Lustre instance to import, in the format
  const ClusterStorageResourceConfigExistingLustre({
    required this.lustre,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lustre': lustre,
    };
  }

  factory ClusterStorageResourceConfigExistingLustre.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigExistingLustre(
      lustre: pulumi.Input.fromValue(map['lustre'] as String),
    );
  }
}
