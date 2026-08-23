// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action.dart';
import 'dicom_tag_config_profile_type.dart';
import 'options.dart';

/// Specifies the parameters needed for the de-identification of DICOM stores.
class DicomTagConfig {
  /// Specifies custom tag selections and `Actions` to apply to them. Overrides `options` and `profile`. Conflicting `Actions` are applied in the order given.
  final pulumi.Input<List<Action>>? actions;
  /// Specifies additional options to apply, overriding the base `profile`.
  final pulumi.Input<Options>? options;
  /// Base profile type for handling DICOM tags.
  final pulumi.Input<DicomTagConfigProfileType>? profileType;

  /// Creates a new [DicomTagConfig].
  /// [actions] Specifies custom tag selections and `Actions` to apply to them. Overrides `options` and `profile`. Conflicting `Actions` are applied in the order given.
  /// [options] Specifies additional options to apply, overriding the base `profile`.
  /// [profileType] Base profile type for handling DICOM tags.
  const DicomTagConfig({
    this.actions,
    this.options,
    this.profileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<Action>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<Action, Map<String, dynamic>>(value, (value) => value.toMap())),
      'options': ?pulumi.Input.mapOptionalInputValue<Options, Map<String, dynamic>>(options, (value) => value.toMap()),
      'profileType': ?pulumi.Input.mapOptionalInputValue<DicomTagConfigProfileType, String>(profileType, (value) => value.wireValue),
    };
  }

  factory DicomTagConfig.fromMap(Map<String, dynamic> map) {
    return DicomTagConfig(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Action>(guardedValue, (value) => Action.fromMap((value as Map).cast<String, dynamic>()))); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Options.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profileType: (() { final guardedValue = map['profileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DicomTagConfigProfileType.fromValue(guardedValue as String)); })(),
    );
  }
}
