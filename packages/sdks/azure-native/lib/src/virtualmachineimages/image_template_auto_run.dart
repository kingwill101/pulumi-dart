// ignore_for_file: unused_element, unnecessary_cast

import 'auto_run_state.dart';

/// Indicates if the image template needs to be built on create/update
class ImageTemplateAutoRun {
  /// Enabling this field will trigger an automatic build on image template creation or update.
  final AutoRunState? state;

  /// Creates a new [ImageTemplateAutoRun].
  /// [state] Enabling this field will trigger an automatic build on image template creation or update.
  ImageTemplateAutoRun({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state == null ? null : state!.value,
    };
  }

  factory ImageTemplateAutoRun.fromMap(Map<String, dynamic> map) {
    return ImageTemplateAutoRun(
      state: map['state'] == null ? null : AutoRunState.fromValue(map['state'] as String),
    );
  }
}

