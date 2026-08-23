// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotSiteCredential {
  /// The name which should be used for this Linux Web App Slot. Changing this forces a new Linux Web App Slot to be created.
  ///
  /// &gt; **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the ASE for this to complete reliably.
  final pulumi.Input<String>? name;
  /// The Site Credentials Password used for publishing.
  final pulumi.Input<String>? password;

  /// Creates a new [LinuxWebAppSlotSiteCredential].
  /// [name] The name which should be used for this Linux Web App Slot. Changing this forces a new Linux Web App Slot to be created.
  /// [password] The Site Credentials Password used for publishing.
  const LinuxWebAppSlotSiteCredential({
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'password': ?password,
    };
  }

  factory LinuxWebAppSlotSiteCredential.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotSiteCredential(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
