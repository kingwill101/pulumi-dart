// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginInstanceActionCurationConfigCustomCuration {
  /// The unique name of the curation resource. This will be the name of the
  /// curation resource in the format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  final pulumi.Input<String> curation;

  /// Creates a new [PluginInstanceActionCurationConfigCustomCuration].
  /// [curation] The unique name of the curation resource. This will be the name of the
  PluginInstanceActionCurationConfigCustomCuration({required this.curation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'curation': curation};
  }

  factory PluginInstanceActionCurationConfigCustomCuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return PluginInstanceActionCurationConfigCustomCuration(
      curation: pulumi.Input.fromValue(map['curation'] as String),
    );
  }
}
