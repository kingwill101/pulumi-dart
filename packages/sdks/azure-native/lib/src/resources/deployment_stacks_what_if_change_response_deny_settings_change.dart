// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_settings_response.dart';
import 'deployment_stacks_what_if_property_change_response.dart';

/// Predicted changes to the deployment stack deny settings.
class DeploymentStacksWhatIfChangeResponseDenySettingsChange {
  /// The predicted value after the deployment is executed.
  final pulumi.Input<DenySettingsResponse>? after;

  /// The predicted value before the deployment is executed.
  final pulumi.Input<DenySettingsResponse>? before;

  /// The predicted changes to the properties."
  final pulumi.Input<List<DeploymentStacksWhatIfPropertyChangeResponse>>? delta;

  /// Creates a new [DeploymentStacksWhatIfChangeResponseDenySettingsChange].
  /// [after] The predicted value after the deployment is executed.
  /// [before] The predicted value before the deployment is executed.
  /// [delta] The predicted changes to the properties."
  DeploymentStacksWhatIfChangeResponseDenySettingsChange({
    this.after,
    this.before,
    this.delta,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'after':
          ?pulumi.Input.mapOptionalInputValue<
            DenySettingsResponse,
            Map<String, dynamic>
          >(after, (value) => value.toMap()),
      'before':
          ?pulumi.Input.mapOptionalInputValue<
            DenySettingsResponse,
            Map<String, dynamic>
          >(before, (value) => value.toMap()),
      'delta':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeploymentStacksWhatIfPropertyChangeResponse>,
            List<Map<String, dynamic>>
          >(
            delta,
            (value) =>
                pulumi.Input.encodeList<
                  DeploymentStacksWhatIfPropertyChangeResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DeploymentStacksWhatIfChangeResponseDenySettingsChange.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentStacksWhatIfChangeResponseDenySettingsChange(
      after: (() {
        final guardedValue = map['after'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DenySettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      before: (() {
        final guardedValue = map['before'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DenySettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      delta: (() {
        final guardedValue = map['delta'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DeploymentStacksWhatIfPropertyChangeResponse>(
            guardedValue,
            (value) => DeploymentStacksWhatIfPropertyChangeResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
