// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud shell properties for creating a console.
class ConsoleCreateProperties {
  /// The operating system type of the cloud shell.
  final pulumi.Input<String> osType;
  /// Provisioning state of the console.
  final pulumi.Input<String>? provisioningState;
  /// Uri of the console.
  final pulumi.Input<String>? uri;

  /// Creates a new [ConsoleCreateProperties].
  /// [osType] The operating system type of the cloud shell.
  /// [provisioningState] Provisioning state of the console.
  /// [uri] Uri of the console.
  ConsoleCreateProperties({
    required this.osType,
    this.provisioningState,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': osType,
      'provisioningState': ?provisioningState,
      'uri': ?uri,
    };
  }

  factory ConsoleCreateProperties.fromMap(Map<String, dynamic> map) {
    return ConsoleCreateProperties(
      osType: (map['osType'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

