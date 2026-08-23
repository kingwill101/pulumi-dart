// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings.dart';

/// Settings for Node client libraries.
class NodeSettings {
  /// Some settings.
  final pulumi.Input<CommonLanguageSettings>? common;

  /// Creates a new [NodeSettings].
  /// [common] Some settings.
  const NodeSettings({
    this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?pulumi.Input.mapOptionalInputValue<CommonLanguageSettings, Map<String, dynamic>>(common, (value) => value.toMap()),
    };
  }

  factory NodeSettings.fromMap(Map<String, dynamic> map) {
    return NodeSettings(
      common: (() { final guardedValue = map['common']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommonLanguageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
