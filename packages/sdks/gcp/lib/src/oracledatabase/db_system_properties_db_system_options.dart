// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbSystemPropertiesDbSystemOptions {
  /// The storage option used in DB system.
  /// Possible values:
  /// ASM
  /// LVM
  final pulumi.Input<String>? storageManagement;

  /// Creates a new [DbSystemPropertiesDbSystemOptions].
  /// [storageManagement] The storage option used in DB system.
  DbSystemPropertiesDbSystemOptions({
    this.storageManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageManagement': ?storageManagement,
    };
  }

  factory DbSystemPropertiesDbSystemOptions.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbSystemOptions(
      storageManagement: (() { final guardedValue = map['storageManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

