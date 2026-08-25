// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SacAttachmentSymantecOptions {
  /// Name to be used when creating a location on the customer's behalf in Symantec's Location API. Not to be confused with Google Cloud locations.
  final pulumi.Input<String?>? symantecLocationName;
  /// Symantec data center identifier that this attachment will connect to.
  final pulumi.Input<String?>? symantecSite;

  /// Creates a new [SacAttachmentSymantecOptions].
  /// [symantecLocationName] Name to be used when creating a location on the customer's behalf in Symantec's Location API. Not to be confused with Google Cloud locations.
  /// [symantecSite] Symantec data center identifier that this attachment will connect to.
  const SacAttachmentSymantecOptions({
    this.symantecLocationName,
    this.symantecSite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'symantecLocationName': ?symantecLocationName,
      'symantecSite': ?symantecSite,
    };
  }

  factory SacAttachmentSymantecOptions.fromMap(Map<String, dynamic> map) {
    return SacAttachmentSymantecOptions(
      symantecLocationName: (() { final guardedValue = map['symantecLocationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      symantecSite: (() { final guardedValue = map['symantecSite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
