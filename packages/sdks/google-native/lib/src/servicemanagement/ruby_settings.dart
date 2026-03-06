// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings.dart';

/// Settings for Ruby client libraries.
class RubySettings {
  /// Some settings.
  final pulumi.Input<CommonLanguageSettings>? common;

  /// Creates a new [RubySettings].
  /// [common] Some settings.
  const RubySettings({
    this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?pulumi.Input.mapOptionalInputValue<CommonLanguageSettings, Map<String, dynamic>>(common, (value) => value.toMap()),
    };
  }

  factory RubySettings.fromMap(Map<String, dynamic> map) {
    return RubySettings(
      common: (() { final guardedValue = map['common']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommonLanguageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

