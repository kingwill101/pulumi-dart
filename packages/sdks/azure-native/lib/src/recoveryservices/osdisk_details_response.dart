// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the OS Disk.
class OSDiskDetailsResponse {
  /// The type of the OS on the VM.
  final pulumi.Input<String>? osType;
  /// The id of the disk containing the OS.
  final pulumi.Input<String>? osVhdId;
  /// The OS disk VHD name.
  final pulumi.Input<String>? vhdName;

  /// Creates a new [OSDiskDetailsResponse].
  /// [osType] The type of the OS on the VM.
  /// [osVhdId] The id of the disk containing the OS.
  /// [vhdName] The OS disk VHD name.
  OSDiskDetailsResponse({
    this.osType,
    this.osVhdId,
    this.vhdName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': ?osType,
      'osVhdId': ?osVhdId,
      'vhdName': ?vhdName,
    };
  }

  factory OSDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return OSDiskDetailsResponse(
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      osVhdId: map['osVhdId'] == null ? null : (map['osVhdId'] as String).input(),
      vhdName: map['vhdName'] == null ? null : (map['vhdName'] as String).input(),
    );
  }
}

