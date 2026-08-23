// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImage {
  /// CPU architecture compatible with the Image.
  final pulumi.Input<String> architecture;
  /// Point in time when the Image was created (in RFC3339 format).
  final pulumi.Input<String> created;
  /// Point in time when the Image was marked as deprecated (in RFC3339 format).
  final pulumi.Input<String> deprecated;
  /// Description of the Image.
  final pulumi.Input<String> description;
  /// ID of the Image.
  final pulumi.Input<int> id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// Name of the Image, only present when the type is `system`.
  final pulumi.Input<String> name;
  /// Flavor of the operating system contained in the Image.
  final pulumi.Input<String> osFlavor;
  /// Version of the operating system contained in the Image.
  final pulumi.Input<String> osVersion;
  /// Whether the Image is optimized for a rapid deployment.
  final pulumi.Input<bool> rapidDeploy;
  /// Type of the Image, for example `system`, `backup` or `snapshot`.
  final pulumi.Input<String> type;

  /// Creates a new [GetImagesImage].
  /// [architecture] CPU architecture compatible with the Image.
  /// [created] Point in time when the Image was created (in RFC3339 format).
  /// [deprecated] Point in time when the Image was marked as deprecated (in RFC3339 format).
  /// [description] Description of the Image.
  /// [id] ID of the Image.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the Image, only present when the type is `system`.
  /// [osFlavor] Flavor of the operating system contained in the Image.
  /// [osVersion] Version of the operating system contained in the Image.
  /// [rapidDeploy] Whether the Image is optimized for a rapid deployment.
  /// [type] Type of the Image, for example `system`, `backup` or `snapshot`.
  const GetImagesImage({
    required this.architecture,
    required this.created,
    required this.deprecated,
    required this.description,
    required this.id,
    required this.labels,
    required this.name,
    required this.osFlavor,
    required this.osVersion,
    required this.rapidDeploy,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'created': created,
      'deprecated': deprecated,
      'description': description,
      'id': id,
      'labels': labels,
      'name': name,
      'osFlavor': osFlavor,
      'osVersion': osVersion,
      'rapidDeploy': rapidDeploy,
      'type': type,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      deprecated: pulumi.Input.fromValue(map['deprecated'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      osFlavor: pulumi.Input.fromValue(map['osFlavor'] as String),
      osVersion: pulumi.Input.fromValue(map['osVersion'] as String),
      rapidDeploy: pulumi.Input.fromValue(map['rapidDeploy'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
