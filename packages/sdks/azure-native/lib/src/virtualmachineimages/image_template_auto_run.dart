// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_run_state.dart';

/// Indicates if the image template needs to be built on create/update
class ImageTemplateAutoRun {
  /// Enabling this field will trigger an automatic build on image template creation or update.
  final pulumi.Input<AutoRunState>? state;

  /// Creates a new [ImageTemplateAutoRun].
  /// [state] Enabling this field will trigger an automatic build on image template creation or update.
  ImageTemplateAutoRun({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?pulumi.Input.mapOptionalInputValue<AutoRunState, String>(state, (value) => value.wireValue),
    };
  }

  factory ImageTemplateAutoRun.fromMap(Map<String, dynamic> map) {
    return ImageTemplateAutoRun(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoRunState.fromValue(guardedValue as String)); })(),
    );
  }
}

