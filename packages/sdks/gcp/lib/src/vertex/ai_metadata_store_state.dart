// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiMetadataStoreState {
  /// (Output)
  /// The disk utilization of the MetadataStore in bytes.
  final pulumi.Input<String>? diskUtilizationBytes;

  /// Creates a new [AiMetadataStoreState].
  /// [diskUtilizationBytes] (Output)
  AiMetadataStoreState({this.diskUtilizationBytes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'diskUtilizationBytes': ?diskUtilizationBytes};
  }

  factory AiMetadataStoreState.fromMap(Map<String, dynamic> map) {
    return AiMetadataStoreState(
      diskUtilizationBytes: (() {
        final guardedValue = map['diskUtilizationBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
