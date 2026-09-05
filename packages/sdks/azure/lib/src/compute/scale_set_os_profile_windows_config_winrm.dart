// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetOsProfileWindowsConfigWinrm {
  /// Specifies URL of the certificate with which new Virtual Machines is provisioned.
  final pulumi.Input<String?>? certificateUrl;
  /// Specifies the protocol of listener
  final pulumi.Input<String> protocol;

  /// Creates a new [ScaleSetOsProfileWindowsConfigWinrm].
  /// [certificateUrl] Specifies URL of the certificate with which new Virtual Machines is provisioned.
  /// [protocol] Specifies the protocol of listener
  const ScaleSetOsProfileWindowsConfigWinrm({
    this.certificateUrl,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'protocol': protocol,
    };
  }

  factory ScaleSetOsProfileWindowsConfigWinrm.fromMap(Map<String, dynamic> map) {
    return ScaleSetOsProfileWindowsConfigWinrm(
      certificateUrl: (() { final guardedValue = map['certificateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
