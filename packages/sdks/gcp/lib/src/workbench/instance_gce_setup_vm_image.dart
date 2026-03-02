// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGceSetupVmImage {
  /// Optional. Use this VM image family to find the image; the newest
  /// image in this family will be used.
  final pulumi.Input<String>? family;
  /// Optional. Use VM image name to find the image.
  final pulumi.Input<String>? name;
  /// The name of the Google Cloud project that this VM image belongs to.
  /// Format: {project_id}
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceGceSetupVmImage].
  /// [family] Optional. Use this VM image family to find the image; the newest
  /// [name] Optional. Use VM image name to find the image.
  /// [project] The name of the Google Cloud project that this VM image belongs to.
  InstanceGceSetupVmImage({
    this.family,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': ?family,
      'name': ?name,
      'project': ?project,
    };
  }

  factory InstanceGceSetupVmImage.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupVmImage(
      family: map['family'] == null ? null : (map['family']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

