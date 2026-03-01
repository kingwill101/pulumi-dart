// ignore_for_file: unused_element, unnecessary_cast


/// Defines the resource properties.
class OsProfileForVMInstanceResponse {
  /// Gets or sets computer name.
  final String? computerName;
  /// Gets or sets os sku.
  final String osSku;
  /// Gets or sets the type of the os.
  final String osType;
  /// Gets os version.
  final String osVersion;

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
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
      osSku: map['osSku'] as String,
      osType: map['osType'] as String,
      osVersion: map['osVersion'] as String,
    );
  }
}

