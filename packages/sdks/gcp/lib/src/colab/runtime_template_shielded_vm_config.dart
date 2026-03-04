// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeTemplateShieldedVmConfig {
  /// Enables secure boot for the runtime.
  final pulumi.Input<bool>? enableSecureBoot;

  /// Creates a new [RuntimeTemplateShieldedVmConfig].
  /// [enableSecureBoot] Enables secure boot for the runtime.
  RuntimeTemplateShieldedVmConfig({this.enableSecureBoot});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableSecureBoot': ?enableSecureBoot};
  }

  factory RuntimeTemplateShieldedVmConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateShieldedVmConfig(
      enableSecureBoot: (() {
        final guardedValue = map['enableSecureBoot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
