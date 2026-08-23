// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeTemplateSoftwareConfigColabImage {
  /// The release name of the NotebookRuntime Colab image, e.g. "py310". If not specified, detault to the latest release.
  final pulumi.Input<String>? releaseName;

  /// Creates a new [RuntimeTemplateSoftwareConfigColabImage].
  /// [releaseName] The release name of the NotebookRuntime Colab image, e.g. "py310". If not specified, detault to the latest release.
  const RuntimeTemplateSoftwareConfigColabImage({
    this.releaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'releaseName': ?releaseName,
    };
  }

  factory RuntimeTemplateSoftwareConfigColabImage.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateSoftwareConfigColabImage(
      releaseName: (() { final guardedValue = map['releaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
