// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the resource properties.
class OsProfileResponse {
  /// Gets or sets computer name.
  final pulumi.Input<String>? computerName;
  /// Gets or sets os name.
  final pulumi.Input<String> osName;
  /// Gets or sets the type of the os.
  final pulumi.Input<String> osType;

  /// Creates a new [OsProfileResponse].
  /// [computerName] Gets or sets computer name.
  /// [osName] Gets or sets os name.
  /// [osType] Gets or sets the type of the os.
  OsProfileResponse({
    this.computerName,
    required this.osName,
    required this.osType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerName': ?computerName,
      'osName': osName,
      'osType': osType,
    };
  }

  factory OsProfileResponse.fromMap(Map<String, dynamic> map) {
    return OsProfileResponse(
      computerName: map['computerName'] == null ? null : (map['computerName'] as String).input(),
      osName: (map['osName'] as String).input(),
      osType: (map['osType'] as String).input(),
    );
  }
}

