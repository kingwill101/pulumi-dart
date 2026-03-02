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
      computerName: map['computerName'] == null ? null : (map['computerName'] as String).input(),
      osSku: (map['osSku'] as String).input(),
      osType: (map['osType'] as String).input(),
      osVersion: (map['osVersion'] as String).input(),
    );
  }
}

