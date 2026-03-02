// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowAdvancedSettingsAudioExportGcsDestination {
  /// The Google Cloud Storage URI for the exported objects. Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
  /// Format: gs://bucket/object-name-or-prefix
  final pulumi.Input<String>? uri;

  /// Creates a new [CxFlowAdvancedSettingsAudioExportGcsDestination].
  /// [uri] The Google Cloud Storage URI for the exported objects. Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
  CxFlowAdvancedSettingsAudioExportGcsDestination({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory CxFlowAdvancedSettingsAudioExportGcsDestination.fromMap(Map<String, dynamic> map) {
    return CxFlowAdvancedSettingsAudioExportGcsDestination(
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

