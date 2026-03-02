// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_string.dart';

/// The custom setup of installing 3rd party components.
class ComponentSetup {
  /// The name of the 3rd party component.
  final pulumi.Input<String> componentName;
  /// The license key to activate the component.
  final pulumi.Input<SecureString>? licenseKey;
  /// The type of custom setup.
  /// Expected value is 'ComponentSetup'.
  final pulumi.Input<String> type;

  /// Creates a new [ComponentSetup].
  /// [componentName] The name of the 3rd party component.
  /// [licenseKey] The license key to activate the component.
  /// [type] The type of custom setup.
  ComponentSetup({
    required this.componentName,
    this.licenseKey,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'licenseKey': ?pulumi.Input.mapOptionalInputValue<SecureString, Map<String, dynamic>>(licenseKey, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ComponentSetup.fromMap(Map<String, dynamic> map) {
    return ComponentSetup(
      componentName: (map['componentName'] as String).input(),
      licenseKey: map['licenseKey'] == null ? null : (SecureString.fromMap((map['licenseKey'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

