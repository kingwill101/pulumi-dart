// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_string_response.dart';

/// The custom setup of installing 3rd party components.
class ComponentSetupResponse {
  /// The name of the 3rd party component.
  final pulumi.Input<String> componentName;
  /// The license key to activate the component.
  final pulumi.Input<SecureStringResponse>? licenseKey;
  /// The type of custom setup.
  /// Expected value is 'ComponentSetup'.
  final pulumi.Input<String> type;

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
      'licenseKey': ?pulumi.Input.mapOptionalInputValue<SecureStringResponse, Map<String, dynamic>>(licenseKey, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ComponentSetupResponse.fromMap(Map<String, dynamic> map) {
    return ComponentSetupResponse(
      componentName: (map['componentName'] as String).input(),
      licenseKey: map['licenseKey'] == null ? null : (SecureStringResponse.fromMap((map['licenseKey']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

