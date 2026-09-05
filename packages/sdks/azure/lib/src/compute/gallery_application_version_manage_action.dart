// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GalleryApplicationVersionManageAction {
  /// The command to install the Gallery Application. Changing this forces a new resource to be created.
  final pulumi.Input<String> install;
  /// The command to remove the Gallery Application. Changing this forces a new resource to be created.
  final pulumi.Input<String> remove;
  /// The command to update the Gallery Application. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? update;

  /// Creates a new [GalleryApplicationVersionManageAction].
  /// [install] The command to install the Gallery Application. Changing this forces a new resource to be created.
  /// [remove] The command to remove the Gallery Application. Changing this forces a new resource to be created.
  /// [update] The command to update the Gallery Application. Changing this forces a new resource to be created.
  const GalleryApplicationVersionManageAction({
    required this.install,
    required this.remove,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'install': install,
      'remove': remove,
      'update': ?update,
    };
  }

  factory GalleryApplicationVersionManageAction.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionManageAction(
      install: pulumi.Input.fromValue(map['install'] as String),
      remove: pulumi.Input.fromValue(map['remove'] as String),
      update: (() { final guardedValue = map['update']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
