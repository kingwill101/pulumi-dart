// ignore_for_file: unused_element, unnecessary_cast

import 'secure_string_response.dart';

/// The custom setup of installing 3rd party components.
class ComponentSetupResponse {
  /// The name of the 3rd party component.
  final String componentName;
  /// The license key to activate the component.
  final SecureStringResponse? licenseKey;
  /// The type of custom setup.
  /// Expected value is 'ComponentSetup'.
  final String type;

  /// Creates a new [ComponentSetupResponse].
  /// [componentName] The name of the 3rd party component.
  /// [licenseKey] The license key to activate the component.
  /// [type] The type of custom setup.
  ComponentSetupResponse({
    required this.componentName,
    this.licenseKey,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'licenseKey': ?licenseKey == null ? null : licenseKey!.toMap(),
      'type': type,
    };
  }

  factory ComponentSetupResponse.fromMap(Map<String, dynamic> map) {
    return ComponentSetupResponse(
      componentName: map['componentName'] as String,
      licenseKey: map['licenseKey'] == null ? null : SecureStringResponse.fromMap((map['licenseKey'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

