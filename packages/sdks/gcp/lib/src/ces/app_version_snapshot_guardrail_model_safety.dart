// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_guardrail_model_safety_safety_setting.dart';

class AppVersionSnapshotGuardrailModelSafety {
  /// (Output)
  /// List of safety settings.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotGuardrailModelSafetySafetySetting>>?
  safetySettings;

  /// Creates a new [AppVersionSnapshotGuardrailModelSafety].
  /// [safetySettings] (Output)
  AppVersionSnapshotGuardrailModelSafety({this.safetySettings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'safetySettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppVersionSnapshotGuardrailModelSafetySafetySetting>,
            List<Map<String, dynamic>>
          >(
            safetySettings,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotGuardrailModelSafetySafetySetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AppVersionSnapshotGuardrailModelSafety.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotGuardrailModelSafety(
      safetySettings: (() {
        final guardedValue = map['safetySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppVersionSnapshotGuardrailModelSafetySafetySetting
          >(
            guardedValue,
            (value) =>
                AppVersionSnapshotGuardrailModelSafetySafetySetting.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
