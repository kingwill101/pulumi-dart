// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the resource properties.
class OsProfileForVMInstanceResponse {
  /// Gets or sets computer name.
  final pulumi.Input<String>? computerName;
  /// Gets or sets os sku.
  final pulumi.Input<String> osSku;
  /// Gets or sets the type of the os.
  final pulumi.Input<String> osType;
  /// Gets os version.
  final pulumi.Input<String> osVersion;

  /// Creates a new [OsProfileForVMInstanceResponse].
  /// [computerName] Gets or sets computer name.
  /// [osSku] Gets or sets os sku.
  /// [osType] Gets or sets the type of the os.
  /// [osVersion] Gets os version.
  OsProfileForVMInstanceResponse({
    this.computerName,
    required this.osSku,
    required this.osType,
    required this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerName': ?computerName,
      'osSku': osSku,
      'osType': osType,
      'osVersion': osVersion,
    };
  }

  factory OsProfileForVMInstanceResponse.fromMap(Map<String, dynamic> map) {
    return OsProfileForVMInstanceResponse(
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osSku: pulumi.Input.fromValue(map['osSku'] as String),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      osVersion: pulumi.Input.fromValue(map['osVersion'] as String),
    );
  }
}

