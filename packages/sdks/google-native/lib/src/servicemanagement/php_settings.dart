// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings.dart';

/// Settings for Php client libraries.
class PhpSettings {
  /// Some settings.
  final pulumi.Input<CommonLanguageSettings>? common;

  /// Creates a new [PhpSettings].
  /// [common] Some settings.
  const PhpSettings({
    this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?pulumi.Input.mapOptionalInputValue<CommonLanguageSettings, Map<String, dynamic>>(common, (value) => value.toMap()),
    };
  }

  factory PhpSettings.fromMap(Map<String, dynamic> map) {
    return PhpSettings(
      common: (() { final guardedValue = map['common']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommonLanguageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

