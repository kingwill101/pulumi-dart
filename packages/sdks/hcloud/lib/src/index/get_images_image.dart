// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImage {
  final pulumi.Input<String> architecture;
  final pulumi.Input<String> created;
  final pulumi.Input<String> deprecated;
  final pulumi.Input<String> description;
  final pulumi.Input<int> id;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String> name;
  final pulumi.Input<String> osFlavor;
  final pulumi.Input<String> osVersion;
  final pulumi.Input<bool> rapidDeploy;
  final pulumi.Input<String>? selector;
  final pulumi.Input<String> type;

  /// Creates a new [GetImagesImage].
  /// [architecture] Required.
  /// [created] Required.
  /// [deprecated] Required.
  /// [description] Required.
  /// [id] Required.
  /// [labels] Required.
  /// [name] Required.
  /// [osFlavor] Required.
  /// [osVersion] Required.
  /// [rapidDeploy] Required.
  /// [selector] Optional.
  /// [type] Required.
  GetImagesImage({
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
    this.selector,
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
      'selector': ?selector,
      'type': type,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      architecture: (map['architecture'] as String).input(),
      created: (map['created'] as String).input(),
      deprecated: (map['deprecated'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as int).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      osFlavor: (map['osFlavor'] as String).input(),
      osVersion: (map['osVersion'] as String).input(),
      rapidDeploy: (map['rapidDeploy'] as bool).input(),
      selector: map['selector'] == null ? null : (map['selector']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

