// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings.dart';

/// Settings for C++ client libraries.
class CppSettings {
  /// Some settings.
  final pulumi.Input<CommonLanguageSettings>? common;

  /// Creates a new [CppSettings].
  /// [common] Some settings.
  const CppSettings({
    this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?pulumi.Input.mapOptionalInputValue<CommonLanguageSettings, Map<String, dynamic>>(common, (value) => value.toMap()),
    };
  }

  factory CppSettings.fromMap(Map<String, dynamic> map) {
    return CppSettings(
      common: (() { final guardedValue = map['common']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommonLanguageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

