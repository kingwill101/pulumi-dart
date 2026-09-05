// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotSiteCredential {
  /// The name which should be used for this Windows Web App Slot. Changing this forces a new Windows Web App Slot to be created.
  ///
  /// &gt; **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the App Service Environment for this to complete reliably.
  final pulumi.Input<String?>? name;
  /// The Site Credentials Password used for publishing.
  final pulumi.Input<String?>? password;

  /// Creates a new [WindowsWebAppSlotSiteCredential].
  /// [name] The name which should be used for this Windows Web App Slot. Changing this forces a new Windows Web App Slot to be created.
  /// [password] The Site Credentials Password used for publishing.
  const WindowsWebAppSlotSiteCredential({
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'password': ?password,
    };
  }

  factory WindowsWebAppSlotSiteCredential.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteCredential(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
