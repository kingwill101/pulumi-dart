// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_os_profile_linux.dart';
import 'get_os_profile_window.dart';

class GetOsProfile {
  /// Specifies the host OS name of the Azure Arc machine.
  final pulumi.Input<String> computerName;
  /// A `linux` block as defined above.
  final pulumi.Input<List<GetOsProfileLinux>> linuxes;
  /// A `windows` block as defined below.
  final pulumi.Input<List<GetOsProfileWindow>> windows;

  /// Creates a new [GetOsProfile].
  /// [computerName] Specifies the host OS name of the Azure Arc machine.
  /// [linuxes] A `linux` block as defined above.
  /// [windows] A `windows` block as defined below.
  GetOsProfile({
    required this.computerName,
    required this.linuxes,
    required this.windows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerName': computerName,
      'linuxes': pulumi.Input.mapInputValue<List<GetOsProfileLinux>, List<Map<String, dynamic>>>(linuxes, (value) => pulumi.Input.encodeList<GetOsProfileLinux, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windows': pulumi.Input.mapInputValue<List<GetOsProfileWindow>, List<Map<String, dynamic>>>(windows, (value) => pulumi.Input.encodeList<GetOsProfileWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOsProfile.fromMap(Map<String, dynamic> map) {
    return GetOsProfile(
      computerName: pulumi.Input.fromValue(map['computerName'] as String),
      linuxes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOsProfileLinux>(map['linuxes']!, (value) => GetOsProfileLinux.fromMap((value as Map).cast<String, dynamic>()))),
      windows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOsProfileWindow>(map['windows']!, (value) => GetOsProfileWindow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

