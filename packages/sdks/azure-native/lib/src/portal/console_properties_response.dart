// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud shell console properties.
class ConsolePropertiesResponse {
  /// The operating system type of the cloud shell.
  final pulumi.Input<String> osType;
  /// Provisioning state of the console.
  final pulumi.Input<String> provisioningState;
  /// Uri of the console.
  final pulumi.Input<String> uri;

  /// Creates a new [ConsolePropertiesResponse].
  /// [osType] The operating system type of the cloud shell.
  /// [provisioningState] Provisioning state of the console.
  /// [uri] Uri of the console.
  const ConsolePropertiesResponse({
    required this.osType,
    required this.provisioningState,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': osType,
      'provisioningState': provisioningState,
      'uri': uri,
    };
  }

  factory ConsolePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConsolePropertiesResponse(
      osType: pulumi.Input.fromValue(map['osType'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
