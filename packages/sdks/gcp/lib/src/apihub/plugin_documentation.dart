// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginDocumentation {
  /// The uri of the externally hosted documentation.
  final pulumi.Input<String>? externalUri;

  /// Creates a new [PluginDocumentation].
  /// [externalUri] The uri of the externally hosted documentation.
  PluginDocumentation({this.externalUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'externalUri': ?externalUri};
  }

  factory PluginDocumentation.fromMap(Map<String, dynamic> map) {
    return PluginDocumentation(
      externalUri: (() {
        final guardedValue = map['externalUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
