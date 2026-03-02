// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings.dart';

/// Settings for Go client libraries.
class GoSettings {
  /// Some settings.
  final pulumi.Input<CommonLanguageSettings>? common;

  /// Creates a new [GoSettings].
  /// [common] Some settings.
  GoSettings({
    this.common,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?pulumi.Input.mapOptionalInputValue<CommonLanguageSettings, Map<String, dynamic>>(common, (value) => value.toMap()),
    };
  }

  factory GoSettings.fromMap(Map<String, dynamic> map) {
    return GoSettings(
      common: map['common'] == null ? null : (CommonLanguageSettings.fromMap((map['common']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

